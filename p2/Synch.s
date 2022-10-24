! Name of package being compiled: Synch
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
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore2
	.export	_Method_P_Synch_Semaphore2_1
	.export	_Method_P_Synch_Semaphore2_2
	.export	_Method_P_Synch_Semaphore2_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.align
! String constants
_StringConst_11:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_10:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_9:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_8:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_7:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_6:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_4:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
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
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0x9e552d49,r4		! myHashVal = -1638585015
	cmp	r3,r4
	be	_Label_12
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
_Label_12:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_13
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_13
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_13
_Label_13:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_14
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_14:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_15
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_15:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_220:
	push	r0
	sub	r1,1,r1
	bne	_Label_220
	mov	33,r13		! source line 33
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_17		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_17
!	jmp	_Label_16
_Label_16:
! THEN...
	mov	35,r13		! source line 35
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_18 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_18  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_17:
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
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
	mov	38,r13		! source line 38
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_20
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_21
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_22
	.word	12
	.word	4
	.word	_Label_23
	.word	-12
	.word	4
	.word	_Label_24
	.word	-16
	.word	4
	.word	0
_Label_20:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_21:
	.ascii	"Pself\0"
	.align
_Label_22:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_24:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_221:
	push	r0
	sub	r1,1,r1
	bne	_Label_221
	mov	43,r13		! source line 43
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_26		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_26
!	jmp	_Label_25
_Label_25:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_27 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_27  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_26:
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
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
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_29		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_29
!	jmp	_Label_28
_Label_28:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_30 = &waitingThreads
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
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_31 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_31 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_32 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
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
_Label_29:
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_33
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_34
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_35
	.word	-12
	.word	4
	.word	_Label_36
	.word	-16
	.word	4
	.word	_Label_37
	.word	-20
	.word	4
	.word	_Label_38
	.word	-24
	.word	4
	.word	_Label_39
	.word	-28
	.word	4
	.word	_Label_40
	.word	-32
	.word	4
	.word	0
_Label_33:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_34:
	.ascii	"Pself\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_39:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_40:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_222:
	push	r0
	sub	r1,1,r1
	bne	_Label_222
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_42		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_42
!	jmp	_Label_41
_Label_41:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_43 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_43  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_42:
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
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
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_45		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_45
!	jmp	_Label_44
_Label_44:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_46 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
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
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_45:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_47
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_48
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_49
	.word	-12
	.word	4
	.word	_Label_50
	.word	-16
	.word	4
	.word	_Label_51
	.word	-20
	.word	4
	.word	0
_Label_47:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_48:
	.ascii	"Pself\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_51:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Semaphore2  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore2:
	.word	_Label_52
	jmp	_Method_P_Synch_Semaphore2_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore2_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore2_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_52:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_53
	.word	_sourceFileName
	.word	16		! line number
	.word	60		! size of instances, in bytes
	.word	_P_Synch_Semaphore2
	.word	_P_System_Object
	.word	0
_Label_53:
	.ascii	"Semaphore2\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore2_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore2_1,r1
	push	r1
	mov	8,r1
_Label_223:
	push	r0
	sub	r1,1,r1
	bne	_Label_223
	mov	105,r13		! source line 105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_55		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_55
!	jmp	_Label_54
_Label_54:
! THEN...
	mov	107,r13		! source line 107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_56 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_56  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_55:
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: delay = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   delay = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mutex = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mutex = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_60 = &delay
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_61 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0SE",r10
!   _temp_62 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Lock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore2_1:
	.word	_sourceFileName
	.word	_Label_63
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_64
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_65
	.word	12
	.word	4
	.word	_Label_66
	.word	-12
	.word	4
	.word	_Label_67
	.word	-16
	.word	4
	.word	_Label_68
	.word	-20
	.word	4
	.word	_Label_69
	.word	-24
	.word	4
	.word	_Label_70
	.word	-28
	.word	4
	.word	_Label_71
	.word	-32
	.word	4
	.word	_Label_72
	.word	-36
	.word	4
	.word	0
_Label_63:
	.ascii	"Semaphore2"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_64:
	.ascii	"Pself\0"
	.align
_Label_65:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore2_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore2_2,r1
	push	r1
	mov	11,r1
_Label_224:
	push	r0
	sub	r1,1,r1
	bne	_Label_224
	mov	122,r13		! source line 122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_74		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_74
!	jmp	_Label_73
_Label_73:
! THEN...
	mov	128,r13		! source line 128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_75 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_74:
