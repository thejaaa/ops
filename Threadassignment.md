Name:Thejaswini Reddy Vootkuri

Date:04/08/2016

Mid:M20228497

#1 Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation?

In thread1.py all operations are carried out in single step,without giving a chance to another operations to get control over it that is the instructions are said to be atomic.
The threads A&B are accessing a shared resource and there will be no mischangung of a shared resource value.
examples are reading and writing from a variable.

In thread2.py the run() function increments a Counter value and the execution of this done in following three steps:

       sharedCounter += 1
First the interpreter fetches the current value of a counter.
Then it calculates the new counter value.
Then it rewrites back the new counter value back to the variable.During the same time,if one thread is executing that instruction before it writes back the new counter value
then someother thread increments and writes the shared resource/there is a possibility that value of n gets mischanged.


#2 After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

We have used thread synchronizing mechanism in thread3.py.We needto synchronise threads in order to overcome mischanging a value attribute. Synchronisation is done between threads
by using Lock().A lock can be held by a single thread,at any time  or by no thread at all. 
If a thread is already held by some other thread,that attempts to hold a lock then the execution of the first thread is halted until the lock is released.A object called lock is created for each shared resource.
When you need to access the resource, call acquire to hold the lock  and if necessary, this will wait for the lock to be released and then calls the release to release it.
and call release to release it.


#3 Comment out the join statements at the bottom of the program and describe what happens?

In thread2.py if join() is not used then the beforethe termination of child threads that are threadA and threadB the main thread is terminated.Normally or by an unhandled exception this join()
blocks the calling thread until the thread whose join() method is called gets terminated.


#4 What happens if you try to Ctrl-C out of the program before it terminates?

An execption is raised called as KeyboardInterrupt , if we press ctrl-c when the python program is running. If there is a catch block for that execption it would ctach all execptions including the Keyboard Interrupt
which occurs rapidly and then the program gets terminated.


#5 Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation?

In thread4.py the lock has been called on a shared resource and none among the threads are calling. So here code lock is issued by sharedNumber and no threads are acquiring the resource, so anyone among the threads can use the shared resource at same time.

      global sharedNumber
        for k in range(10000000):

            sharedNumber = 1
             if sharedNumber != 1:
                print 'A: that was weird'

           print 'Goodbye from thread A'

#6 Does uncommenting the lock operations clear up the problem in question 5?

In thread4.py we can use lock.acquire() method for a specific thread,after calling a lock on a shared resource.Then the particular thread can access these resources then after its usage of resources is completed
if we call a release() then any other thread can use the same resource when needed.ThreadA and ThreadB accesses these resources one after the other in the order of threads which acquires the lock first.


      def run(self):
           global sharedNumber
           for k in xrange(10000000):
                self.lock.acquire()
                sharedNumber = 1
                if sharedNumber != 1:
                    print 'A: that was weird'
                self.lock.release()
           print 'Goodbye from thread A'
        
      def run(self):
          global sharedNumber
          for k in xrange(10000000):
              self.lock.acquire()
              sharedNumber = 2
              if sharedNumber != 2:
                print 'B: that was weird'
            self.lock.release()
           print 'Goodbye from thread B'



