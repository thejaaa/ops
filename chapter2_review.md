
# Chapter 2 Review Questions
Name: Thejaswini Reddy Vootkuri
Course: 5143 Operating Systems
Date: 17 Feb 2016

## 1 What are three objectives of an OS design?
The three objectives of an OS design are:
   Convenience: The main objective of an operating system is to provide a convenient interface for users it makes computer user friendly.
   Efficiency: An operating system allows the computer to use resources efficiently. 
   Ability to evolve:An operating system should allow the effective development,testing and introduction to new system functions.

## 2 What is the kernel of an OS?
  The kernel is the minimal operating system program that is loaded in the main memory when a computer system is initialized during     bootsrapping  and that includes the most heavily used portions of software.
  The kernel is maintained permanently in main memory and it is responsible for memory management, process and task management, and     disk management.
   The kernel runs in a privileged mode and responds to calls from processes and interrupts from devices.

## 3 What is multiprogramming?
   Multiprogramming is the technique of utilizing several interleaved programs concurrently in a single computer system. In a            multiprogramming system there are one or more programs loaded in main memory which are ready to execute. 
   Only one program at a time is able to get the CPU for executing its instructions while all the others will wait for their turn.
   Maximizing the use of CPU time is the main idea of multiprogramming.
    
## 4 What is a process?
   A process is a program in execution. A process is controlled and scheduled by the operating system.
   A process is an object that represents singlecomputation and that models the execution context of the computation.
  Each process has a number, its process identifier.Different processes may run different instances of the same program.

##5 How is the execution context of a process used by the OS?
The execution context is the internal data that the Operating system uses to control or supervise a process.
It is also known as the process state.
when a process starts,the initial execution contect of a process starts by taking the required program and data into the main memory from the operating system.
As the application execution eveolves the operating system allocates resources to the process.
The execution context of the process includes resource allocation information,current state of application execution and the next instruction to be executed.

##6 List and briefly explain five storage management responsibilities of a typical OS?
Process isolation: 
Preventing independent processes from interfering with each other's memory, both data and instructions.
Automatic allocation and management:
Dynamic allocation is done to the programs to memory hierarchy as required.
Allocation should be transparent to the programmer. Hence,the programmer is relieved of concerns relating to memory limitations,and efficiency is obtained by the operating system by assigning memory to jobs only as needed.
Support of modular programming:
Defining program modules creating, destroying  and altering the size of modules dynamically are done by programmers.
Protection and access control:
At any level of the memory hierarchy, sharing of memory, creates the potential for one program to address the memory space of another. when sharing is needed by particular applications this is taken otherwise it threatens the integrity of programs. 
Long-term storage: 
 Sorting information for extended periods of time,after the computer has been powered down are required by many application programs.

##7 Explain the distinction between a real address and a virtual address?
Real Adress:
A number that refers to the specific page in memory that the hardware can address is known as real address. 
In an OS environment memory manager of OS and process manager of OS manage these addresses internally.
Virtual Adress:
A number within the address space of your program that corresponds to a real address is known as virtual address.
It is responsibility of processor to translate virtual addresses to appropriate real address. 

##8 Describe the round-robin scheduling technique?
During the execution time of a process the cpu uses one of the scheduling algorithm known as round robin scheduling.
In this technique each process is allocated with equal amount of time.All the processes are kept in the circular queue,and any new process will be added to the end of the queue.
Every process will be executed by CPU for fixed interval of time.So no process will be waiting for its turn to be executed by the CPU.

##9 Explain the difference between a monolithic kernel and a microkernel?
Monolithic:
Everything put together in one huge unit that is called the monolithic. Mono kernel everything in the kernel space.
One process gets destroyed in the monolithic the whole system gets down.
Monolithic kernel contains all of the services like process management, file management, Scheduler, Virtual memory etc are in kernel space.
Microkernel:
Microlithic kernel only small portion of basic services.  Micro kernels only keeps the basic of the facility in kernel code and remaining is implemented in the user space.
When any request cannot be served by kernel it passes the message to related server which would execute the requested work.
In microkernel kernel will be active as most of the work is done in user address space.

##10 What is multithreading?
 Multithreading allows multiple threads are allowed to exist in the context of a process that are executed independently but share the resources of a process is known as multithreading.
 Multithreading in a multiprocessor system results in true concurrent execution of threads across multiple processors and is therefore faster. 

##11 List the key design issues for an SMP operating system?
The key design issues for an SMP operating system are:
  – Simultaneous concurrent processes or threads
  – Scheduling
  – Synchronization
  – Memory Management
  – Reliability and Fault Tolerance.