! SEND STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0SE",r10
!   _temp_76 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
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
	mov	131,r13		! source line 131
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
	mov	132,r13		! source line 132
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_78		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_78
!	jmp	_Label_77
_Label_77:
! THEN...
	mov	133,r13		! source line 133
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_79 = &waitingThreads
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_80 = t + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_80 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_81 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_82 = &delay
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_83
_Label_78:
! ELSE...
	mov	138,r13		! source line 138
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_84 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_83:
! ASSIGNMENT STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore2_2:
	.word	_sourceFileName
	.word	_Label_85
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_86
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_87
	.word	-12
	.word	4
	.word	_Label_88
	.word	-16
	.word	4
	.word	_Label_89
	.word	-20
	.word	4
	.word	_Label_90
	.word	-24
	.word	4
	.word	_Label_91
	.word	-28
	.word	4
	.word	_Label_92
	.word	-32
	.word	4
	.word	_Label_93
	.word	-36
	.word	4
	.word	_Label_94
	.word	-40
	.word	4
	.word	_Label_95
	.word	-44
	.word	4
	.word	0
_Label_85:
	.ascii	"Semaphore2"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_86:
	.ascii	"Pself\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_94:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_95:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore2_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore2_3,r1
	push	r1
	mov	9,r1
_Label_225:
	push	r0
	sub	r1,1,r1
	bne	_Label_225
	mov	145,r13		! source line 145
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_97		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_97
!	jmp	_Label_96
_Label_96:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_98 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_98  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_97:
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_99 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
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
	mov	154,r13		! source line 154
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_101		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_101
!	jmp	_Label_100
_Label_100:
! THEN...
	mov	155,r13		! source line 155
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0SE",r10
!   _temp_102 = &waitingThreads
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
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
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0SE",r10
!   _temp_103 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_104 = &delay
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_101:
! SEND STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0SE",r10
!   _temp_105 = &mutex
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore2_3:
	.word	_sourceFileName
	.word	_Label_106
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_108
	.word	-12
	.word	4
	.word	_Label_109
	.word	-16
	.word	4
	.word	_Label_110
	.word	-20
	.word	4
	.word	_Label_111
	.word	-24
	.word	4
	.word	_Label_112
	.word	-28
	.word	4
	.word	_Label_113
	.word	-32
	.word	4
	.word	_Label_114
	.word	-36
	.word	4
	.word	0
_Label_106:
	.ascii	"Semaphore2"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_107:
	.ascii	"Pself\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_114:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_115
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_115:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_116
	.word	_sourceFileName
	.word	29		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_116:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_226:
	push	r0
	sub	r1,1,r1
	bne	_Label_226
	mov	184,r13		! source line 184
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
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
	mov	185,r13		! source line 185
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_118
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_120
	.word	-12
	.word	4
	.word	0
_Label_118:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_119:
	.ascii	"Pself\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_227:
	push	r0
	sub	r1,1,r1
	bne	_Label_227
	mov	190,r13		! source line 190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0IF",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_122		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_122
!	jmp	_Label_121
_Label_121:
! THEN...
	mov	194,r13		! source line 194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_123 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_123  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_122:
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_127		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_127
!   _temp_126 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_128
_Label_127:
!   _temp_126 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_128:
!   if _temp_126 then goto _Label_125 else goto _Label_124
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_124
	jmp	_Label_125
_Label_124:
! THEN...
	mov	198,r13		! source line 198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+16]
	jmp	_Label_129
_Label_125:
! ELSE...
	mov	200,r13		! source line 200
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
!   _temp_130 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
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
	mov	201,r13		! source line 201
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_129:
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_131
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_133
	.word	-16
	.word	4
	.word	_Label_134
	.word	-9
	.word	1
	.word	_Label_135
	.word	-20
	.word	4
	.word	_Label_136
	.word	-24
	.word	4
	.word	0
_Label_131:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_132:
	.ascii	"Pself\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_134:
	.byte	'C'
	.ascii	"_temp_126\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_136:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_228:
	push	r0
	sub	r1,1,r1
	bne	_Label_228
	mov	208,r13		! source line 208
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0IF",r10
!   if heldBy == _P_Thread_currentThread then goto _Label_138		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_138
!	jmp	_Label_137
_Label_137:
! THEN...
	mov	213,r13		! source line 213
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_139 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_138:
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_140 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	217,r13		! source line 217
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_142		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_142
!	jmp	_Label_141
_Label_141:
! THEN...
	mov	218,r13		! source line 218
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_143 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_143 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   _temp_144 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
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
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+16]
	jmp	_Label_145
_Label_142:
! ELSE...
	mov	222,r13		! source line 222
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! END IF...
_Label_145:
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_146
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_148
	.word	-12
	.word	4
	.word	_Label_149
	.word	-16
	.word	4
	.word	_Label_150
	.word	-20
	.word	4
	.word	_Label_151
	.word	-24
	.word	4
	.word	_Label_152
	.word	-28
	.word	4
	.word	_Label_153
	.word	-32
	.word	4
	.word	0
