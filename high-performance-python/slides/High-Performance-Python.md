# High Performance Python

---

## Benchmarking and Profiling

* Recognizing the slow parts of your program 
    * the single most important task for speeding up your code
 
 * In most cases, the code that causes the application to slow down
is a very small fraction of the program. 

* Locating those critical sections and focus on the parts that need improvement 
    * without wasting time in micro-optimization.
    
---
## Definitions

* Profiling 
    * the technique that allows us to pinpoint the most resource-intensive spots in an application. 

* Profiler 
    * a program that runs an application and monitors how long each function takes to execute, 
    * detects the functions in which your application spends most of its time.

* Python profiling tools
    * cProfile module
    * line_profiler third-party package
    * memory_profiler 
    * KCachegrind to graphically display the data produced by various profilers
    
    
---
    

    