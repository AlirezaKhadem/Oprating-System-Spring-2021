! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_123:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_104:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_103:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_101:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_100:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_99:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_98:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_96:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_93:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_92:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_91:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_89:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_87:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_86:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_85:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_83:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_82:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_81:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_80:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_79:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_78:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_76:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_75:
	.word	7			! length
	.ascii	"thread-"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xa05b5b7c,r4		! myHashVal = -1604625540
	cmp	r3,r4
	be	_Label_128
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_128:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_129
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_129
_Label_129:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1740:
	push	r0
	sub	r1,1,r1
	bne	_Label_1740
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_130 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1741:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1741
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_134 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   _temp_136 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_137 = _temp_136 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_137 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1742:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1742
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_139 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_140 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_141 = _function_127_IdleFunction
	set	_function_127_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_143
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	_Label_150
	.word	-36
	.word	4
	.word	_Label_151
	.word	-40
	.word	4
	.word	_Label_152
	.word	-44
	.word	4
	.word	_Label_153
	.word	-48
	.word	4
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-60
	.word	4
	.word	0
_Label_143:
	.ascii	"InitializeScheduler\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_127_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1743:
	push	r0
	sub	r1,1,r1
	bne	_Label_1743
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_157:
!	jmp	_Label_158
_Label_158:
	mov	44,r13		! source line 44
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0IF",r10
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_160 else goto _Label_161
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_161
	jmp	_Label_160
_Label_160:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_163
_Label_161:
! ELSE...
	mov	49,r13		! source line 49
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_163:
! END WHILE...
	jmp	_Label_157
_Label_159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_IdleFunction:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_165
	.word	8
	.word	4
	.word	_Label_166
	.word	-12
	.word	4
	.word	_Label_167
	.word	-16
	.word	4
	.word	0
_Label_164:
	.ascii	"IdleFunction\0"
	.align
_Label_165:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1744:
	push	r0
	sub	r1,1,r1
	bne	_Label_1744
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_170 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_170 ) then goto _Label_169		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_169
!	jmp	_Label_168
_Label_168:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_172 [0 ] into _temp_173
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_171 = _temp_173		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_171  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_169:
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_174 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_175:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_178  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_178 then goto _Label_177 else goto _Label_176
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_176
	jmp	_Label_177
_Label_176:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_175
_Label_177:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_184 ) then goto _Label_183		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_183
!	jmp	_Label_182
_Label_182:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_186 [0 ] into _temp_187
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_185 = _temp_187		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_188) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_188 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_183:
! RETURN STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_191
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_192
	.word	8
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-9
	.word	1
	.word	_Label_204
	.word	-56
	.word	4
	.word	_Label_205
	.word	-60
	.word	4
	.word	_Label_206
	.word	-64
	.word	4
	.word	_Label_207
	.word	-68
	.word	4
	.word	_Label_208
	.word	-72
	.word	4
	.word	_Label_209
	.word	-76
	.word	4
	.word	_Label_210
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"Run\0"
	.align
_Label_192:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_203:
	.byte	'C'
	.ascii	"_temp_178\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_211 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_212 = _function_126_ThreadPrintShort
	set	_function_126_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_213 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"PrintReadyList\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
	mov	114,r13		! source line 114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_222 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	130,r13		! source line 130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_223
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_224
	.word	-12
	.word	4
	.word	_Label_225
	.word	-16
	.word	4
	.word	_Label_226
	.word	-20
	.word	4
	.word	_Label_227
	.word	-24
	.word	4
	.word	_Label_228
	.word	-28
	.word	4
	.word	_Label_229
	.word	-32
	.word	4
	.word	0
_Label_223:
	.ascii	"ThreadStartMain\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
	mov	135,r13		! source line 135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_231 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	153,r13		! source line 153
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_232
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	0
_Label_232:
	.ascii	"ThreadFinish\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
	mov	158,r13		! source line 158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_236 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_238		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_238
!	jmp	_Label_237
_Label_237:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_241 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_240 = *_temp_241  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_238:
! CALL STATEMENT...
!   _temp_242 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	_Label_249
	.word	-20
	.word	4
	.word	_Label_250
	.word	-24
	.word	4
	.word	_Label_251
	.word	-28
	.word	4
	.word	_Label_252
	.word	-32
	.word	4
	.word	_Label_253
	.word	-36
	.word	4
	.word	_Label_254
	.word	-40
	.word	4
	.word	0
_Label_245:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	181,r13		! source line 181
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_256		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_256
!	jmp	_Label_255
_Label_255:
! THEN...
	mov	197,r13		! source line 197
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_257
_Label_256:
! ELSE...
	mov	200,r13		! source line 200
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_257:
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	0
_Label_258:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_126_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	687,r13		! source line 687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_264		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_264
!   _temp_263 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_265
_Label_264:
!   _temp_263 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_265:
!   if _temp_263 then goto _Label_262 else goto _Label_261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	696,r13		! source line 696
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_262:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_270 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	702,r13		! source line 702
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_273
	cmp	r1,2
	be	_Label_274
	cmp	r1,3
	be	_Label_275
	cmp	r1,4
	be	_Label_276
	cmp	r1,5
	be	_Label_277
	jmp	_Label_271
! CASE 1...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 2...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 3...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 4...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_272
! CASE 5...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_272
! DEFAULT CASE...
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	719,r13		! source line 719
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_272:
! CALL STATEMENT...
!   _temp_286 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_287 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_288 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_290
	.word	8
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	_Label_296
	.word	-36
	.word	4
	.word	_Label_297
	.word	-40
	.word	4
	.word	_Label_298
	.word	-44
	.word	4
	.word	_Label_299
	.word	-48
	.word	4
	.word	_Label_300
	.word	-52
	.word	4
	.word	_Label_301
	.word	-56
	.word	4
	.word	_Label_302
	.word	-60
	.word	4
	.word	_Label_303
	.word	-64
	.word	4
	.word	_Label_304
	.word	-68
	.word	4
	.word	_Label_305
	.word	-72
	.word	4
	.word	_Label_306
	.word	-76
	.word	4
	.word	_Label_307
	.word	-9
	.word	1
	.word	_Label_308
	.word	-80
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_307:
	.byte	'C'
	.ascii	"_temp_263\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_125_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	1038,r13		! source line 1038
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_309 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1042,r13		! source line 1042
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_125_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_310
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	0
_Label_310:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
	mov	1048,r13		! source line 1048
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1054,r13		! source line 1054
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_314
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	-12
	.word	4
	.word	0
_Label_314:
	.ascii	"ProcessFinish\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	1551,r13		! source line 1551
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_317
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_317:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1754:
	push	r0
	sub	r1,1,r1
	bne	_Label_1754
	mov	1569,r13		! source line 1569
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_318 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1579,r13		! source line 1579
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_320
	.word	-12
	.word	4
	.word	0
_Label_319:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1591,r13		! source line 1591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_321:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	1605,r13		! source line 1605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_322 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_324
	.word	-12
	.word	4
	.word	0
_Label_323:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	1617,r13		! source line 1617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_325 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_328 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1759:
	push	r0
	sub	r1,1,r1
	bne	_Label_1759
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1760:
	push	r0
	sub	r1,1,r1
	bne	_Label_1760
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_function_124_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_124_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	1689,r13		! source line 1689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_343 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_347 == 0 then goto _Label_346		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!	jmp	_Label_345
_Label_345:
! THEN...
	mov	1700,r13		! source line 1700
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_349) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_351
_Label_346:
! ELSE...
	mov	1702,r13		! source line 1702
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_352 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_351:
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	0
_Label_353:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	1715,r13		! source line 1715
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1736,r13		! source line 1736
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1764
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_362
_Label_1764:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_362
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_362
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_376,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_376:
	jmp	_Label_368	! 1:	
	jmp	_Label_375	! 2:	
	jmp	_Label_365	! 3:	
	jmp	_Label_364	! 4:	
	jmp	_Label_367	! 5:	
	jmp	_Label_366	! 6:	
	jmp	_Label_369	! 7:	
	jmp	_Label_370	! 8:	
	jmp	_Label_371	! 9:	
	jmp	_Label_372	! 10:	
	jmp	_Label_373	! 11:	
	jmp	_Label_374	! 12:	
! CASE 4...
_Label_364:
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_365:
! CALL STATEMENT...
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_366:
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_367:
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_368:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_369:
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_370:
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_371:
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_372:
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_373:
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_374:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_385 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_386 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1769,r13		! source line 1769
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_387
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	12
	.word	4
	.word	_Label_390
	.word	16
	.word	4
	.word	_Label_391
	.word	20
	.word	4
	.word	_Label_392
	.word	24
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	_Label_394
	.word	-16
	.word	4
	.word	_Label_395
	.word	-20
	.word	4
	.word	_Label_396
	.word	-24
	.word	4
	.word	_Label_397
	.word	-28
	.word	4
	.word	_Label_398
	.word	-32
	.word	4
	.word	_Label_399
	.word	-36
	.word	4
	.word	_Label_400
	.word	-40
	.word	4
	.word	_Label_401
	.word	-44
	.word	4
	.word	_Label_402
	.word	-48
	.word	4
	.word	0