_Label_146:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_147:
	.ascii	"Pself\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_152:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_153:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_229:
	push	r0
	sub	r1,1,r1
	bne	_Label_229
	mov	229,r13		! source line 229
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0RE",r10
!   if heldBy != _P_Thread_currentThread then goto _Label_156		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_156
!	jmp	_Label_155
_Label_155:
!   _temp_154 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_157
_Label_156:
!   _temp_154 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_157:
!   ReturnResult: _temp_154  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_158
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_160
	.word	-9
	.word	1
	.word	0
_Label_158:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_159:
	.ascii	"Pself\0"
	.align
_Label_160:
	.byte	'C'
	.ascii	"_temp_154\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_161
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_161:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_162
	.word	_sourceFileName
	.word	41		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_162:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_230:
	push	r0
	sub	r1,1,r1
	bne	_Label_230
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
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
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_164
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_166
	.word	-12
	.word	4
	.word	0
_Label_164:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_165:
	.ascii	"Pself\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_231:
	push	r0
	sub	r1,1,r1
	bne	_Label_231
	mov	276,r13		! source line 276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0IF",r10
	mov	279,r13		! source line 279
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
!   Retrieve Result: targetName=_temp_169  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_169 then goto _Label_168 else goto _Label_167
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_167
	jmp	_Label_168
_Label_167:
! THEN...
	mov	280,r13		! source line 280
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_170 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_168:
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	283,r13		! source line 283
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
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_171 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
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
	mov	285,r13		! source line 285
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	286,r13		! source line 286
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
	mov	287,r13		! source line 287
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_172
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_174
	.word	12
	.word	4
	.word	_Label_175
	.word	-16
	.word	4
	.word	_Label_176
	.word	-20
	.word	4
	.word	_Label_177
	.word	-9
	.word	1
	.word	_Label_178
	.word	-24
	.word	4
	.word	0
_Label_172:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_173:
	.ascii	"Pself\0"
	.align
_Label_174:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_177:
	.byte	'C'
	.ascii	"_temp_169\0"
	.align
_Label_178:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_232:
	push	r0
	sub	r1,1,r1
	bne	_Label_232
	mov	292,r13		! source line 292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0IF",r10
	mov	296,r13		! source line 296
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
!   Retrieve Result: targetName=_temp_181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_181 then goto _Label_180 else goto _Label_179
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_179
	jmp	_Label_180
_Label_179:
! THEN...
	mov	297,r13		! source line 297
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_182 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_182  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_180:
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_183 = &waitingThreads
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
	mov	301,r13		! source line 301
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_185		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_185
!	jmp	_Label_184
_Label_184:
! THEN...
	mov	302,r13		! source line 302
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_186 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_187 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
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
_Label_185:
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_188
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_190
	.word	12
	.word	4
	.word	_Label_191
	.word	-16
	.word	4
	.word	_Label_192
	.word	-20
	.word	4
	.word	_Label_193
	.word	-24
	.word	4
	.word	_Label_194
	.word	-28
	.word	4
	.word	_Label_195
	.word	-9
	.word	1
	.word	_Label_196
	.word	-32
	.word	4
	.word	_Label_197
	.word	-36
	.word	4
	.word	0
_Label_188:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_189:
	.ascii	"Pself\0"
	.align
_Label_190:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_195:
	.byte	'C'
	.ascii	"_temp_181\0"
	.align
_Label_196:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_197:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_233:
	push	r0
	sub	r1,1,r1
	bne	_Label_233
	mov	310,r13		! source line 310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0IF",r10
	mov	314,r13		! source line 314
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
!   Retrieve Result: targetName=_temp_200  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_200 then goto _Label_199 else goto _Label_198
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_198
	jmp	_Label_199
_Label_198:
! THEN...
	mov	315,r13		! source line 315
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_201 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_199:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0WH",r10
_Label_202:
!	jmp	_Label_203
_Label_203:
	mov	318,r13		! source line 318
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
	mov	319,r13		! source line 319
	mov	"\0\0SE",r10
!   _temp_205 = &waitingThreads
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
	mov	320,r13		! source line 320
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_206
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_206
	jmp	_Label_207
_Label_206:
! THEN...
	mov	321,r13		! source line 321
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0BR",r10
	jmp	_Label_204
! END IF...
_Label_207:
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_208 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_208 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0SE",r10
!   _temp_209 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
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
	jmp	_Label_202
_Label_204:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_210
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_212
	.word	12
	.word	4
	.word	_Label_213
	.word	-16
	.word	4
	.word	_Label_214
	.word	-20
	.word	4
	.word	_Label_215
	.word	-24
	.word	4
	.word	_Label_216
	.word	-28
	.word	4
	.word	_Label_217
	.word	-9
	.word	1
	.word	_Label_218
	.word	-32
	.word	4
	.word	_Label_219
	.word	-36
	.word	4
	.word	0
_Label_210:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_211:
	.ascii	"Pself\0"
	.align
_Label_212:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_217:
	.byte	'C'
	.ascii	"_temp_200\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"t\0"
	.align
