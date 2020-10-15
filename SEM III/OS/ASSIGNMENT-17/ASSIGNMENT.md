## Q1. List the four steps that are necressary to run an program on a completely dedicated machine?

- Reserve machine Time
- Manually load programs into memory
- Load starting address and begin execution
- Monitor and control execution of program

## Q2. Under what circumstances would a user be better off using a time sharing systems, rather than a PC of single user workstation?

When there are few other users, the task is large and the hardware is fast,in this case time sharing makes sense. The full power of the system can be brought to bear on the user's problem.

## Q3. Describe the differences b/w symmetric and assymmetric multiprocessing. What are three advantage and one disadvantage of a multiprocessor system.

|Assymmetric|Symmetric|
|:---|---:|
|In this the processors are not treated equally|In this the processors are treated equally|In this the processors are not treated equally|
|Tasks of the OS are done by the master processor|Tasks of the OS are done by the individual processors|
|Process are assigned by the master processor|Process is taken from the ready queue|
|Systems are cheaper|Systems are costlier|
|System are easier to design|It is hard to design these kind of systems|

**Advantages**
- High throughput
- Enables parallel processing
- High reliability

**Disadvantages**
- Deadlock becomes frequent
- Costly
- More power consuming

## Q4. What is the main difficulty that a program must overcome in writing an OS for a real-time enviroment.

The main difficulty is keeping th OS within the fixed time constraints of a real-time system

## Q5. What are the five major activities of an OS in regaard ot process managment.

- Creation and Deletion of process
- Suspension and reasumption of process
- A mechanism for process synchronization
- A mechanism for process communication
- A mechanism of deadlock handling

## Q6. Why a process control block(PCB) is needed for execution of a  process? Discuss various states of process in OS.

PCB is used to track the process exection states. Each block of memory contains information about the process state, program counter, stack pointer, states of opened files, scheduling algo, etc.

**Various states of a process are:**
- New
- Ready
- Running
- Blocked
- Terminated

## Q7. What is the main advantage of the microkernel approach to system design?

One benefit of the microkernel approach is ease of extending the OS. All new services are added to user space and consiquently do not require modification of the kernel. The microkernel also provides more security and reliability since most services are running as user-process rather than kernel-process.

## Q8. Consider a set of n tasks with know runtimes r1,r2,...,rn to be run on a uniprocessor machin. Which of followin processor schedulin algorithms will result in max throughput? 

SJF(shortest job first) algo will result in max throughput, becasue throughput is the no of process completed in unit time and SJF will make sure process with min burst time executed first and hence avoid convoy effect.

## Q9. Consider the following set of processes, with the arrival and the CPU burst time in milliseconds.

| Process | Arrival Time | Burst Time |
|:--------|:------------:|-----------:|
| P1      |      0       |          5 |
| P2      |      1       |          3 |
| P3      |      2       |          3 |
| P4      |      4       |          1 |

**What is the average turnaround time with the premptive shortest remaning algo.**

**Gantt chart**

| P1 | P2| P4| P3| P1|END|
|---|---|---|---|---|---|
0|1|4|5|8|12

ATT = (12+3+6+1)/4 = **5.5ms**

## Q10. Consider three process, all arriving at time zero with total execution of 10,20 and 30 units respectively.

| Process | AT | IO | BT | IO |
|---------|----|----|----|----|
| P1      | 0  | 2  | 7  | 1  |
| P2      | 0  | 4  | 14 | 2  |
| P3      | 0  | 6  | 21 | 3  |

| IDLE | P0 | P1 | P2 | IDLE |
| --- | --- | --- | --- | --- |
| 0 | 2 | 9 | 23 | 44 | 47 |

Total time spent = 47
Idle time = 2 + 3 = 5

Percentage of Idle time = (5/47)*100 = **10.6%**

## Q11. Consider the two process solution for critical section problem proposed by Dekker's. Also state that this solution state all the conditions for critical section or not.

The solution to critical section problem should satisfy the following three conditions.
- Mutual Exclusion
- Progress
- Bounded Waiting

```c++
do
{
    //entry section

        critical section

    //exit section

        remainder section
}
while(true);
```

## Q12. Consider the methods used by process P1 and P2 for accessing their critical sections whenever needed.
## P1
```c++
while(s1==s2);
critical section
s1=s2;
```

## P2
```c++
while(s1!=s2);
critical section
s2=!s1;
```
Mutual Exclusion

A way of making sure that if one process is using a shared variable then other may not use it at the same time is by using shared variable in critical section.