_Label_387:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1776,r13		! source line 1776
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_404
	.word	8
	.word	4
	.word	0
_Label_403:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1788,r13		! source line 1788
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1794,r13		! source line 1794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1801,r13		! source line 1801
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_409
	.word	8
	.word	4
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1808,r13		! source line 1808
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1815,r13		! source line 1815
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1829,r13		! source line 1829
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_416
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	12
	.word	4
	.word	_Label_419
	.word	16
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_420
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	12
	.word	4
	.word	_Label_423
	.word	16
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_424
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	12
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1850,r13		! source line 1850
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_427
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_429
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_429:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_430
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_430:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1765:
	push	r0
	sub	r1,1,r1
	bne	_Label_1765
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_432		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_432
!	jmp	_Label_431
_Label_431:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	234,r13		! source line 234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_435
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	0
_Label_435:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_436:
	.ascii	"Pself\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	242,r13		! source line 242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_441		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_442 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	248,r13		! source line 248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_444		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_445 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_446 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_447 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_448
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_450
	.word	-12
	.word	4
	.word	_Label_451
	.word	-16
	.word	4
	.word	_Label_452
	.word	-20
	.word	4
	.word	_Label_453
	.word	-24
	.word	4
	.word	_Label_454
	.word	-28
	.word	4
	.word	_Label_455
	.word	-32
	.word	4
	.word	0
_Label_448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_449:
	.ascii	"Pself\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	261,r13		! source line 261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_458 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	266,r13		! source line 266
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_457:
! ASSIGNMENT STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_461 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_462
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	0
_Label_462:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_467
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_467:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_468
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_468:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	296,r13		! source line 296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_471:
	.ascii	"Pself\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1769:
	push	r0
	sub	r1,1,r1
	bne	_Label_1769
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_474		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_474
!	jmp	_Label_473
_Label_473:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_475 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_474:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_479		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_479
!   _temp_478 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_480
_Label_479:
!   _temp_478 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_480:
!   if _temp_478 then goto _Label_477 else goto _Label_476
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_476
	jmp	_Label_477
_Label_476:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_481
_Label_477:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_482 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_481:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_483
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	-16
	.word	4
	.word	_Label_486
	.word	-9
	.word	1
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	0
_Label_483:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_486:
	.byte	'C'
	.ascii	"_temp_478\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1770:
	push	r0
	sub	r1,1,r1
	bne	_Label_1770
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_490		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_491 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_490:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_495 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_497
_Label_494:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_497:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	0
_Label_498:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_499:
	.ascii	"Pself\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_504:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1771:
	push	r0
	sub	r1,1,r1
	bne	_Label_1771
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_508		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_508
!	jmp	_Label_507
_Label_507:
!   _temp_506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_509
_Label_508:
!   _temp_506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_509:
!   ReturnResult: _temp_506  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_510
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_512
	.word	-9
	.word	1
	.word	0
_Label_510:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_511:
	.ascii	"Pself\0"
	.align
_Label_512:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_513
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_513:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_514
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_514:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_516
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_517:
	.ascii	"Pself\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_521  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_521 then goto _Label_520 else goto _Label_519
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_519
	jmp	_Label_520
_Label_519:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_522 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_520:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_523 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_524
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_526
	.word	12
	.word	4
	.word	_Label_527
	.word	-16
	.word	4
	.word	_Label_528
	.word	-20
	.word	4
	.word	_Label_529
	.word	-9
	.word	1
	.word	_Label_530
	.word	-24
	.word	4
	.word	0
_Label_524:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_525:
	.ascii	"Pself\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'C'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_533  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_533 then goto _Label_532 else goto _Label_531
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_531
	jmp	_Label_532
_Label_531:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_534 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_532:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_535 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_537		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_537
!	jmp	_Label_536
_Label_536:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_538 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_539 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_537:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_540
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_542
	.word	12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-9
	.word	1
	.word	_Label_548
	.word	-32
	.word	4
	.word	_Label_549
	.word	-36
	.word	4
	.word	0
_Label_540:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_541:
	.ascii	"Pself\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_547:
	.byte	'C'
	.ascii	"_temp_533\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_549:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_552  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_552 then goto _Label_551 else goto _Label_550
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_550
	jmp	_Label_551
_Label_550:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_553 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_551:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_554:
!	jmp	_Label_555
_Label_555:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_557 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_558
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_558
	jmp	_Label_559
_Label_558:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_556
! END IF...
_Label_559:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_560 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_554
_Label_556:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_562
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_564
	.word	12
	.word	4
	.word	_Label_565
	.word	-16
	.word	4
	.word	_Label_566
	.word	-20
	.word	4
	.word	_Label_567
	.word	-24
	.word	4
	.word	_Label_568
	.word	-28
	.word	4
	.word	_Label_569
	.word	-9
	.word	1
	.word	_Label_570
	.word	-32
	.word	4
	.word	_Label_571
	.word	-36
	.word	4
	.word	0
_Label_562:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_563:
	.ascii	"Pself\0"
	.align
_Label_564:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_569:
	.byte	'C'
	.ascii	"_temp_552\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_571:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_572
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_572:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_573
	.word	_sourceFileName
	.word	164		! line number
	.word	64		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_573:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	7,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	449,r13		! source line 449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   cnt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   nextCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: nextSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   nextSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_576 = &nextSem
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: sem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   sem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   _temp_578 = &sem
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_579
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_580
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_581
	.word	-12
	.word	4
	.word	_Label_582
	.word	-16
	.word	4
	.word	_Label_583
	.word	-20
	.word	4
	.word	_Label_584
	.word	-24
	.word	4
	.word	_Label_585
	.word	-28
	.word	4
	.word	0
_Label_579:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_580:
	.ascii	"Pself\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	3,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	465,r13		! source line 465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   cnt = cnt + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if nextCount <= 0 then goto _Label_587		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_587
!	jmp	_Label_586
_Label_586:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_588 = &nextSem
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_589
_Label_587:
! ELSE...
	mov	470,r13		! source line 470
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_589:
! SEND STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
!   _temp_590 = &sem
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   cnt = cnt - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! RETURN STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_591
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_593
	.word	12
	.word	4
	.word	_Label_594
	.word	-12
	.word	4
	.word	_Label_595
	.word	-16
	.word	4
	.word	0
_Label_591:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_592:
	.ascii	"Pself\0"
	.align
_Label_593:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	3,r1
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	478,r13		! source line 478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0IF",r10
!   if cnt <= 0 then goto _Label_597		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_597
!	jmp	_Label_596
_Label_596:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   nextCount = nextCount + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   _temp_598 = &sem
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0SE",r10
!   _temp_599 = &nextSem
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   nextCount = nextCount - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! END IF...
_Label_597:
! RETURN STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_600
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_602
	.word	12
	.word	4
	.word	_Label_603
	.word	-12
	.word	4
	.word	_Label_604
	.word	-16
	.word	4
	.word	0
_Label_600:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_601:
	.ascii	"Pself\0"
	.align
_Label_602:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_605
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_605:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_606
	.word	_sourceFileName
	.word	180		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_606:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	494,r13		! source line 494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_607 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_607 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_608 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_608 [0 ] into _temp_609
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_609 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   _temp_610 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_610 [999 ] into _temp_611
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_611 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_612 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_612 [999 ] into _temp_613
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_613		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_614 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_616 = &_temp_615
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_616 = _temp_616 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_618:
!   Data Move: *_temp_616 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_616 = _temp_616 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_617 = _temp_617 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_617) then goto _Label_618
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_618
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_619 = &_temp_615
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1780
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1780:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_614 = *_temp_619  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1781:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1781
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_620 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_622 = &_temp_621
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_622 = _temp_622 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_624:
!   Data Move: *_temp_622 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_622 = _temp_622 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_623 = _temp_623 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_623) then goto _Label_624
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_624
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_625 = &_temp_621
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1782
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1782:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_620 = *_temp_625  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1783:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1783
! RETURN STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_626
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_628
	.word	12
	.word	4
	.word	_Label_629
	.word	-12
	.word	4
	.word	_Label_630
	.word	-16
	.word	4
	.word	_Label_631
	.word	-20
	.word	4
	.word	_Label_632
	.word	-84
	.word	64
	.word	_Label_633
	.word	-88
	.word	4
	.word	_Label_634
	.word	-92
	.word	4
	.word	_Label_635
	.word	-96
	.word	4
	.word	_Label_636
	.word	-100
	.word	4
	.word	_Label_637
	.word	-156
	.word	56
	.word	_Label_638
	.word	-160
	.word	4
	.word	_Label_639
	.word	-164
	.word	4
	.word	_Label_640
	.word	-168
	.word	4
	.word	_Label_641
	.word	-172
	.word	4
	.word	_Label_642
	.word	-176
	.word	4
	.word	_Label_643
	.word	-180
	.word	4
	.word	_Label_644
	.word	-184
	.word	4
	.word	_Label_645
	.word	-188
	.word	4
	.word	0
