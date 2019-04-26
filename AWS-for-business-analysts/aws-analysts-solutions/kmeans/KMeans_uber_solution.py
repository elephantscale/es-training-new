#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pwd')

# In[2]:


get_ipython().system("wget 'http://datakmeans.s3.amazonaws.com/uber-raw-data-apr14.csv'")

# In[3]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

uber_data = pd.read_csv('/home/ec2-user/SageMaker/uber-raw-data-apr14.csv', header=0)
print(uber_data.head())

# In[4]:


uber_data[:1100]

# In[5]:


import datetime

# In[6]:


# For Converting the Date column into serperate values
date_col = []
for i in range(len(uber_data)):
    # print (i)
    for form in ("%m-%d-%Y  %H:%M", "%m/%d/%Y  %H:%M:%S"):
        try:
            # print (form)
            date_col.append(datetime.datetime.strptime(uber_data['Date_Time'][i], form))
        except ValueError:
            pass

# date_col = datetime.datetime.strptime(uber_data['Date_Time'], "%b-%d-%Y  %H:%M")


# In[7]:


year = []
month = []
day = []
hours = []
minu = []
for i in range(len(date_col)):
    year.append(date_col[i].year)
    month.append(date_col[i].month)
    day.append(date_col[i].day)
    hours.append(date_col[i].hour)
    minu.append(date_col[i].minute)

# In[8]:


uber_data1 = uber_data
uber_data1['year'] = year

# In[9]:


uber_data1['month'] = month
uber_data1['day'] = day
uber_data1['hour'] = hours
uber_data1['minute'] = minu

# In[10]:


uber_data1[:10]

# In[11]:


type(uber_data['day'])

# In[12]:


# uber_final = uber_data1[['Lat','Lon','Base','year','month','day','hour','minute']]
uber_final = uber_data1[['Lat', 'Lon']]

# In[13]:


uber_final[1:10]

# In[14]:


uber_final1 = uber_final.as_matrix().astype(np.float32)

# In[15]:


from sagemaker import KMeans
from sagemaker import get_execution_role

role = get_execution_role()
print(role)

bucket = "sagemaker-sai1"
data_location = "sagemaker-sai1"

data_location = 's3://{}/kmeans_highlevel_example/data'.format(bucket)
output_location = 's3://{}/kmeans_example/output'.format(bucket)

print('training data will be uploaded to: {}'.format(data_location))
print('training artifacts will be uploaded to: {}'.format(output_location))

kmeans = KMeans(role=role,
                train_instance_count=1,
                train_instance_type='ml.p2.xlarge',
                output_path=output_location,
                k=5,
                data_location=data_location)

# In[16]:


get_ipython().run_cell_magic('time', '', 'kmeans.fit(kmeans.record_set(uber_final1))')

# In[17]:


get_ipython().run_cell_magic('time', '',
                             "\nkmeans_predictor = kmeans.deploy(initial_instance_count=1,\n                                 instance_type='ml.p2.xlarge')")

# In[87]:


test_result = kmeans_predictor.predict(uber_final1[1:1000])

# In[88]:


get_ipython().run_cell_magic('time', '',
                             '\n#result = kmeans_predictor.predict(s)\nclusters = [r.label[\'closest_cluster\'].float32_tensor.values[0] for r in test_result]\ni = 0\nuber_list = []\n    \nfor r in test_result:\n    out = {\n        "Date"     : uber_data1[\'Date_Time\'].iloc[i],\n        "Latitude":uber_data1[\'Lat\'].iloc[i],\n        "Longitude" : uber_data1[\'Lon\'].iloc[i],  \n        "closest_cluster" :  r.label[\'closest_cluster\'].float32_tensor.values[0],\n        "Base Code" : uber_data1[\'Base\'].iloc[i],  \n    }    \n    print(out) \n    uber_list.append(out)\n    i = i + 1')

# In[ ]:


# In[132]:


# print(test_result)
uber_final2 = uber_data1
print(uber_final2[:1000])
# print(type(uber_final2))
# print(uber_final2)
import pandas as pd

df = pd.DataFrame(uber_list)
uber_final2['closest_cluster'] = df['closest_cluster']
print('ToDO')
# print(type(uber_final2))

# df = pd.DataFrame(test_result,columns=('Date_Time','Lat','Lon','closest_cluster','Base'))
# print(str(df.query('closest_cluster == 1')))
print('---------------Number of pickups in the year 2014 with closest cluster = 1 on month 4 and day 1---------------')
# print(uber_final2.query('year == 2014 and closest_cluster == 1.0 and month == 4 and day == 1').groupby('closest_cluster').agg(['count']))
print(uber_final2[
          (uber_final2['year'] == 2014) & (uber_final2['closest_cluster'] == 1.0) & (uber_final2['month'] == 4) & (
                      uber_final2['day'] == 1)]['closest_cluster'].value_counts().to_frame())
print('---------------How many pickups occurred in each cluster---------------')
# print(uber_final2.groupby('closest_cluster').agg(['count']))
print(uber_final2['closest_cluster'].value_counts().to_frame())
print('---------------No of cabs booked in a particular day, month, hour ---------------')
print(uber_final2.groupby(['closest_cluster', 'day', 'month', 'hour']).agg(['count'])['Date_Time'])
