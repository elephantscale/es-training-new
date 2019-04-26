#!/usr/bin/env python
# coding: utf-8

# In[2]:


get_ipython().system("wget 'http://datakmeans.s3.amazonaws.com/prosper-loan-data.csv'")

# In[3]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

prosper_data = pd.read_csv('/home/ec2-user/SageMaker/prosper-loan-data.csv', header=0)
print(prosper_data.head())

# In[4]:


# For now, we will be handling only few columns
prosper_final = prosper_data[
    ['LoanStatus', 'BorrowerRate', 'EmploymentStatus', 'CreditScore', 'StatedMonthlyIncome', 'IncomeVerifiable']]
prosper_final.head()

# In[5]:


from sagemaker import get_execution_role

role = get_execution_role()

# In[6]:


# Here we are doing one hot encoding
import pandas as pd

one_hot = pd.get_dummies(prosper_final['EmploymentStatus'])

# In[7]:


# We will remove the EmploymentStatus Column
prosper_final = prosper_final.drop('EmploymentStatus', axis=1)
prosper_final = prosper_final.join(one_hot)

# In[8]:


prosper_final.head()

# In[9]:


len(prosper_final)

# In[10]:


IncomeVerifiable_int = []
for i in range(len(prosper_final)):
    IncomeVerifiable_int.append(int(prosper_final['IncomeVerifiable'][i]))

# In[11]:


prosper_final['IncomeVerifiable_int'] = IncomeVerifiable_int

# In[12]:


prosper_final1 = prosper_final.drop('IncomeVerifiable', axis=1)

# In[13]:


prosper_final1.head()

# In[14]:


# We are taking 20000 rows for training and convert into np.array

import numpy as np

a = np.array(prosper_final1[:20000]).astype('float32')

# In[15]:


# We are dividing the data into features and labels

features = a[:, 1:]
labels = a[:, 0]

# In[16]:


len(features)

# In[17]:


# Default code 

import boto3
import sagemaker
import io
import sagemaker.amazon.common as smac
import os

sess = sagemaker.Session()
bucket = "sagemaker-sai2"
prefix = "sagemaker-sai2/loan"

buf = io.BytesIO()
smac.write_numpy_to_dense_tensor(buf, a, labels)
buf.seek(0)

key = 'linearlearner'
boto3.resource('s3').Bucket(bucket).Object(os.path.join(prefix, 'train', key)).upload_fileobj(buf)
s3_train_data = 's3://{}/{}/train/{}'.format(bucket, prefix, key)
print('uploaded training data location: {}'.format(s3_train_data))

output_location = 's3://{}/{}/output'.format(bucket, prefix)
print('training artifacts will be uploaded to: {}'.format(output_location))

# In[18]:


# Here we are creating a container in us-east area.
containers = {
    'us-east-1': '382416733822.dkr.ecr.us-east-1.amazonaws.com/linear-learner:latest'
}

# In[19]:


containers[boto3.Session().region_name]

# In[20]:


# We set up the linear estimator
linear = sagemaker.estimator.Estimator(containers[boto3.Session().region_name],
                                       role=role,
                                       train_instance_count=1,
                                       train_instance_type='ml.p2.xlarge',
                                       output_path=output_location,
                                       sagemaker_session=sess)

# In[27]:


get_ipython().run_cell_magic('time', '',
                             "\n#Setting the parameters and fitting the model.\nlinear.set_hyperparameters(feature_dim=12,\n                           mini_batch_size=2000,\n                           predictor_type='binary_classifier')\n\nlinear.fit({'train': s3_train_data})")

# In[32]:


# Deploying the linear model
linear_predictor = linear.deploy(initial_instance_count=1,
                                 instance_type='ml.p2.xlarge')

# In[33]:


from sagemaker.predictor import csv_serializer, json_deserializer

linear_predictor.content_type = 'text/csv'
linear_predictor.serializer = csv_serializer
linear_predictor.deserializer = json_deserializer

# In[34]:


# Creating an array for testing.
b = np.array(prosper_final1[20000:21000]).astype('float32')

# In[73]:


result = linear_predictor.predict(b[0:1000])
# Correct prediction
true_positive = 0
true_negative = 0
# Wrong prediction
false_positive = 0
false_negative = 0
# -----------------------------------------Solution-------------------------------------------------------------
# Todo - To find the accuracy of the model, calculating precision and recall
for i in range(500):
    # print(i)
    original = float(prosper_final1['LoanStatus'][20000 + i])
    predicted = result['predictions'][i]['predicted_label']

    if original == 1.0:
        if original == predicted:
            # print(str(original) +" : "+str(predicted))
            true_positive += 1
        else:
            false_negative += 1
    elif original == 0.0:
        if original == predicted:
            true_negative += 1
        else:
            false_positive += 1

    # print (original)        
    # print (predicted)

# print(result)
# print("TP "+str(true_positive) +" : TN "+str(true_negative))
# print("FP "+str(false_positive)+" : FN "+str(false_negative))

precision = true_positive / (true_positive + false_positive)
print("Precision " + str(precision))
recall = true_positive / (true_positive + false_negative)
print("Recall " + str(recall))