_Label_626:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_627:
	.ascii	"Pself\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1784:
	push	r0
	sub	r1,1,r1
	bne	_Label_1784
	mov	513,r13		! source line 513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_646  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_648 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_647  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_649
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_651
	.word	12
	.word	4
	.word	_Label_652
	.word	16
	.word	4
	.word	_Label_653
	.word	-12
	.word	4
	.word	_Label_654
	.word	-16
	.word	4
	.word	_Label_655
	.word	-20
	.word	4
	.word	_Label_656
	.word	-24
	.word	4
	.word	_Label_657
	.word	-28
	.word	4
	.word	0
_Label_649:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_650:
	.ascii	"Pself\0"
	.align
_Label_651:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_652:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1785:
	push	r0
	sub	r1,1,r1
	bne	_Label_1785
	mov	537,r13		! source line 537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_660 == _P_Kernel_currentThread then goto _Label_659		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_659
!	jmp	_Label_658
_Label_658:
! THEN...
	mov	554,r13		! source line 554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_661 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	554,r13		! source line 554
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_659:
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
	mov	560,r13		! source line 560
	mov	"\0\0SE",r10
!   _temp_662 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_664		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_664
!	jmp	_Label_663
_Label_663:
! THEN...
	mov	565,r13		! source line 565
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_666		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_667 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	566,r13		! source line 566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_666:
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_669 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_668  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_664:
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_670
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_671
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_672
	.word	-12
	.word	4
	.word	_Label_673
	.word	-16
	.word	4
	.word	_Label_674
	.word	-20
	.word	4
	.word	_Label_675
	.word	-24
	.word	4
	.word	_Label_676
	.word	-28
	.word	4
	.word	_Label_677
	.word	-32
	.word	4
	.word	_Label_678
	.word	-36
	.word	4
	.word	_Label_679
	.word	-40
	.word	4
	.word	_Label_680
	.word	-44
	.word	4
	.word	0
_Label_670:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_671:
	.ascii	"Pself\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_678:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_679:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_680:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_682		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_682
!	jmp	_Label_681
_Label_681:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_683 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	590,r13		! source line 590
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_682:
! IF STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_686 == _P_Kernel_currentThread then goto _Label_685		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_685
!	jmp	_Label_684
_Label_684:
! THEN...
	mov	594,r13		! source line 594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_687 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	594,r13		! source line 594
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_685:
! ASSIGNMENT STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0AS",r10
	mov	600,r13		! source line 600
	mov	"\0\0SE",r10
!   _temp_688 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_689
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_689
	jmp	_Label_690
_Label_689:
! THEN...
	mov	602,r13		! source line 602
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	602,r13		! source line 602
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_690:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_692
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_694
	.word	-12
	.word	4
	.word	_Label_695
	.word	-16
	.word	4
	.word	_Label_696
	.word	-20
	.word	4
	.word	_Label_697
	.word	-24
	.word	4
	.word	_Label_698
	.word	-28
	.word	4
	.word	_Label_699
	.word	-32
	.word	4
	.word	0
_Label_692:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_693:
	.ascii	"Pself\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_699:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	609,r13		! source line 609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0IF",r10
!   _temp_703 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_703 [0 ] into _temp_704
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_702 = *_temp_704  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_702 == 606348324 then goto _Label_701		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_701
!	jmp	_Label_700
_Label_700:
! THEN...
	mov	616,r13		! source line 616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_705 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	616,r13		! source line 616
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_706
_Label_701:
! ELSE...
	mov	617,r13		! source line 617
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_710 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_710 [999 ] into _temp_711
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_709 = *_temp_711  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_709 == 606348324 then goto _Label_708		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_708
!	jmp	_Label_707
_Label_707:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_712 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_708:
! END IF...
_Label_706:
! RETURN STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_713
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_714
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_715
	.word	-12
	.word	4
	.word	_Label_716
	.word	-16
	.word	4
	.word	_Label_717
	.word	-20
	.word	4
	.word	_Label_718
	.word	-24
	.word	4
	.word	_Label_719
	.word	-28
	.word	4
	.word	_Label_720
	.word	-32
	.word	4
	.word	_Label_721
	.word	-36
	.word	4
	.word	_Label_722
	.word	-40
	.word	4
	.word	0
_Label_713:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_714:
	.ascii	"Pself\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	624,r13		! source line 624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_723 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_724 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_726 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_727 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_732 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_733 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_732  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_728:
!   Perform the FOR-LOOP termination test
!   if i > _temp_733 then goto _Label_731		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_731
_Label_729:
	mov	637,r13		! source line 637
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_734 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_735 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_736 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_738 [i ] into _temp_739
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_737 = *_temp_739  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_740 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_742 [i ] into _temp_743
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_741 = *_temp_743  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_744 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_730:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_728
! END FOR
_Label_731:
! CALL STATEMENT...
!   _temp_745 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_746 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_747 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_749 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_749 [0 ] into _temp_750
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_748 = _temp_750		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_747  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_748  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	648,r13		! source line 648
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_753
	cmp	r1,2
	be	_Label_754
	cmp	r1,3
	be	_Label_755
	cmp	r1,4
	be	_Label_756
	cmp	r1,5
	be	_Label_757
	jmp	_Label_751
! CASE 1...
_Label_753:
! CALL STATEMENT...
!   _temp_758 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_752
! CASE 2...
_Label_754:
! CALL STATEMENT...
!   _temp_759 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_752
! CASE 3...
_Label_755:
! CALL STATEMENT...
!   _temp_760 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0BR",r10
	jmp	_Label_752
! CASE 4...
_Label_756:
! CALL STATEMENT...
!   _temp_761 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_752
! CASE 5...
_Label_757:
! CALL STATEMENT...
!   _temp_762 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_752
! DEFAULT CASE...
_Label_751:
! CALL STATEMENT...
!   _temp_763 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	665,r13		! source line 665
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_752:
! CALL STATEMENT...
!   _temp_764 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_765 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_770 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_771 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_770  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_766:
!   Perform the FOR-LOOP termination test
!   if i > _temp_771 then goto _Label_769		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_769
_Label_767:
	mov	671,r13		! source line 671
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_772 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_773 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_774 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_776 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_776 [i ] into _temp_777
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_775 = *_temp_777  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_778 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_780 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_780 [i ] into _temp_781
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_779 = *_temp_781  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_782 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_768:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_766
! END FOR
_Label_769:
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_783
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	_Label_790
	.word	-32
	.word	4
	.word	_Label_791
	.word	-36
	.word	4
	.word	_Label_792
	.word	-40
	.word	4
	.word	_Label_793
	.word	-44
	.word	4
	.word	_Label_794
	.word	-48
	.word	4
	.word	_Label_795
	.word	-52
	.word	4
	.word	_Label_796
	.word	-56
	.word	4
	.word	_Label_797
	.word	-60
	.word	4
	.word	_Label_798
	.word	-64
	.word	4
	.word	_Label_799
	.word	-68
	.word	4
	.word	_Label_800
	.word	-72
	.word	4
	.word	_Label_801
	.word	-76
	.word	4
	.word	_Label_802
	.word	-80
	.word	4
	.word	_Label_803
	.word	-84
	.word	4
	.word	_Label_804
	.word	-88
	.word	4
	.word	_Label_805
	.word	-92
	.word	4
	.word	_Label_806
	.word	-96
	.word	4
	.word	_Label_807
	.word	-100
	.word	4
	.word	_Label_808
	.word	-104
	.word	4
	.word	_Label_809
	.word	-108
	.word	4
	.word	_Label_810
	.word	-112
	.word	4
	.word	_Label_811
	.word	-116
	.word	4
	.word	_Label_812
	.word	-120
	.word	4
	.word	_Label_813
	.word	-124
	.word	4
	.word	_Label_814
	.word	-128
	.word	4
	.word	_Label_815
	.word	-132
	.word	4
	.word	_Label_816
	.word	-136
	.word	4
	.word	_Label_817
	.word	-140
	.word	4
	.word	_Label_818
	.word	-144
	.word	4
	.word	_Label_819
	.word	-148
	.word	4
	.word	_Label_820
	.word	-152
	.word	4
	.word	_Label_821
	.word	-156
	.word	4
	.word	_Label_822
	.word	-160
	.word	4
	.word	_Label_823
	.word	-164
	.word	4
	.word	_Label_824
	.word	-168
	.word	4
	.word	_Label_825
	.word	-172
	.word	4
	.word	_Label_826
	.word	-176
	.word	4
	.word	_Label_827
	.word	-180
	.word	4
	.word	_Label_828
	.word	-184
	.word	4
	.word	_Label_829
	.word	-188
	.word	4
	.word	_Label_830
	.word	-192
	.word	4
	.word	_Label_831
	.word	-196
	.word	4
	.word	0
