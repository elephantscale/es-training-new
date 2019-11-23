# Python + Reactive

Notes:

* Labs are here https://github.com/elephantscale/python-labs
 

# Reactive Programming 

## What is reactive programming?

* Popular since 2010
* Mostly due to the Reactive X project
  - The Observer pattern done right
  - ReactiveX is a combination of the best ideas from
     - the Observer pattern
     - the Iterator pattern
     - and functional programming
  - Cure for
     - state machines or callback hell
     
![](../images/01-reactive.png)

Notes: 

http://reactivex.io/


## ReactiveX Languages
* Java: RxJava
* JavaScript: RxJS
* C#: Rx.NET
* C#(Unity): UniRx
* Scala: RxScala
* Clojure: RxClojure
* C++: RxCpp
* Lua: RxLua
* Ruby: Rx.rb
* **Python: RxPY**

## Reactive Languages cont'd
* Go: RxGo
* Groovy: RxGroovy
* JRuby: RxJRuby
* Kotlin: RxKotlin
* Swift: RxSwift
* PHP: RxPHP
* Elixir: reaxive
* Dart: RxDart


## Event-driven programming

![](../images/02-reactive-Event_driven_programming_Simply_Explained.jpg)

Notes:

https://commons.wikimedia.org/wiki/File:Event_driven_programming_Simply_Explained.jpg

## Event-driven Programming Incarnations

Implementations:

* State machines
* Petri net
* Kahn Process Networks
* Observer design pattern
* callbacks
* pipes
* publish/subscribe
* futures
* promises
* streams

## Event-driven programming is hard
* That is, hard to use correctly. Why?
* Instead of a sequence of actions
* The beginning of an action starts when an event occurs
* The actions that are triggered are often dispersed within the program

## Event-driven programming in GUI
* Graphical user interfaces (GUIs):
  - Objective-C on NextStep and macOS
  - C++ on Windows
  - C or eventually C++ on Unix (with X11)
  - Java
  
## Sequential vs. Event-Driven Programming
![](../images/03-reactive-sequential-vs-event-driven.png)

Notes:

Image from book

## How a Reactor Works
* The Reactor design principle
  - Reactor
  - Event handler
  - Event demultiplexer
  
## The Reactor Design Principle
![](../images/04-reactor-design.png)

## The Proactor Design Principle
![](../images/05-reactive-proactor.png)

## What is Reactive After All?
* We cover RxPY, Reactive Programming framework
* But
* This does not automatically give you a Reactive **system**
* Reactive systems are described in
* **[The Reactive Manifesto](https://www.reactivemanifesto.org/)**

## Reactive Systems
![](../images/06-reactive-system.png)

## Reactive System Are
* Responsive:
  - responds to events and user interactions
* Resilient
  - stays responsive even in the event of failure
     - resilience can be achieved in several ways
        - replication 
        - isolation        
* Elastic
  - stays responsive when the workload varies
  - vertically and horizontally scalable
* Message-driven
  - components communicate via asynchronous message channels
    - allows to isolate components
    - saturation is controlled via back-pressure.
  
# Asynchronous responses

## AsyncIO

* The official asynchronous framework for Python
* (Twisted and Gevent are also popular, but)
* Since the release in Python 3.4, AsyncIO has become very popular a de-facto standard
* Python philosophy: There should be only one obvious way to do something
* AsyncIO is it

## AsynIO Components
* Futures
  - represent values that will be available later
* Co-routines
  - allow you to execute asynchronous actions
* Event loops
  - schedule the execution of the active tasks
  
## Use of Futures
![](../images/07-reactive-future-use.png)

## Future Code

```python
import asyncio
f = asyncio.Future()
print("Future is done: {}".format(f.done()))
f.set_result(42) # this is done asynchronously in a real code
print("Future is done: {}".format(f.done()))
print("result is: {}".format(f.result())
```
* Output
```text
Future is done: False
Future is done: True
result is: 42
```

## Co-routines

```python
import datetime
async def wait(delay):
    now = datetime.datetime.now()
    print("wait for {} seconds at {}:{}:{}".format(
        delay, now.hour, now.minute, now.second))
    return True
```
* Output

```text
wait(3)
<coroutine object wait at 0x10b807570>
```

## Event Loop
* Entity of AsyncIO
* Scheduling all asynchronous actions
  - executing concurrently
* An infinite loop
  - waits for some events
  - execute handlers associated with these events
  - these handlers are co-routines
  
## Event Loop Code

```python
loop = asyncio.get_event_loop()
loop.run_until_complete(wait(2))
loop.close()
```

* Output

```text
wait for 2 seconds at 23:8:22
waited for 2 seconds at 23:8:24
```
  
## Executing co-routines
![](../images/08-reactive-coroutines.png)

  
# RxPY: Reactive Python

## RxPY Lab
* Please do the RxPY lab
