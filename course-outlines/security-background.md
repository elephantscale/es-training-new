### Problem

* Security of software systems is becoming more and more important and visible in the public eye. Meanwhile, there is a basic imbalance between the attackers (hackers) and defenders (software developers). That is, hackers get immediate reward for their breach they effect and the damage the cause. By contracts, defenders get the blame when they are hacked and no mention when they are not. 
* Our system addresses this and changes the balance, ultimately resulting in more secure software systems.

### Solution

* (Pat. Pend.) **IMPACT**

1. Breaking the developers into two teams: blue (defenders) and red (attackers)
2. Recording the results of the attacker's actions
3. Recording the successes of the defenders in stopping the attackers and their failures
4. Periodically update the scoreboard of the defenders thus proving positive reinforcement for their actions
5. The IMPACT system records the above data as logs. It is built on logging frameworks and well-known open source tools for log generation. It uses NoSQL databases to store the log data and Big Data analytics tools such as Spark generate the scoreboards.