_Label_783:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_784:
	.ascii	"Pself\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_830:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_831:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_832
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_832:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_833
	.word	_sourceFileName
	.word	207		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_833:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	12519,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	735,r13		! source line 735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_834 = _StringConst_74
	set	_StringConst_74,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	set	-45904,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   _temp_835 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_837 = &_temp_836
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   _temp_837 = _temp_837 + 4
	load	[r14+-4252],r1
	add	r1,4,r1
	store	r1,[r14+-4252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_839 = zeros  (sizeInBytes=4164)
	add	r14,-4244,r4
	mov	1041,r3
_Label_1790:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1790
!   _temp_839 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4244]
	mov	10,r1
	store	r1,[r14+-4248]
_Label_841:
!   Data Move: *_temp_837 = _temp_839  (sizeInBytes=4164)
	add	r14,-4244,r5
	load	[r14+-4252],r4
	mov	1041,r3
_Label_1791:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1791
!   _temp_837 = _temp_837 + 4164
	load	[r14+-4252],r1
	add	r1,4164,r1
	store	r1,[r14+-4252]
!   _temp_838 = _temp_838 + -1
	load	[r14+-4248],r1
	add	r1,-1,r1
	store	r1,[r14+-4248]
!   if intNotZero (_temp_838) then goto _Label_841
	load	[r14+-4248],r1
	cmp	r1,r0
	bne	_Label_841
!   Initialize the array size...
	mov	10,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   _temp_842 = &_temp_836
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1792
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1792:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_835 = *_temp_842  (sizeInBytes=41644)
	load	[r14+-76],r5
	set	-45900,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1793:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1793
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_845 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_847 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_852 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_853 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_852  (sizeInBytes=4)
	load	[r14+-52],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_848:
!   Perform the FOR-LOOP termination test
!   if index > _temp_853 then goto _Label_851		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_851
_Label_849:
	mov	756,r13		! source line 756
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0AS",r10
!   _temp_854 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-44]
!   _temp_855 = index + 1		(int)
	set	-45908,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   th_name = _temp_854 + _temp_855		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   _temp_856 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_856 [index ] into _temp_857
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: th = *_temp_857  (sizeInBytes=4164)
	load	[r14+-32],r5
	set	-50072,r4
	add	r14,r4,r4
	mov	1041,r3
_Label_1794:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1794
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_858 = &th
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th_name  sizeInBytes=4
	set	-50076,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0AS",r10
!   _temp_859 = &th
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-24]
!   _temp_860 = _temp_859 + 76
	load	[r14+-24],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_860 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_861 = &th
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   _temp_862 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_861  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_850:
!   index = index + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_848
! END FOR
_Label_851:
! RETURN STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0RE",r10
	set	50080,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_863
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	-12
	.word	4
	.word	_Label_866
	.word	-16
	.word	4
	.word	_Label_867
	.word	-20
	.word	4
	.word	_Label_868
	.word	-24
	.word	4
	.word	_Label_869
	.word	-28
	.word	4
	.word	_Label_870
	.word	-32
	.word	4
	.word	_Label_871
	.word	-36
	.word	4
	.word	_Label_872
	.word	-40
	.word	4
	.word	_Label_873
	.word	-44
	.word	4
	.word	_Label_874
	.word	-48
	.word	4
	.word	_Label_875
	.word	-52
	.word	4
	.word	_Label_876
	.word	-56
	.word	4
	.word	_Label_877
	.word	-60
	.word	4
	.word	_Label_878
	.word	-64
	.word	4
	.word	_Label_879
	.word	-68
	.word	4
	.word	_Label_880
	.word	-72
	.word	4
	.word	_Label_881
	.word	-76
	.word	4
	.word	_Label_882
	.word	-80
	.word	4
	.word	_Label_883
	.word	-4244
	.word	4164
	.word	_Label_884
	.word	-4248
	.word	4
	.word	_Label_885
	.word	-4252
	.word	4
	.word	_Label_886
	.word	-45896
	.word	41644
	.word	_Label_887
	.word	-45900
	.word	4
	.word	_Label_888
	.word	-45904
	.word	4
	.word	_Label_889
	.word	-45908
	.word	4
	.word	_Label_890
	.word	-50072
	.word	4164
	.word	_Label_891
	.word	-50076
	.word	4
	.word	0
_Label_863:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_890:
	.byte	'O'
	.ascii	"th\0"
	.align
_Label_891:
	.byte	'P'
	.ascii	"th_name\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	771,r13		! source line 771
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_892 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_892  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_897 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_898 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_897  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_893:
!   Perform the FOR-LOOP termination test
!   if i > _temp_898 then goto _Label_896		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_896
_Label_894:
	mov	780,r13		! source line 780
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_899 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_900 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_902 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_902 [i ] into _temp_903
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_901 = _temp_903		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_895:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_893
! END FOR
_Label_896:
! CALL STATEMENT...
!   _temp_904 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_905 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_906 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_905  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_907
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_909
	.word	-12
	.word	4
	.word	_Label_910
	.word	-16
	.word	4
	.word	_Label_911
	.word	-20
	.word	4
	.word	_Label_912
	.word	-24
	.word	4
	.word	_Label_913
	.word	-28
	.word	4
	.word	_Label_914
	.word	-32
	.word	4
	.word	_Label_915
	.word	-36
	.word	4
	.word	_Label_916
	.word	-40
	.word	4
	.word	_Label_917
	.word	-44
	.word	4
	.word	_Label_918
	.word	-48
	.word	4
	.word	_Label_919
	.word	-52
	.word	4
	.word	_Label_920
	.word	-56
	.word	4
	.word	_Label_921
	.word	-60
	.word	4
	.word	0
_Label_907:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_908:
	.ascii	"Pself\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_920:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_921:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	794,r13		! source line 794
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_922 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0WH",r10
_Label_923:
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_926 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_924 else goto _Label_925
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_925
	jmp	_Label_924
_Label_924:
	mov	806,r13		! source line 806
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_927 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_928 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_927  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_923
_Label_925:
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0AS",r10
	mov	810,r13		! source line 810
	mov	"\0\0SE",r10
