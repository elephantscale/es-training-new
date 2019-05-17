# Zookeeper Primer

<img src="../../assets/images/logos/zookeeper-logo-1.png" style="max-width:15%;"/>


---


## A Little Computing History


<img src="../../assets/images/kafka/3rd-party/Computing-History-5.png" alt="Computing-History-5.png" style="width:20%;float:right;"/>

 * 1990s we had single core processors
     - Programs ran in single ‘thread’ mode
     - The game was faster and faster clock speeds  (200MHZ ! …)
     
<br clear="all"/>

<img src="../../assets/images/kafka/3rd-party/Computing-History-6.png" alt="Computing-History-6.png" style="width:20%;float:right; "/>

 * 2000s: multi core processors
     - Multiple threads
     - How do we co-ordinate
     - Synchronization
     - Locks, mutex, semaphores
     - Java made multi-threaded programming easier



Notes: 

Image credit: wikimedia.org


---

## Now


 * Distributed systems with 

     - Multiple nodes

     - Each with multiple cores

 * How do we co-ordinate them all?

<img src="../../assets/images/kafka/Now.png" alt="Now.png" style="width:70%;"/>

Notes: 




---

## Distributed System Problem: Leader Election

 * There Can Be Only One !


<img src="../../assets/images/kafka/3rd-party/leader-election.png" alt="leader-election.png" style="width:70%;"/>



Notes: 

 * Source: Ki Young Lee via Flickr



---

## A Distributed System Problem: Leader Election


<img src="../../assets/images/kafka/Leader-Election-02.png" alt="Leader-Election-02.png" style="max-width:70%;"/>

Notes: 




---

## Leader Election With Zookeeper


<img src="../../assets/images/kafka/Leader-Election-With-Zookeeper.png" alt="Leader-Election-With-Zookeeper.png" style="width:70%;"/>

Notes: 




---

## Zookeeper Cluster / Quorum


 * What if ZK goes down?

 * Run ZK as a cluster - `quorum`

     - No single point of failure

<img src="../../assets/images/kafka/Zookeeper-Cluster-Quorum.png" alt="Zookeeper-Cluster-Quorum.png" style="width:70%;"/>

Notes: 




---

## Zookeeper

<img src="../../assets/images/logos/zookeeper-logo-1.png" style="max-width:30%;float:right;"/>


 * Distributed service that provides
     - Configuration
     - Synchronization
     - Name registry
     - Consensus
     - Leader election

 * Open source

 * Apache open source project

 * Battle tested with very large distributed projects
     - Hadoop, HBase, Kafka


Notes: 




---

## Zookeeper


 * Runs as a quorum (multiple nodes)
     - No single point of failure
 * Odd number of nodes (3, 5, 7 …etc)
     - Odd number to break tie when voting
     - Minimum 3 nodes
     - Small number of nodes can support thousands of clients
 * Consensus protocol is called ‘ZAB’ - Zookeeper Atomic Broadcast.Similar to PAXOS protocol
 
<img src="../../assets/images/kafka/zookeeper.png" style="max-width:40%;"/>


Notes: 

ZAB paper: http://web.stanford.edu/class/cs347/reading/zab.pdf
Paxos: https://en.wikipedia.org/wiki/Paxos_(computer_science)


---

## ZK File System / Configuration


 * ZK exposes a virtual, file system hierarchy

<img src="../../assets/images/kafka/ZK-File-System.png" alt="ZK-File-System.png" style="width:70%;"/>

Notes: 


---

## Zookeeper Clients


 * Clients can set key values.
     - Set  *zoo.lion.feeding_time*  = 12pm
     - ZK will make sure of no race conditions if multiple clients are trying to update

 * Clients can be notified of changes."Notify me when '*zoo.lion.feeding_time*' changes"

<img src="../../assets/images/kafka/ZK-File-System.png" alt="ZK-File-System.png" style="width:50%;"/>

Notes: 
