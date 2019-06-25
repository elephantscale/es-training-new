# Machine Learning Teaching Outline -- Sujee

## day 1
- Creating an AWS account : 
Step 1 : Ask students to create a learning account at
    https://devportal.intuit.com/
    - Go to 'hosting' menu
    - And 'create account'

Step 2 - make sure they check their quota so they can run 'c4.xlarge', 'm4.xlarge'  'p2.xlarge' machines.  They may have to request an increase in their quota.
    
- administer PRE test & background survey

- (optional) very quick spark primer (Spark-intro) - 30 mins

- start with a Overview video
        - Google’s view on Machine Learning - https://www.youtube.com/watch?v=HcqpanDadyQ

- ML Primer - 1hr
    demos
        - after GPU/CPU discussion :
            - Nvidia self driving car : https://www.youtube.com/watch?v=0rc4RqYLtEU
            - AUDI self driving car :  https://www.youtube.com/watch?v=DjAJnQoNdMA
              (point out learning rate of brain vs. CPU vs. GPU around 50 second mark)

        - Reinforcement learning
            - Google Deep Mind - ATARI - https://www.youtube.com/watch?v=V1eYniJ0Rnk
            - open AI Dota game (AI beating human pro teams) : https://www.youtube.com/watch?v=eHipy_j29Xw

- --- LUNCH ---

- lab setup - 30 mins

- Also ask students to setup their laptops.  We will switch to their laptops on final day

- Data Exploration + lab - 1hr
    lab : 3.2 graphs,   3.3 data cleanup
    demo
    - google draw :  https://quickdraw.withgoogle.com/

- ML Concepts - 30 mins
    lab : house sales analysis
    demo
    - Deep Mind Alpha Go : https://www.youtube.com/watch?v=9xlSy9F5WtE


===============

## day 2 :

Check machine quotas on EC2.  Make sure students have access to following machines :  'c4.xlarge', 'm4.xlarge'  'p2.xlarge'.
if not submit tickets to increase limits.

- Spark ML + lab - 45 min

- linear regression
   -  demo : Google TPU (Sundar Pichai announces) : https://www.youtube.com/watch?v=UsDhVx6cOrw
            - new TPU, AUto ML, DNA research, 
- -- LUNCH ---
- logistic regression
    demo :
        - AI generated painting sold for $432,000  @ Christies
            https://www.vox.com/the-goods/2018/10/29/18038946/art-algorithm
            Obvious AI Art Studio : http://obvious-art.com/
            
        - Boston dynamics robots : https://www.youtube.com/watch?v=8vIT2da6N_o

- SVM
    demo :
        - Google Assistant making calls : https://ai.googleblog.com/2018/05/duplex-ai-system-for-natural-conversation.html

## Day 3 :
- Naive Bayes
    demo
        - 7 Steps of ML : https://www.youtube.com/watch?v=nKW8Ndu7Mjw

- SageMaker (start after morning break by 1030am)
- Also introduce students to Google's collab.
   https://colab.research.google.com
No demos, students are free to experiment on their own.

--- lunch ----

- diabetes workshop

- decision trees
        - DL vs ML by Andrew Ng : https://www.youtube.com/watch?v=LcfLo7YP8O4
- random forests

- Kmeans

- help students setup their laptops
Walk through 'setup-local.html'  in the lab dir

- end with this very cool demo.
    every body dance now : https://www.youtube.com/watch?v=PCBTZh41Ris