!   _temp_929 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=new_th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   if intIsZero (new_th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_930 = new_th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_930 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_931 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0RE",r10
!   ReturnResult: new_th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_932
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_934
	.word	-12
	.word	4
	.word	_Label_935
	.word	-16
	.word	4
	.word	_Label_936
	.word	-20
	.word	4
	.word	_Label_937
	.word	-24
	.word	4
	.word	_Label_938
	.word	-28
	.word	4
	.word	_Label_939
	.word	-32
	.word	4
	.word	_Label_940
	.word	-36
	.word	4
	.word	_Label_941
	.word	-40
	.word	4
	.word	0
_Label_932:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_933:
	.ascii	"Pself\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"new_th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	819,r13		! source line 819
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0SE",r10
!   _temp_942 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_943 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_944 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0SE",r10
!   _temp_945 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_946 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_945  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0SE",r10
!   _temp_947 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_948
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_950
	.word	12
	.word	4
	.word	_Label_951
	.word	-12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-32
	.word	4
	.word	0
_Label_948:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_949:
	.ascii	"Pself\0"
	.align
_Label_950:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_957
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_957:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_958
	.word	_sourceFileName
	.word	228		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_958:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	845,r13		! source line 845
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1799:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1799
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0SE",r10
!   _temp_960 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_961
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_963
	.word	-12
	.word	4
	.word	_Label_964
	.word	-16
	.word	4
	.word	0
_Label_961:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_962:
	.ascii	"Pself\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_966 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_967 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_967  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CA",r10
	call	_function_126_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_968
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_970
	.word	-12
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	_Label_972
	.word	-20
	.word	4
	.word	0
_Label_968:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_969:
	.ascii	"Pself\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	882,r13		! source line 882
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_973 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_973  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_974  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_975 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_976 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_978		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_978
!	jmp	_Label_977
_Label_977:
! THEN...
	mov	892,r13		! source line 892
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_979 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_980
_Label_978:
! ELSE...
	mov	893,r13		! source line 893
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_982		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_982
!	jmp	_Label_981
_Label_981:
! THEN...
	mov	894,r13		! source line 894
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_983 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_984
_Label_982:
! ELSE...
	mov	895,r13		! source line 895
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_986		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_986
!	jmp	_Label_985
_Label_985:
! THEN...
	mov	896,r13		! source line 896
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_988
_Label_986:
! ELSE...
	mov	898,r13		! source line 898
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	898,r13		! source line 898
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_988:
! END IF...
_Label_984:
! END IF...
_Label_980:
! CALL STATEMENT...
!   _temp_990 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_991 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_992
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	_Label_997
	.word	-24
	.word	4
	.word	_Label_998
	.word	-28
	.word	4
	.word	_Label_999
	.word	-32
	.word	4
	.word	_Label_1000
	.word	-36
	.word	4
	.word	_Label_1001
	.word	-40
	.word	4
	.word	_Label_1002
	.word	-44
	.word	4
	.word	_Label_1003
	.word	-48
	.word	4
	.word	0
_Label_992:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_993:
	.ascii	"Pself\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1004
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1004:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1005
	.word	_sourceFileName
	.word	248		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1005:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	915,r13		! source line 915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   _temp_1006 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1008 = &_temp_1007
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1008 = _temp_1008 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1010 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1803:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1803
!   _temp_1010 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1012:
!   Data Move: *_temp_1008 = _temp_1010  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1804:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1804
!   _temp_1008 = _temp_1008 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1009 = _temp_1009 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1009) then goto _Label_1012
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1012
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1013 = &_temp_1007
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1805
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1805:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1006 = *_temp_1013  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1806:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1806
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0SE",r10
!   _temp_1016 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0SE",r10
!   _temp_1018 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_1020 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1025 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1026 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1025  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1021:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1026 then goto _Label_1024		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1024
_Label_1022:
	mov	935,r13		! source line 935
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1027 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1027 [index ] into _temp_1028
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   _temp_1029 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1029 [index ] into _temp_1030
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1031 = _temp_1030 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1031 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1033 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1033 [index ] into _temp_1034
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1032 = _temp_1034		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1035 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1032  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1023:
!   index = index + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1021
! END FOR
_Label_1024:
! RETURN STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	_Label_1041
	.word	-24
	.word	4
	.word	_Label_1042
	.word	-28
	.word	4
	.word	_Label_1043
	.word	-32
	.word	4
	.word	_Label_1044
	.word	-36
	.word	4
	.word	_Label_1045
	.word	-40
	.word	4
	.word	_Label_1046
	.word	-44
	.word	4
	.word	_Label_1047
	.word	-48
	.word	4
	.word	_Label_1048
	.word	-52
	.word	4
	.word	_Label_1049
	.word	-56
	.word	4
	.word	_Label_1050
	.word	-60
	.word	4
	.word	_Label_1051
	.word	-64
	.word	4
	.word	_Label_1052
	.word	-68
	.word	4
	.word	_Label_1053
	.word	-72
	.word	4
	.word	_Label_1054
	.word	-76
	.word	4
	.word	_Label_1055
	.word	-80
	.word	4
	.word	_Label_1056
	.word	-84
	.word	4
	.word	_Label_1057
	.word	-88
	.word	4
	.word	_Label_1058
	.word	-212
	.word	124
	.word	_Label_1059
	.word	-216
	.word	4
	.word	_Label_1060
	.word	-220
	.word	4
	.word	_Label_1061
	.word	-1464
	.word	1244
	.word	_Label_1062
	.word	-1468
	.word	4
	.word	_Label_1063
	.word	-1472
	.word	4
	.word	0
_Label_1036:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1063:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1807:
	push	r0
	sub	r1,1,r1
	bne	_Label_1807
	mov	945,r13		! source line 945
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1064 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1069 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1070 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1069  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1065:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1070 then goto _Label_1068		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1068
_Label_1066:
	mov	954,r13		! source line 954
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1071 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1072 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1073 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1073 [i ] into _temp_1074
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1067:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1065
! END FOR
_Label_1068:
! CALL STATEMENT...
!   _temp_1075 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1076 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1077 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1076  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	962,r13		! source line 962
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	963,r13		! source line 963
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1078
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1080
	.word	-12
	.word	4
	.word	_Label_1081
	.word	-16
	.word	4
	.word	_Label_1082
	.word	-20
	.word	4
	.word	_Label_1083
	.word	-24
	.word	4
	.word	_Label_1084
	.word	-28
	.word	4
	.word	_Label_1085
	.word	-32
	.word	4
	.word	_Label_1086
	.word	-36
	.word	4
	.word	_Label_1087
	.word	-40
	.word	4
	.word	_Label_1088
	.word	-44
	.word	4
	.word	_Label_1089
	.word	-48
	.word	4
	.word	_Label_1090
	.word	-52
	.word	4
	.word	_Label_1091
	.word	-56
	.word	4
	.word	0
_Label_1078:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1079:
	.ascii	"Pself\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1090:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1091:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	968,r13		! source line 968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1092 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1097 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1098 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1097  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1093:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1098 then goto _Label_1096		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1096
_Label_1094:
	mov	977,r13		! source line 977
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1099 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1100 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1100 [i ] into _temp_1101
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1095:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1093
! END FOR
_Label_1096:
! CALL STATEMENT...
!   _temp_1102 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1103 = _function_125_PrintObjectAddr
	set	_function_125_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1104 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1103  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1105
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1107
	.word	-12
	.word	4
	.word	_Label_1108
	.word	-16
	.word	4
	.word	_Label_1109
	.word	-20
	.word	4
	.word	_Label_1110
	.word	-24
	.word	4
	.word	_Label_1111
	.word	-28
	.word	4
	.word	_Label_1112
	.word	-32
	.word	4
	.word	_Label_1113
	.word	-36
	.word	4
	.word	_Label_1114
	.word	-40
	.word	4
	.word	_Label_1115
	.word	-44
	.word	4
	.word	_Label_1116
	.word	-48
	.word	4
	.word	_Label_1117
	.word	-52
	.word	4
	.word	0
_Label_1105:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1106:
	.ascii	"Pself\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	12,r1
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	990,r13		! source line 990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1118 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0WH",r10
_Label_1119:
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1122 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1120 else goto _Label_1121
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1121
	jmp	_Label_1120
_Label_1120:
	mov	1000,r13		! source line 1000
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1123 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1124 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1119
_Label_1121:
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_1125 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = pcb + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   _temp_1127 = nextPid - 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Data Move: *_temp_1126 = _temp_1127  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = pcb + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1128 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1129 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0RE",r10
!   ReturnResult: pcb  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1130
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1132
	.word	-12
	.word	4
	.word	_Label_1133
	.word	-16
	.word	4
	.word	_Label_1134
	.word	-20
	.word	4
	.word	_Label_1135
	.word	-24
	.word	4
	.word	_Label_1136
	.word	-28
	.word	4
	.word	_Label_1137
	.word	-32
	.word	4
	.word	_Label_1138
	.word	-36
	.word	4
	.word	_Label_1139
	.word	-40
	.word	4
	.word	_Label_1140
	.word	-44
	.word	4
	.word	_Label_1141
	.word	-48
	.word	4
	.word	0
_Label_1130:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1131:
	.ascii	"Pself\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1141:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	1017,r13		! source line 1017
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1142 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1143 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1144 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1145 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1146 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1145  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1147 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1148
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1150
	.word	12
	.word	4
	.word	_Label_1151
	.word	-12
	.word	4
	.word	_Label_1152
	.word	-16
	.word	4
	.word	_Label_1153
	.word	-20
	.word	4
	.word	_Label_1154
	.word	-24
	.word	4
	.word	_Label_1155
	.word	-28
	.word	4
	.word	_Label_1156
	.word	-32
	.word	4
	.word	0
_Label_1148:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1149:
	.ascii	"Pself\0"
	.align
_Label_1150:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1157
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1157:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1158
	.word	_sourceFileName
	.word	271		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1158:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	1063,r13		! source line 1063
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1159 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0SE",r10
!   _temp_1161 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1163 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1165 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1170 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1171 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1170  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1166:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1171 then goto _Label_1169		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1169
_Label_1167:
	mov	1082,r13		! source line 1082
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1174 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1174) then goto _Label_1173
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	1086,r13		! source line 1086
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1175 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1086,r13		! source line 1086
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1173:
!   Increment the FOR-LOOP index variable and jump back
_Label_1168:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1166
! END FOR
_Label_1169:
! RETURN STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1176
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1178
	.word	-12
	.word	4
	.word	_Label_1179
	.word	-16
	.word	4
	.word	_Label_1180
	.word	-20
	.word	4
	.word	_Label_1181
	.word	-24
	.word	4
	.word	_Label_1182
	.word	-28
	.word	4
	.word	_Label_1183
	.word	-32
	.word	4
	.word	_Label_1184
	.word	-36
	.word	4
	.word	_Label_1185
	.word	-40
	.word	4
	.word	_Label_1186
	.word	-44
	.word	4
	.word	_Label_1187
	.word	-48
	.word	4
	.word	_Label_1188
	.word	-52
	.word	4
	.word	_Label_1189
	.word	-56
	.word	4
	.word	0
_Label_1176:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1177:
	.ascii	"Pself\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	1093,r13		! source line 1093
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_1190 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1191 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1098,r13		! source line 1098
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1192 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1193 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1100,r13		! source line 1100
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1194 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1195 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1196
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1198
	.word	-12
	.word	4
	.word	_Label_1199
	.word	-16
	.word	4
	.word	_Label_1200
	.word	-20
	.word	4
	.word	_Label_1201
	.word	-24
	.word	4
	.word	_Label_1202
	.word	-28
	.word	4
	.word	_Label_1203
	.word	-32
	.word	4
	.word	0
_Label_1196:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1197:
	.ascii	"Pself\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	1107,r13		! source line 1107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1204 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0WH",r10
_Label_1205:
!   if numberFreeFrames >= 1 then goto _Label_1207		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1207
!	jmp	_Label_1206
_Label_1206:
	mov	1118,r13		! source line 1118
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1208 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1209 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1208  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1205
_Label_1207:
! ASSIGNMENT STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1210 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1211 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   _temp_1212 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1212		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1213
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1215
	.word	-12
	.word	4
	.word	_Label_1216
	.word	-16
	.word	4
	.word	_Label_1217
	.word	-20
	.word	4
	.word	_Label_1218
	.word	-24
	.word	4
	.word	_Label_1219
	.word	-28
	.word	4
	.word	_Label_1220
	.word	-32
	.word	4
	.word	_Label_1221
	.word	-36
	.word	4
	.word	_Label_1222
	.word	-40
	.word	4
	.word	0
_Label_1213:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1214:
	.ascii	"Pself\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1221:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1222:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	1137,r13		! source line 1137
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1223 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0WH",r10
_Label_1224:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1226		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1226
!	jmp	_Label_1225
_Label_1225:
	mov	1146,r13		! source line 1146
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1227 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1228 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1227  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1224
_Label_1226:
! FOR STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1233 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1234 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1233  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1229:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1234 then goto _Label_1232		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1232
_Label_1230:
	mov	1150,r13		! source line 1150
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1235 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frame_index  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   _temp_1236 = frame_index * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frame_address = 1048576 + _temp_1236		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frame_address  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1231:
!   index = index + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1229
! END FOR
_Label_1232:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1237 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1237 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1238 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1239
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1241
	.word	12
	.word	4
	.word	_Label_1242
	.word	16
	.word	4
	.word	_Label_1243
	.word	-12
	.word	4
	.word	_Label_1244
	.word	-16
	.word	4
	.word	_Label_1245
	.word	-20
	.word	4
	.word	_Label_1246
	.word	-24
	.word	4
	.word	_Label_1247
	.word	-28
	.word	4
	.word	_Label_1248
	.word	-32
	.word	4
	.word	_Label_1249
	.word	-36
	.word	4
	.word	_Label_1250
	.word	-40
	.word	4
	.word	_Label_1251
	.word	-44
	.word	4
	.word	_Label_1252
	.word	-48
	.word	4
	.word	_Label_1253
	.word	-52
	.word	4
	.word	_Label_1254
	.word	-56
	.word	4
	.word	0
_Label_1239:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1240:
	.ascii	"Pself\0"
	.align
_Label_1241:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1242:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"frame_index\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"frame_address\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	1168,r13		! source line 1168
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1255 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1260 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1263 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1262 = *_temp_1263  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1261 = _temp_1262 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1260  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1256:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1261 then goto _Label_1259		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1259
_Label_1257:
	mov	1177,r13		! source line 1177
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frame_address  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0AS",r10
!   _temp_1264 = frame_address - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   frame_index = _temp_1264 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1265 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=frame_index  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1258:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1256
! END FOR
_Label_1259:
! ASSIGNMENT STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1267 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1266 = *_temp_1267  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1266		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_1268 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1269 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1268  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1270 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1271
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1273
	.word	12
	.word	4
	.word	_Label_1274
	.word	-12
	.word	4
	.word	_Label_1275
	.word	-16
	.word	4
	.word	_Label_1276
	.word	-20
	.word	4
	.word	_Label_1277
	.word	-24
	.word	4
	.word	_Label_1278
	.word	-28
	.word	4
	.word	_Label_1279
	.word	-32
	.word	4
	.word	_Label_1280
	.word	-36
	.word	4
	.word	_Label_1281
	.word	-40
	.word	4
	.word	_Label_1282
	.word	-44
	.word	4
	.word	_Label_1283
	.word	-48
	.word	4
	.word	_Label_1284
	.word	-52
	.word	4
	.word	_Label_1285
	.word	-56
	.word	4
	.word	_Label_1286
	.word	-60
	.word	4
	.word	_Label_1287
	.word	-64
	.word	4
	.word	_Label_1288
	.word	-68
	.word	4
	.word	0
_Label_1271:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1272:
	.ascii	"Pself\0"
	.align
_Label_1273:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1287:
	.byte	'I'
	.ascii	"frame_index\0"
	.align
_Label_1288:
	.byte	'I'
	.ascii	"frame_address\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1289
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1289:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1290
	.word	_sourceFileName
	.word	290		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1290:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	1199,r13		! source line 1199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   _temp_1291 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1293 = &_temp_1292
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1293 = _temp_1293 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1295:
!   Data Move: *_temp_1293 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1293 = _temp_1293 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1294 = _temp_1294 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1294) then goto _Label_1295
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1295
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1296 = &_temp_1292
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1817
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1817:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1291 = *_temp_1296  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1818:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1818
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1297
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1299
	.word	-12
	.word	4
	.word	_Label_1300
	.word	-16
	.word	4
	.word	_Label_1301
	.word	-20
	.word	4
	.word	_Label_1302
	.word	-104
	.word	84
	.word	_Label_1303
	.word	-108
	.word	4
	.word	0
_Label_1297:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1298:
	.ascii	"Pself\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1304 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1305 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1310 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1311 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1310  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1306:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1311 then goto _Label_1309		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1309
_Label_1307:
	mov	1216,r13		! source line 1216
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1312 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1314 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1314 [i ] into _temp_1315
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1313 = _temp_1315		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1316 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1318 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1318 [i ] into _temp_1319
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1317 = *_temp_1319  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1320 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1321 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1322 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1324) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1323  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1325 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1325  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0IF",r10
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1329) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1328  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1328) then goto _Label_1327
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1327
!	jmp	_Label_1326
_Label_1326:
! THEN...
	mov	1227,r13		! source line 1227
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1331) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1330  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1332
_Label_1327:
! ELSE...
	mov	1229,r13		! source line 1229
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1333 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1332:
! CALL STATEMENT...
!   _temp_1334 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1335 else goto _Label_1336
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1336
	jmp	_Label_1335
_Label_1335:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1338 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1338  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1339
_Label_1336:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1340 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1339:
! CALL STATEMENT...
!   _temp_1341 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0IF",r10
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1344) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1342 else goto _Label_1343
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1343
	jmp	_Label_1342
_Label_1342:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1345 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1346
_Label_1343:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1347 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1346:
! CALL STATEMENT...
!   _temp_1348 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1351) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1349 else goto _Label_1350
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1350
	jmp	_Label_1349
_Label_1349:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1352 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1353
_Label_1350:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1354 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1353:
! CALL STATEMENT...
!   _temp_1355 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1358) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1356 else goto _Label_1357
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1357
	jmp	_Label_1356
_Label_1356:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1359 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1359  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1360
_Label_1357:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1361 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1361  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1360:
! CALL STATEMENT...
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1308:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1306
! END FOR
_Label_1309:
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1362
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1364
	.word	-12
	.word	4
	.word	_Label_1365
	.word	-16
	.word	4
	.word	_Label_1366
	.word	-20
	.word	4
	.word	_Label_1367
	.word	-24
	.word	4
	.word	_Label_1368
	.word	-28
	.word	4
	.word	_Label_1369
	.word	-32
	.word	4
	.word	_Label_1370
	.word	-36
	.word	4
	.word	_Label_1371
	.word	-40
	.word	4
	.word	_Label_1372
	.word	-44
	.word	4
	.word	_Label_1373
	.word	-48
	.word	4
	.word	_Label_1374
	.word	-52
	.word	4
	.word	_Label_1375
	.word	-56
	.word	4
	.word	_Label_1376
	.word	-60
	.word	4
	.word	_Label_1377
	.word	-64
	.word	4
	.word	_Label_1378
	.word	-68
	.word	4
	.word	_Label_1379
	.word	-72
	.word	4
	.word	_Label_1380
	.word	-76
	.word	4
	.word	_Label_1381
	.word	-80
	.word	4
	.word	_Label_1382
	.word	-84
	.word	4
	.word	_Label_1383
	.word	-88
	.word	4
	.word	_Label_1384
	.word	-92
	.word	4
	.word	_Label_1385
	.word	-96
	.word	4
	.word	_Label_1386
	.word	-100
	.word	4
	.word	_Label_1387
	.word	-104
	.word	4
	.word	_Label_1388
	.word	-108
	.word	4
	.word	_Label_1389
	.word	-112
	.word	4
	.word	_Label_1390
	.word	-116
	.word	4
	.word	_Label_1391
	.word	-120
	.word	4
	.word	_Label_1392
	.word	-124
	.word	4
	.word	_Label_1393
	.word	-128
	.word	4
	.word	_Label_1394
	.word	-132
	.word	4
	.word	_Label_1395
	.word	-136
	.word	4
	.word	_Label_1396
	.word	-140
	.word	4
	.word	_Label_1397
	.word	-144
	.word	4
	.word	_Label_1398
	.word	-148
	.word	4
	.word	_Label_1399
	.word	-152
	.word	4
	.word	_Label_1400
	.word	-156
	.word	4
	.word	_Label_1401
	.word	-160
	.word	4
	.word	_Label_1402
	.word	-164
	.word	4
	.word	_Label_1403
	.word	-168
	.word	4
	.word	0
_Label_1362:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1363:
	.ascii	"Pself\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_1406 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1406 [entry ] into _temp_1407
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1405 = *_temp_1407  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1404 = _temp_1405 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1404  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1408
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1409
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1410
	.word	12
	.word	4
	.word	_Label_1411
	.word	-12
	.word	4
	.word	_Label_1412
	.word	-16
	.word	4
	.word	_Label_1413
	.word	-20
	.word	4
	.word	_Label_1414
	.word	-24
	.word	4
	.word	0
_Label_1408:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1409:
	.ascii	"Pself\0"
	.align
_Label_1410:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1821:
	push	r0
	sub	r1,1,r1
	bne	_Label_1821
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0RE",r10
!   _temp_1417 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1417 [entry ] into _temp_1418
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1416 = *_temp_1418  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1415 = _temp_1416 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1415  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1419
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1421
	.word	12
	.word	4
	.word	_Label_1422
	.word	-12
	.word	4
	.word	_Label_1423
	.word	-16
	.word	4
	.word	_Label_1424
	.word	-20
	.word	4
	.word	_Label_1425
	.word	-24
	.word	4
	.word	0
_Label_1419:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1822:
	push	r0
	sub	r1,1,r1
	bne	_Label_1822
	mov	1280,r13		! source line 1280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0AS",r10
!   _temp_1426 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1426 [entry ] into _temp_1427
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1431 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1431 [entry ] into _temp_1432
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1430 = *_temp_1432  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1429 = _temp_1430 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1428 = _temp_1429 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1427 = _temp_1428  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1433
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	12
	.word	4
	.word	_Label_1436
	.word	16
	.word	4
	.word	_Label_1437
	.word	-12
	.word	4
	.word	_Label_1438
	.word	-16
	.word	4
	.word	_Label_1439
	.word	-20
	.word	4
	.word	_Label_1440
	.word	-24
	.word	4
	.word	_Label_1441
	.word	-28
	.word	4
	.word	_Label_1442
	.word	-32
	.word	4
	.word	_Label_1443
	.word	-36
	.word	4
	.word	0
_Label_1433:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1823:
	push	r0
	sub	r1,1,r1
	bne	_Label_1823
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_1447 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1447 [entry ] into _temp_1448
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1446 = *_temp_1448  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1445 = _temp_1446 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1445) then goto _Label_1449
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1449
!   _temp_1444 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1450
_Label_1449:
!   _temp_1444 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1450:
!   ReturnResult: _temp_1444  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1451
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	12
	.word	4
	.word	_Label_1454
	.word	-16
	.word	4
	.word	_Label_1455
	.word	-20
	.word	4
	.word	_Label_1456
	.word	-24
	.word	4
	.word	_Label_1457
	.word	-28
	.word	4
	.word	_Label_1458
	.word	-9
	.word	1
	.word	0
_Label_1451:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1458:
	.byte	'C'
	.ascii	"_temp_1444\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_1462 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1462 [entry ] into _temp_1463
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1461 = *_temp_1463  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1460 = _temp_1461 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1460) then goto _Label_1464
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1464
!   _temp_1459 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1465
_Label_1464:
!   _temp_1459 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1465:
!   ReturnResult: _temp_1459  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1466
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1468
	.word	12
	.word	4
	.word	_Label_1469
	.word	-16
	.word	4
	.word	_Label_1470
	.word	-20
	.word	4
	.word	_Label_1471
	.word	-24
	.word	4
	.word	_Label_1472
	.word	-28
	.word	4
	.word	_Label_1473
	.word	-9
	.word	1
	.word	0
_Label_1466:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1467:
	.ascii	"Pself\0"
	.align
_Label_1468:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1473:
	.byte	'C'
	.ascii	"_temp_1459\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_1477 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1477 [entry ] into _temp_1478
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1476 = *_temp_1478  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1475 = _temp_1476 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1475) then goto _Label_1479
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1479
!   _temp_1474 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1480
_Label_1479:
!   _temp_1474 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1480:
!   ReturnResult: _temp_1474  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1481
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1483
	.word	12
	.word	4
	.word	_Label_1484
	.word	-16
	.word	4
	.word	_Label_1485
	.word	-20
	.word	4
	.word	_Label_1486
	.word	-24
	.word	4
	.word	_Label_1487
	.word	-28
	.word	4
	.word	_Label_1488
	.word	-9
	.word	1
	.word	0
_Label_1481:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1482:
	.ascii	"Pself\0"
	.align
_Label_1483:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1488:
	.byte	'C'
	.ascii	"_temp_1474\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0RE",r10
!   _temp_1492 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1492 [entry ] into _temp_1493
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1491 = *_temp_1493  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1490 = _temp_1491 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1490) then goto _Label_1494
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1494
!   _temp_1489 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1495
_Label_1494:
!   _temp_1489 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1495:
!   ReturnResult: _temp_1489  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1496
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1498
	.word	12
	.word	4
	.word	_Label_1499
	.word	-16
	.word	4
	.word	_Label_1500
	.word	-20
	.word	4
	.word	_Label_1501
	.word	-24
	.word	4
	.word	_Label_1502
	.word	-28
	.word	4
	.word	_Label_1503
	.word	-9
	.word	1
	.word	0
_Label_1496:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1497:
	.ascii	"Pself\0"
	.align
_Label_1498:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1503:
	.byte	'C'
	.ascii	"_temp_1489\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_1504 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1504 [entry ] into _temp_1505
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1508 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1508 [entry ] into _temp_1509
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1507 = *_temp_1509  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1506 = _temp_1507 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1505 = _temp_1506  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1510
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1512
	.word	12
	.word	4
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-32
	.word	4
	.word	0
_Label_1510:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1511:
	.ascii	"Pself\0"
	.align
_Label_1512:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_1519 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1519 [entry ] into _temp_1520
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1523 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1523 [entry ] into _temp_1524
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1522 = *_temp_1524  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1521 = _temp_1522 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1520 = _temp_1521  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1525
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	12
	.word	4
	.word	_Label_1528
	.word	-12
	.word	4
	.word	_Label_1529
	.word	-16
	.word	4
	.word	_Label_1530
	.word	-20
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-28
	.word	4
	.word	_Label_1533
	.word	-32
	.word	4
	.word	0
_Label_1525:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_1534 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1534 [entry ] into _temp_1535
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1538 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1538 [entry ] into _temp_1539
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1537 = *_temp_1539  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1536 = _temp_1537 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1535 = _temp_1536  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1540
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1542
	.word	12
	.word	4
	.word	_Label_1543
	.word	-12
	.word	4
	.word	_Label_1544
	.word	-16
	.word	4
	.word	_Label_1545
	.word	-20
	.word	4
	.word	_Label_1546
	.word	-24
	.word	4
	.word	_Label_1547
	.word	-28
	.word	4
	.word	_Label_1548
	.word	-32
	.word	4
	.word	0
_Label_1540:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1541:
	.ascii	"Pself\0"
	.align
_Label_1542:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_1549 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1549 [entry ] into _temp_1550
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1553 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1553 [entry ] into _temp_1554
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1552 = *_temp_1554  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1551 = _temp_1552 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1550 = _temp_1551  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1555
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1557
	.word	12
	.word	4
	.word	_Label_1558
	.word	-12
	.word	4
	.word	_Label_1559
	.word	-16
	.word	4
	.word	_Label_1560
	.word	-20
	.word	4
	.word	_Label_1561
	.word	-24
	.word	4
	.word	_Label_1562
	.word	-28
	.word	4
	.word	_Label_1563
	.word	-32
	.word	4
	.word	0
_Label_1555:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1556:
	.ascii	"Pself\0"
	.align
_Label_1557:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_1564 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1564 [entry ] into _temp_1565
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1568 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1568 [entry ] into _temp_1569
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1567 = *_temp_1569  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1566 = _temp_1567 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1565 = _temp_1566  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1570
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1572
	.word	12
	.word	4
	.word	_Label_1573
	.word	-12
	.word	4
	.word	_Label_1574
	.word	-16
	.word	4
	.word	_Label_1575
	.word	-20
	.word	4
	.word	_Label_1576
	.word	-24
	.word	4
	.word	_Label_1577
	.word	-28
	.word	4
	.word	_Label_1578
	.word	-32
	.word	4
	.word	0
_Label_1570:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1571:
	.ascii	"Pself\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1832:
	push	r0
	sub	r1,1,r1
	bne	_Label_1832
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_1579 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1579 [entry ] into _temp_1580
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1583 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1583 [entry ] into _temp_1584
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1582 = *_temp_1584  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1581 = _temp_1582 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1580 = _temp_1581  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1585
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1587
	.word	12
	.word	4
	.word	_Label_1588
	.word	-12
	.word	4
	.word	_Label_1589
	.word	-16
	.word	4
	.word	_Label_1590
	.word	-20
	.word	4
	.word	_Label_1591
	.word	-24
	.word	4
	.word	_Label_1592
	.word	-28
	.word	4
	.word	_Label_1593
	.word	-32
	.word	4
	.word	0
_Label_1585:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1586:
	.ascii	"Pself\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1833:
	push	r0
	sub	r1,1,r1
	bne	_Label_1833
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_1594 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1594 [entry ] into _temp_1595
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1598 [entry ] into _temp_1599
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1597 = *_temp_1599  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1596 = _temp_1597 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1595 = _temp_1596  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1600
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1602
	.word	12
	.word	4
	.word	_Label_1603
	.word	-12
	.word	4
	.word	_Label_1604
	.word	-16
	.word	4
	.word	_Label_1605
	.word	-20
	.word	4
	.word	_Label_1606
	.word	-24
	.word	4
	.word	_Label_1607
	.word	-28
	.word	4
	.word	_Label_1608
	.word	-32
	.word	4
	.word	0
_Label_1600:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1601:
	.ascii	"Pself\0"
	.align
_Label_1602:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   _temp_1609 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1609 [entry ] into _temp_1610
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1613 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1613 [entry ] into _temp_1614
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1612 = *_temp_1614  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1611 = _temp_1612 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1610 = _temp_1611  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1615
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1617
	.word	12
	.word	4
	.word	_Label_1618
	.word	-12
	.word	4
	.word	_Label_1619
	.word	-16
	.word	4
	.word	_Label_1620
	.word	-20
	.word	4
	.word	_Label_1621
	.word	-24
	.word	4
	.word	_Label_1622
	.word	-28
	.word	4
	.word	_Label_1623
	.word	-32
	.word	4
	.word	0
_Label_1615:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1616:
	.ascii	"Pself\0"
	.align
_Label_1617:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	1398,r13		! source line 1398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1625 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1625 [0 ] into _temp_1626
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1624 = _temp_1626		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1627 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1627  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1628
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	-12
	.word	4
	.word	_Label_1631
	.word	-16
	.word	4
	.word	_Label_1632
	.word	-20
	.word	4
	.word	_Label_1633
	.word	-24
	.word	4
	.word	0
_Label_1628:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1634
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1634
	jmp	_Label_1635
_Label_1634:
! THEN...
	mov	1425,r13		! source line 1425
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1636
_Label_1635:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1638		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1638
!	jmp	_Label_1637
_Label_1637:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1638:
! END IF...
_Label_1636:
! ASSIGNMENT STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0WH",r10
_Label_1639:
!	jmp	_Label_1640
_Label_1640:
	mov	1433,r13		! source line 1433
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1643		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1643
!	jmp	_Label_1642
_Label_1642:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1644 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1643:
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1648) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1647  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1647 then goto _Label_1646 else goto _Label_1645
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1645
	jmp	_Label_1646
_Label_1645:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1649 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1646:
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1651) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1650  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1650 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0WH",r10
_Label_1652:
!   if offset >= 8192 then goto _Label_1654		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1654
!	jmp	_Label_1653
_Label_1653:
	mov	1444,r13		! source line 1444
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1655 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1655  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1657		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1657
!	jmp	_Label_1656
_Label_1656:
! THEN...
	mov	1453,r13		! source line 1453
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1657:
! END WHILE...
	jmp	_Label_1652
_Label_1654:
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1639
_Label_1641:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1658
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1660
	.word	12
	.word	4
	.word	_Label_1661
	.word	16
	.word	4
	.word	_Label_1662
	.word	20
	.word	4
	.word	_Label_1663
	.word	-9
	.word	1
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-10
	.word	1
	.word	_Label_1669
	.word	-32
	.word	4
	.word	_Label_1670
	.word	-36
	.word	4
	.word	_Label_1671
	.word	-40
	.word	4
	.word	_Label_1672
	.word	-44
	.word	4
	.word	_Label_1673
	.word	-48
	.word	4
	.word	0
_Label_1658:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1659:
	.ascii	"Pself\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1663:
	.byte	'C'
	.ascii	"_temp_1655\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1668:
	.byte	'C'
	.ascii	"_temp_1647\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1670:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1671:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1674
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1674
	jmp	_Label_1675
_Label_1674:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1676
_Label_1675:
! ELSE...
	mov	1476,r13		! source line 1476
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1678		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1678
!	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1678:
! END IF...
_Label_1676:
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0WH",r10
_Label_1679:
!	jmp	_Label_1680
_Label_1680:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1685		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1685
	jmp	_Label_1682
_Label_1685:
	mov	1483,r13		! source line 1483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1687) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1686  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1686 then goto _Label_1684 else goto _Label_1682
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1682
	jmp	_Label_1684
_Label_1684:
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1689) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1688  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1688 then goto _Label_1683 else goto _Label_1682
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1682
	jmp	_Label_1683
_Label_1682:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1683:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1691) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1690  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1690 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0WH",r10
_Label_1692:
!   if offset >= 8192 then goto _Label_1694		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1694
!	jmp	_Label_1693
_Label_1693:
	mov	1488,r13		! source line 1488
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1695 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1695  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1697		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1697
!	jmp	_Label_1696
_Label_1696:
! THEN...
	mov	1495,r13		! source line 1495
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1697:
! END WHILE...
	jmp	_Label_1692
_Label_1694:
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1679
_Label_1681:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1698
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1700
	.word	12
	.word	4
	.word	_Label_1701
	.word	16
	.word	4
	.word	_Label_1702
	.word	20
	.word	4
	.word	_Label_1703
	.word	-9
	.word	1
	.word	_Label_1704
	.word	-16
	.word	4
	.word	_Label_1705
	.word	-20
	.word	4
	.word	_Label_1706
	.word	-24
	.word	4
	.word	_Label_1707
	.word	-10
	.word	1
	.word	_Label_1708
	.word	-28
	.word	4
	.word	_Label_1709
	.word	-11
	.word	1
	.word	_Label_1710
	.word	-32
	.word	4
	.word	_Label_1711
	.word	-36
	.word	4
	.word	_Label_1712
	.word	-40
	.word	4
	.word	_Label_1713
	.word	-44
	.word	4
	.word	0
_Label_1698:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1699:
	.ascii	"Pself\0"
	.align
_Label_1700:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1701:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1702:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1703:
	.byte	'C'
	.ascii	"_temp_1695\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1707:
	.byte	'C'
	.ascii	"_temp_1688\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1709:
	.byte	'C'
	.ascii	"_temp_1686\0"
	.align
_Label_1710:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1712:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1713:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
	mov	1529,r13		! source line 1529
	mov	"\0\0SE",r10
!   _temp_1717 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1718) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1717  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1716  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1716 >= 4 then goto _Label_1715		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1715
!	jmp	_Label_1714
_Label_1714:
! THEN...
	mov	1532,r13		! source line 1532
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1715:
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1720		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1720
!	jmp	_Label_1719
_Label_1719:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1720:
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0RE",r10
	mov	1542,r13		! source line 1542
	mov	"\0\0SE",r10
!   _temp_1723 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1722 = _temp_1723 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1724 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1725) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1722  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1724  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1721  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1721  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1726
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1728
	.word	12
	.word	4
	.word	_Label_1729
	.word	16
	.word	4
	.word	_Label_1730
	.word	20
	.word	4
	.word	_Label_1731
	.word	-12
	.word	4
	.word	_Label_1732
	.word	-16
	.word	4
	.word	_Label_1733
	.word	-20
	.word	4
	.word	_Label_1734
	.word	-24
	.word	4
	.word	_Label_1735
	.word	-28
	.word	4
	.word	_Label_1736
	.word	-32
	.word	4
	.word	_Label_1737
	.word	-36
	.word	4
	.word	_Label_1738
	.word	-40
	.word	4
	.word	_Label_1739
	.word	-44
	.word	4
	.word	0
_Label_1726:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1727:
	.ascii	"Pself\0"
	.align
_Label_1728:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1729:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1730:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1739:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
