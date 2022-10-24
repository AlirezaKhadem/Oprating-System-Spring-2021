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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_200:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_199:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_198:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_197:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_196:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_192:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_190:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_189:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_188:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_187:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_186:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_185:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_184:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_183:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_182:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_181:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_180:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_179:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_178:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_177:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_176:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_175:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_174:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_173:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_172:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_165:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_164:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_163:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_162:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_161:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_160:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_159:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_158:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_157:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_138:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_137:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_131:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_130:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_128:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_127:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_122:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_120:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_119:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_118:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_116:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_115:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_112:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_111:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_108:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_107:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"thread-"
	.align
_StringConst_103:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_101:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_99:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_93:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_91:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_90:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_89:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_87:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_86:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_85:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_82:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_81:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_80:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_78:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_70:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_67:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_66:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_64:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_63:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_61:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_58:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_57:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_54:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_53:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_48:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_47:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_45:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_44:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"Handle_Sys_Join invoked! \n"
	.align
_StringConst_42:
	.word	26			! length
	.ascii	"Handle_Sys_Fork invoked! \n"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_38:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_13:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_12:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_11:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_10:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_9:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_6:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_3:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_1:
	.word	18			! length
	.ascii	"UserProgramExample"
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
	set	0x8327fb64,r4		! myHashVal = -2094531740
	cmp	r3,r4
	be	_Label_214
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
_Label_214:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_215
_Label_215:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0AS",r10
	mov	12,r13		! source line 12
	mov	"\0\0SE",r10
!   _temp_216 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thraed_pointer  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_217 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (thraed_pointer) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_217  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0SE",r10
!   _temp_218 = _function_213_UserProcessExample
	set	_function_213_UserProcessExample,r1
	store	r1,[r14+-12]
!   if intIsZero (thraed_pointer) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_219
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_220
	.word	-12
	.word	4
	.word	_Label_221
	.word	-16
	.word	4
	.word	_Label_222
	.word	-20
	.word	4
	.word	_Label_223
	.word	-24
	.word	4
	.word	0
_Label_219:
	.ascii	"InitFirstProcess\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_223:
	.byte	'P'
	.ascii	"thraed_pointer\0"
	.align
! 
! ===============  FUNCTION UserProcessExample  ===============
! 
_function_213_UserProcessExample:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_UserProcessExample,r1
	push	r1
	mov	24,r1
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	17,r13		! source line 17
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_224 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=processControlBlock  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_225 = processControlBlock + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_225 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_226 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_226 = processControlBlock  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_227 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-56]
!   _temp_228 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
	mov	31,r13		! source line 31
	mov	"\0\0SE",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = processControlBlock + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_229 = _temp_230		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserProgramCounter  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_231 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_232 [999 ] into _temp_233
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_233		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = processControlBlock + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   _temp_236 = _temp_235 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_234 = *_temp_236  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   initUserStackTop = _temp_234 * 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=prevStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   if intIsZero (processControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_237 = processControlBlock + 32
	load	[r14+-72],r1
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
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_238 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_238 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserProgramCounter  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Call the function
	mov	39,r13		! source line 39
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_UserProcessExample:
	.word	_sourceFileName
	.word	_Label_239
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_240
	.word	8
	.word	4
	.word	_Label_241
	.word	-12
	.word	4
	.word	_Label_242
	.word	-16
	.word	4
	.word	_Label_243
	.word	-20
	.word	4
	.word	_Label_244
	.word	-24
	.word	4
	.word	_Label_245
	.word	-28
	.word	4
	.word	_Label_246
	.word	-32
	.word	4
	.word	_Label_247
	.word	-36
	.word	4
	.word	_Label_248
	.word	-40
	.word	4
	.word	_Label_249
	.word	-44
	.word	4
	.word	_Label_250
	.word	-48
	.word	4
	.word	_Label_251
	.word	-52
	.word	4
	.word	_Label_252
	.word	-56
	.word	4
	.word	_Label_253
	.word	-60
	.word	4
	.word	_Label_254
	.word	-64
	.word	4
	.word	_Label_255
	.word	-68
	.word	4
	.word	_Label_256
	.word	-72
	.word	4
	.word	_Label_257
	.word	-76
	.word	4
	.word	_Label_258
	.word	-80
	.word	4
	.word	_Label_259
	.word	-84
	.word	4
	.word	_Label_260
	.word	-88
	.word	4
	.word	_Label_261
	.word	-92
	.word	4
	.word	0
_Label_239:
	.ascii	"UserProcessExample\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"processControlBlock\0"
	.align
_Label_257:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"initUserProgramCounter\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"prevStatus\0"
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
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	45,r13		! source line 45
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_262 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
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
	mov	55,r13		! source line 55
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
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2981:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2981
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0SE",r10
!   _temp_266 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_267 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_266  sizeInBytes=4
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
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   _temp_268 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_269 = _temp_268 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_269 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2982:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2982
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_271 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_272 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_271  sizeInBytes=4
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
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_273 = _function_212_IdleFunction
	set	_function_212_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_274 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_273  sizeInBytes=4
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
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	65,r13		! source line 65
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
	.word	_Label_275
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_276
	.word	-12
	.word	4
	.word	_Label_277
	.word	-16
	.word	4
	.word	_Label_278
	.word	-20
	.word	4
	.word	_Label_279
	.word	-24
	.word	4
	.word	_Label_280
	.word	-28
	.word	4
	.word	_Label_281
	.word	-32
	.word	4
	.word	_Label_282
	.word	-36
	.word	4
	.word	_Label_283
	.word	-40
	.word	4
	.word	_Label_284
	.word	-44
	.word	4
	.word	_Label_285
	.word	-48
	.word	4
	.word	_Label_286
	.word	-52
	.word	4
	.word	_Label_287
	.word	-56
	.word	4
	.word	_Label_288
	.word	-60
	.word	4
	.word	0
_Label_275:
	.ascii	"InitializeScheduler\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_212_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	70,r13		! source line 70
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0WH",r10
_Label_289:
!	jmp	_Label_290
_Label_290:
	mov	80,r13		! source line 80
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0IF",r10
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_294 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_292 else goto _Label_293
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_293
	jmp	_Label_292
_Label_292:
! THEN...
	mov	83,r13		! source line 83
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_295
_Label_293:
! ELSE...
	mov	85,r13		! source line 85
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	85,r13		! source line 85
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
_Label_295:
! END WHILE...
	jmp	_Label_289
_Label_291:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_IdleFunction:
	.word	_sourceFileName
	.word	_Label_296
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_297
	.word	8
	.word	4
	.word	_Label_298
	.word	-12
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	0
_Label_296:
	.ascii	"IdleFunction\0"
	.align
_Label_297:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_299:
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
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	92,r13		! source line 92
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	106,r13		! source line 106
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
	mov	108,r13		! source line 108
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_302 ) then goto _Label_301		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_301
!	jmp	_Label_300
_Label_300:
! THEN...
	mov	109,r13		! source line 109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_304 [0 ] into _temp_305
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
!   _temp_303 = _temp_305		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_301:
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_306 = 3  (sizeInBytes=4)
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
	mov	118,r13		! source line 118
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0WH",r10
_Label_307:
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_311 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_310  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_310 then goto _Label_309 else goto _Label_308
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_308
	jmp	_Label_309
_Label_308:
	mov	122,r13		! source line 122
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0AS",r10
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_312 = &_P_Kernel_threadsToBeDestroyed
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
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Kernel_threadManager
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
	jmp	_Label_307
_Label_309:
! IF STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_316 ) then goto _Label_315		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_315
!	jmp	_Label_314
_Label_314:
! THEN...
	mov	128,r13		! source line 128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_318 [0 ] into _temp_319
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
!   _temp_317 = _temp_319		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_321 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_320 = *_temp_321  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_320) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _temp_320 + 32
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
_Label_315:
! RETURN STATEMENT...
	mov	127,r13		! source line 127
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
	.word	_Label_323
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_324
	.word	8
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	_Label_328
	.word	-28
	.word	4
	.word	_Label_329
	.word	-32
	.word	4
	.word	_Label_330
	.word	-36
	.word	4
	.word	_Label_331
	.word	-40
	.word	4
	.word	_Label_332
	.word	-44
	.word	4
	.word	_Label_333
	.word	-48
	.word	4
	.word	_Label_334
	.word	-52
	.word	4
	.word	_Label_335
	.word	-9
	.word	1
	.word	_Label_336
	.word	-56
	.word	4
	.word	_Label_337
	.word	-60
	.word	4
	.word	_Label_338
	.word	-64
	.word	4
	.word	_Label_339
	.word	-68
	.word	4
	.word	_Label_340
	.word	-72
	.word	4
	.word	_Label_341
	.word	-76
	.word	4
	.word	_Label_342
	.word	-80
	.word	4
	.word	0
_Label_323:
	.ascii	"Run\0"
	.align
_Label_324:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_335:
	.byte	'C'
	.ascii	"_temp_310\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_341:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_342:
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
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	135,r13		! source line 135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_343 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_344 = _function_211_ThreadPrintShort
	set	_function_211_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_345 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_344  sizeInBytes=4
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
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	145,r13		! source line 145
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
	.word	_Label_346
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_347
	.word	-12
	.word	4
	.word	_Label_348
	.word	-16
	.word	4
	.word	_Label_349
	.word	-20
	.word	4
	.word	_Label_350
	.word	-24
	.word	4
	.word	0
_Label_346:
	.ascii	"PrintReadyList\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_350:
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	150,r13		! source line 150
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_351  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_353 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_352 = *_temp_353  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	164,r13		! source line 164
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_354 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	166,r13		! source line 166
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	166,r13		! source line 166
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
	.word	_Label_355
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_356
	.word	-12
	.word	4
	.word	_Label_357
	.word	-16
	.word	4
	.word	_Label_358
	.word	-20
	.word	4
	.word	_Label_359
	.word	-24
	.word	4
	.word	_Label_360
	.word	-28
	.word	4
	.word	_Label_361
	.word	-32
	.word	4
	.word	0
_Label_355:
	.ascii	"ThreadStartMain\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_360:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_361:
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	171,r13		! source line 171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_362 = &_P_Kernel_threadsToBeDestroyed
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
	mov	187,r13		! source line 187
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
!   _temp_363 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	189,r13		! source line 189
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	189,r13		! source line 189
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
	.word	_Label_364
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_365
	.word	-12
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	0
_Label_364:
	.ascii	"ThreadFinish\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_367:
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	194,r13		! source line 194
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_368 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_370		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!	jmp	_Label_369
_Label_369:
! THEN...
	mov	205,r13		! source line 205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_371 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_373 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_372 = *_temp_373  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_370:
! CALL STATEMENT...
!   _temp_374 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_375 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	212,r13		! source line 212
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
	.word	_Label_377
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_378
	.word	8
	.word	4
	.word	_Label_379
	.word	-12
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	_Label_386
	.word	-40
	.word	4
	.word	0
_Label_377:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_378:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_386:
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	217,r13		! source line 217
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_388		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_388
!	jmp	_Label_387
_Label_387:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_389
_Label_388:
! ELSE...
	mov	236,r13		! source line 236
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_389:
! RETURN STATEMENT...
	mov	239,r13		! source line 239
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
	.word	_Label_390
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	0
_Label_390:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_211_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	723,r13		! source line 723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_396		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_396
!   _temp_395 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_397
_Label_396:
!   _temp_395 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_397:
!   if _temp_395 then goto _Label_394 else goto _Label_393
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_393
	jmp	_Label_394
_Label_393:
! THEN...
	mov	732,r13		! source line 732
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_398 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_394:
! CALL STATEMENT...
!   _temp_399 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_400 = *_temp_401  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_402 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	738,r13		! source line 738
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_410 = *_temp_411  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_405
	cmp	r1,2
	be	_Label_406
	cmp	r1,3
	be	_Label_407
	cmp	r1,4
	be	_Label_408
	cmp	r1,5
	be	_Label_409
	jmp	_Label_403
! CASE 1...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 2...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 3...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 4...
_Label_408:
! CALL STATEMENT...
!   _temp_415 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 5...
_Label_409:
! CALL STATEMENT...
!   _temp_416 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0BR",r10
	jmp	_Label_404
! DEFAULT CASE...
_Label_403:
! CALL STATEMENT...
!   _temp_417 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	755,r13		! source line 755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_404:
! CALL STATEMENT...
!   _temp_418 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_419 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_420 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-16
	.word	4
	.word	_Label_424
	.word	-20
	.word	4
	.word	_Label_425
	.word	-24
	.word	4
	.word	_Label_426
	.word	-28
	.word	4
	.word	_Label_427
	.word	-32
	.word	4
	.word	_Label_428
	.word	-36
	.word	4
	.word	_Label_429
	.word	-40
	.word	4
	.word	_Label_430
	.word	-44
	.word	4
	.word	_Label_431
	.word	-48
	.word	4
	.word	_Label_432
	.word	-52
	.word	4
	.word	_Label_433
	.word	-56
	.word	4
	.word	_Label_434
	.word	-60
	.word	4
	.word	_Label_435
	.word	-64
	.word	4
	.word	_Label_436
	.word	-68
	.word	4
	.word	_Label_437
	.word	-72
	.word	4
	.word	_Label_438
	.word	-76
	.word	4
	.word	_Label_439
	.word	-9
	.word	1
	.word	_Label_440
	.word	-80
	.word	4
	.word	0
_Label_421:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_439:
	.byte	'C'
	.ascii	"_temp_395\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_210_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	1075,r13		! source line 1075
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_441 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_442
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	8
	.word	4
	.word	_Label_444
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_441\0"
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
	mov	1085,r13		! source line 1085
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_445 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1091,r13		! source line 1091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1091,r13		! source line 1091
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
	.word	_Label_446
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_447
	.word	8
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_446:
	.ascii	"ProcessFinish\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_445\0"
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	1588,r13		! source line 1588
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1600,r13		! source line 1600
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
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
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
	.word	_Label_449
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_449:
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
	mov	7,r1
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1606,r13		! source line 1606
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0IF",r10
!   _temp_453 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_454 = _temp_453 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_452 = *_temp_454  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_452 == 0 then goto _Label_451		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_451
!	jmp	_Label_450
_Label_450:
! THEN...
	mov	1621,r13		! source line 1621
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
!   _temp_456 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_457 = _temp_456 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_451:
! RETURN STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_458
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_459
	.word	-12
	.word	4
	.word	_Label_460
	.word	-16
	.word	4
	.word	_Label_461
	.word	-20
	.word	4
	.word	_Label_462
	.word	-24
	.word	4
	.word	_Label_463
	.word	-28
	.word	4
	.word	_Label_464
	.word	-32
	.word	4
	.word	0
_Label_458:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_452\0"
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
	mov	1628,r13		! source line 1628
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1637,r13		! source line 1637
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_465:
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1642,r13		! source line 1642
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_466 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
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
	.word	_Label_467
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_468
	.word	-12
	.word	4
	.word	0
_Label_467:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_466\0"
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
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1654,r13		! source line 1654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_469 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
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
	.word	_Label_470
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_469\0"
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
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	1666,r13		! source line 1666
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_472 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
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
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
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
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	1678,r13		! source line 1678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_475 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
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
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
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
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_478 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
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
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	1702,r13		! source line 1702
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_481 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
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
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1714,r13		! source line 1714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
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
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_209_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_487 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_488 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_492 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_491 = *_temp_492  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_491 == 0 then goto _Label_490		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	1737,r13		! source line 1737
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_494 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_493 = *_temp_494  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_493) then goto _runtimeErrorNullPointer
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
	jmp	_Label_495
_Label_490:
! ELSE...
	mov	1739,r13		! source line 1739
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_496 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_495:
! SEND STATEMENT...
	mov	1741,r13		! source line 1741
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
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_497
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_498
	.word	8
	.word	4
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	_Label_505
	.word	-36
	.word	4
	.word	0
_Label_497:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_498:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_493\0"
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
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_487\0"
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1752,r13		! source line 1752
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1773,r13		! source line 1773
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3004
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_506
_Label_3004:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_506
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_506
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_520,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_520:
	jmp	_Label_512	! 1:	
	jmp	_Label_519	! 2:	
	jmp	_Label_509	! 3:	
	jmp	_Label_508	! 4:	
	jmp	_Label_511	! 5:	
	jmp	_Label_510	! 6:	
	jmp	_Label_513	! 7:	
	jmp	_Label_514	! 8:	
	jmp	_Label_515	! 9:	
	jmp	_Label_516	! 10:	
	jmp	_Label_517	! 11:	
	jmp	_Label_518	! 12:	
! CASE 4...
_Label_508:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0RE",r10
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_521  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_509:
! CALL STATEMENT...
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_510:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_511:
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_512:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_513:
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_514:
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_515:
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
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
	mov	1791,r13		! source line 1791
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_516:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
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
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_517:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_518:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_519:
! CALL STATEMENT...
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_506:
! CALL STATEMENT...
!   _temp_529 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_530 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1806,r13		! source line 1806
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_507:
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
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
	.word	_Label_531
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_532
	.word	8
	.word	4
	.word	_Label_533
	.word	12
	.word	4
	.word	_Label_534
	.word	16
	.word	4
	.word	_Label_535
	.word	20
	.word	4
	.word	_Label_536
	.word	24
	.word	4
	.word	_Label_537
	.word	-12
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	_Label_540
	.word	-24
	.word	4
	.word	_Label_541
	.word	-28
	.word	4
	.word	_Label_542
	.word	-32
	.word	4
	.word	_Label_543
	.word	-36
	.word	4
	.word	_Label_544
	.word	-40
	.word	4
	.word	_Label_545
	.word	-44
	.word	4
	.word	_Label_546
	.word	-48
	.word	4
	.word	0
_Label_531:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_521\0"
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
	mov	3,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1813,r13		! source line 1813
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_547 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_548 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_549
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_550
	.word	8
	.word	4
	.word	_Label_551
	.word	-12
	.word	4
	.word	_Label_552
	.word	-16
	.word	4
	.word	0
_Label_549:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_547\0"
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
	mov	2,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_553 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1825,r13		! source line 1825
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_554
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_555
	.word	-12
	.word	4
	.word	0
_Label_554:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_553\0"
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
	mov	2,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_556 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_557
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_558
	.word	-12
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_556\0"
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
	mov	2,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_559 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_560
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_561
	.word	-12
	.word	4
	.word	0
_Label_560:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_559\0"
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
	mov	3,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1845,r13		! source line 1845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_562 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_563 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_564
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_565
	.word	8
	.word	4
	.word	_Label_566
	.word	-12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	0
_Label_564:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_562\0"
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
	mov	64,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1868,r13		! source line 1868
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=prevStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
	mov	1869,r13		! source line 1869
	mov	"\0\0SE",r10
!   _temp_568 = &kernelAddr
	add	r14,-140,r1
	store	r1,[r14+-112]
!   _temp_569 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_570 = *_temp_571  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_570) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _temp_570 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_568  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_569  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=prevStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0IF",r10
!   if prevStatus >= 0 then goto _Label_574		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_574
!	jmp	_Label_573
_Label_573:
! THEN...
	mov	1872,r13		! source line 1872
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_574:
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addressSpace = zeros  (sizeInBytes=92)
	add	r14,-236,r4
	mov	23,r3
_Label_3011:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3011
!   addressSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-236]
! SEND STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_576 = &addressSpace
	add	r14,-236,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_577 = &kernelAddr
	add	r14,-140,r1
	store	r1,[r14+-84]
!   _temp_578 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_577  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_579
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_579
	jmp	_Label_580
_Label_579:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_580:
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   _temp_581 = &addressSpace
	add	r14,-236,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_581  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserProgramCounter  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0IF",r10
!   if initUserProgramCounter >= 0 then goto _Label_583		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_583
!	jmp	_Label_582
_Label_582:
! THEN...
	mov	1885,r13		! source line 1885
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_583:
! SEND STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_585 = *_temp_586  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_585) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _temp_585 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_584 = _temp_587		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_588 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_584  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_590 = *_temp_591  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_590) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _temp_590 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_592 = addressSpace  (sizeInBytes=92)
	add	r14,-236,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3012:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3012
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_593 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   _temp_595 = &addressSpace
	add	r14,-236,r1
	store	r1,[r14+-28]
!   _temp_596 = _temp_595 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_594 = *_temp_596  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStackTop = _temp_594 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_597 [999 ] into _temp_598
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
!   initSystemStackTop = _temp_598		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   _temp_599 = &addressSpace
	add	r14,-236,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserProgramCounter  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+8]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_600
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_601
	.word	8
	.word	4
	.word	_Label_602
	.word	-12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-20
	.word	4
	.word	_Label_605
	.word	-24
	.word	4
	.word	_Label_606
	.word	-28
	.word	4
	.word	_Label_607
	.word	-32
	.word	4
	.word	_Label_608
	.word	-36
	.word	4
	.word	_Label_609
	.word	-40
	.word	4
	.word	_Label_610
	.word	-44
	.word	4
	.word	_Label_611
	.word	-48
	.word	4
	.word	_Label_612
	.word	-52
	.word	4
	.word	_Label_613
	.word	-56
	.word	4
	.word	_Label_614
	.word	-60
	.word	4
	.word	_Label_615
	.word	-64
	.word	4
	.word	_Label_616
	.word	-68
	.word	4
	.word	_Label_617
	.word	-72
	.word	4
	.word	_Label_618
	.word	-76
	.word	4
	.word	_Label_619
	.word	-80
	.word	4
	.word	_Label_620
	.word	-84
	.word	4
	.word	_Label_621
	.word	-88
	.word	4
	.word	_Label_622
	.word	-92
	.word	4
	.word	_Label_623
	.word	-96
	.word	4
	.word	_Label_624
	.word	-100
	.word	4
	.word	_Label_625
	.word	-104
	.word	4
	.word	_Label_626
	.word	-108
	.word	4
	.word	_Label_627
	.word	-112
	.word	4
	.word	_Label_628
	.word	-116
	.word	4
	.word	_Label_629
	.word	-140
	.word	24
	.word	_Label_630
	.word	-144
	.word	4
	.word	_Label_631
	.word	-236
	.word	92
	.word	_Label_632
	.word	-240
	.word	4
	.word	_Label_633
	.word	-244
	.word	4
	.word	_Label_634
	.word	-248
	.word	4
	.word	0
_Label_600:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_601:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"prevStatus\0"
	.align
_Label_629:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_631:
	.byte	'O'
	.ascii	"addressSpace\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"initUserProgramCounter\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
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
	mov	21,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1905,r13		! source line 1905
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_635 = &addressKernel
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_636 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_637 = *_temp_638  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_637) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_637 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_636  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=prevStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_640 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1914,r13		! source line 1914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_642 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_643 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_644 = &addressKernel
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_645
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_646
	.word	8
	.word	4
	.word	_Label_647
	.word	-12
	.word	4
	.word	_Label_648
	.word	-16
	.word	4
	.word	_Label_649
	.word	-20
	.word	4
	.word	_Label_650
	.word	-24
	.word	4
	.word	_Label_651
	.word	-28
	.word	4
	.word	_Label_652
	.word	-32
	.word	4
	.word	_Label_653
	.word	-36
	.word	4
	.word	_Label_654
	.word	-40
	.word	4
	.word	_Label_655
	.word	-44
	.word	4
	.word	_Label_656
	.word	-48
	.word	4
	.word	_Label_657
	.word	-52
	.word	4
	.word	_Label_658
	.word	-76
	.word	24
	.word	0
_Label_645:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_646:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"prevStatus\0"
	.align
_Label_658:
	.byte	'A'
	.ascii	"addressKernel\0"
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
	mov	21,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	1927,r13		! source line 1927
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
	mov	1934,r13		! source line 1934
	mov	"\0\0SE",r10
!   _temp_659 = &addressKernel
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_660 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_661 = *_temp_662  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_661) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_663 = _temp_661 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_659  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_660  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_664 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_666 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_667 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_668 = &addressKernel
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_669
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_670
	.word	8
	.word	4
	.word	_Label_671
	.word	-12
	.word	4
	.word	_Label_672
	.word	-16
	.word	4
	.word	_Label_673
	.word	-20
	.word	4
	.word	_Label_674
	.word	-24
	.word	4
	.word	_Label_675
	.word	-28
	.word	4
	.word	_Label_676
	.word	-32
	.word	4
	.word	_Label_677
	.word	-36
	.word	4
	.word	_Label_678
	.word	-40
	.word	4
	.word	_Label_679
	.word	-44
	.word	4
	.word	_Label_680
	.word	-48
	.word	4
	.word	_Label_681
	.word	-52
	.word	4
	.word	_Label_682
	.word	-76
	.word	24
	.word	0
_Label_669:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_670:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_681:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_682:
	.byte	'A'
	.ascii	"addressKernel\0"
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
	mov	6,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1949,r13		! source line 1949
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_683 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_684 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_685 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_686 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_687 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_688
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_689
	.word	8
	.word	4
	.word	_Label_690
	.word	12
	.word	4
	.word	_Label_691
	.word	16
	.word	4
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-24
	.word	4
	.word	_Label_696
	.word	-28
	.word	4
	.word	0
_Label_688:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_690:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_683\0"
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
	mov	6,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1970,r13		! source line 1970
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_697 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_698 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_699 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_701 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_702
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_703
	.word	8
	.word	4
	.word	_Label_704
	.word	12
	.word	4
	.word	_Label_705
	.word	16
	.word	4
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	0
_Label_702:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_705:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_697\0"
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
	mov	4,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1991,r13		! source line 1991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_711 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_713 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_714
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_715
	.word	8
	.word	4
	.word	_Label_716
	.word	12
	.word	4
	.word	_Label_717
	.word	-12
	.word	4
	.word	_Label_718
	.word	-16
	.word	4
	.word	_Label_719
	.word	-20
	.word	4
	.word	0
_Label_714:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_711\0"
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
	mov	3,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	2006,r13		! source line 2006
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_720 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_721 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_722
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_723
	.word	8
	.word	4
	.word	_Label_724
	.word	-12
	.word	4
	.word	_Label_725
	.word	-16
	.word	4
	.word	0
_Label_722:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_208_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	2602,r13		! source line 2602
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_726 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_726  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   _temp_727 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_727) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_729 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_729) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_728 = *_temp_729  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_727 = _temp_728  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   _temp_730 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_732 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_731 = *_temp_732  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_730 = _temp_731  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   _temp_733 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_735) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_734 = *_temp_735  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_733 = _temp_734  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_736
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_737
	.word	8
	.word	4
	.word	_Label_738
	.word	12
	.word	4
	.word	_Label_739
	.word	-16
	.word	4
	.word	_Label_740
	.word	-9
	.word	1
	.word	_Label_741
	.word	-20
	.word	4
	.word	_Label_742
	.word	-24
	.word	4
	.word	_Label_743
	.word	-10
	.word	1
	.word	_Label_744
	.word	-28
	.word	4
	.word	_Label_745
	.word	-32
	.word	4
	.word	_Label_746
	.word	-11
	.word	1
	.word	_Label_747
	.word	-36
	.word	4
	.word	_Label_748
	.word	-12
	.word	1
	.word	_Label_749
	.word	-40
	.word	4
	.word	_Label_750
	.word	-44
	.word	4
	.word	0
_Label_736:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_737:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_738:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_740:
	.byte	'C'
	.ascii	"_temp_734\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_743:
	.byte	'C'
	.ascii	"_temp_731\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_746:
	.byte	'C'
	.ascii	"_temp_728\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_748:
	.byte	'C'
	.ascii	"_temp_726\0"
	.align
_Label_749:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_750:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_207_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_printFCB,r1
	push	r1
	mov	3,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	2612,r13		! source line 2612
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_752 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_751 = *_temp_752  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2613,r13		! source line 2613
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2614,r13		! source line 2614
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_printFCB:
	.word	_sourceFileName
	.word	_Label_753
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_754
	.word	8
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	0
_Label_753:
	.ascii	"printFCB\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_206_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_printOpen,r1
	push	r1
	mov	4,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	2617,r13		! source line 2617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_757 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_758 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2619,r13		! source line 2619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_759 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2620,r13		! source line 2620
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_printOpen:
	.word	_sourceFileName
	.word	_Label_760
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_761
	.word	8
	.word	4
	.word	_Label_762
	.word	-12
	.word	4
	.word	_Label_763
	.word	-16
	.word	4
	.word	_Label_764
	.word	-20
	.word	4
	.word	0
_Label_760:
	.ascii	"printOpen\0"
	.align
_Label_761:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_765
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_765:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_766
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_766:
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	268,r13		! source line 268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_768		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_768
!	jmp	_Label_767
_Label_767:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_769 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	270,r13		! source line 270
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_768:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
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
	mov	273,r13		! source line 273
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
	.word	_Label_771
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_773
	.word	12
	.word	4
	.word	_Label_774
	.word	-12
	.word	4
	.word	_Label_775
	.word	-16
	.word	4
	.word	0
_Label_771:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_772:
	.ascii	"Pself\0"
	.align
_Label_773:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_769\0"
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	278,r13		! source line 278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_777		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_777
!	jmp	_Label_776
_Label_776:
! THEN...
	mov	284,r13		! source line 284
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_778 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	284,r13		! source line 284
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_777:
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
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
	mov	287,r13		! source line 287
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_780		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_780
!	jmp	_Label_779
_Label_779:
! THEN...
	mov	288,r13		! source line 288
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0AS",r10
	mov	288,r13		! source line 288
	mov	"\0\0SE",r10
!   _temp_781 = &waitingThreads
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
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_782 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_783 = &_P_Kernel_readyList
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
_Label_780:
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	292,r13		! source line 292
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
	.word	_Label_784
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_786
	.word	-12
	.word	4
	.word	_Label_787
	.word	-16
	.word	4
	.word	_Label_788
	.word	-20
	.word	4
	.word	_Label_789
	.word	-24
	.word	4
	.word	_Label_790
	.word	-28
	.word	4
	.word	_Label_791
	.word	-32
	.word	4
	.word	0
_Label_784:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_785:
	.ascii	"Pself\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_791:
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	297,r13		! source line 297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	300,r13		! source line 300
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_793		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_793
!	jmp	_Label_792
_Label_792:
! THEN...
	mov	302,r13		! source line 302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	302,r13		! source line 302
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
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
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_796		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_796
!	jmp	_Label_795
_Label_795:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_797 = &waitingThreads
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
	mov	307,r13		! source line 307
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
_Label_796:
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	309,r13		! source line 309
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
	.word	_Label_798
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_800
	.word	-12
	.word	4
	.word	_Label_801
	.word	-16
	.word	4
	.word	_Label_802
	.word	-20
	.word	4
	.word	0
_Label_798:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_799:
	.ascii	"Pself\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_803
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_803:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_804
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_804:
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
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
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
	mov	333,r13		! source line 333
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
	.word	_Label_806
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_808
	.word	-12
	.word	4
	.word	0
_Label_806:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_807:
	.ascii	"Pself\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_805\0"
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	338,r13		! source line 338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_810		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_810
!	jmp	_Label_809
_Label_809:
! THEN...
	mov	342,r13		! source line 342
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_811 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	342,r13		! source line 342
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_810:
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_815		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_815
!   _temp_814 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_816
_Label_815:
!   _temp_814 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_816:
!   if _temp_814 then goto _Label_813 else goto _Label_812
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_812
	jmp	_Label_813
_Label_812:
! THEN...
	mov	346,r13		! source line 346
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_817
_Label_813:
! ELSE...
	mov	348,r13		! source line 348
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0SE",r10
!   _temp_818 = &waitingThreads
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
	mov	349,r13		! source line 349
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
_Label_817:
! ASSIGNMENT STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	351,r13		! source line 351
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
	.word	_Label_819
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_821
	.word	-16
	.word	4
	.word	_Label_822
	.word	-9
	.word	1
	.word	_Label_823
	.word	-20
	.word	4
	.word	_Label_824
	.word	-24
	.word	4
	.word	0
_Label_819:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_820:
	.ascii	"Pself\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_822:
	.byte	'C'
	.ascii	"_temp_814\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_824:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	356,r13		! source line 356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_826		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_826
!	jmp	_Label_825
_Label_825:
! THEN...
	mov	361,r13		! source line 361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_827 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	361,r13		! source line 361
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_826:
! ASSIGNMENT STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0AS",r10
	mov	364,r13		! source line 364
	mov	"\0\0SE",r10
!   _temp_828 = &waitingThreads
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
	mov	365,r13		! source line 365
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_830		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_830
!	jmp	_Label_829
_Label_829:
! THEN...
	mov	366,r13		! source line 366
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_831 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0SE",r10
!   _temp_832 = &_P_Kernel_readyList
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
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_833
_Label_830:
! ELSE...
	mov	370,r13		! source line 370
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_833:
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	372,r13		! source line 372
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	372,r13		! source line 372
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
	.word	_Label_834
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	-12
	.word	4
	.word	_Label_837
	.word	-16
	.word	4
	.word	_Label_838
	.word	-20
	.word	4
	.word	_Label_839
	.word	-24
	.word	4
	.word	_Label_840
	.word	-28
	.word	4
	.word	_Label_841
	.word	-32
	.word	4
	.word	0
_Label_834:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_841:
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	377,r13		! source line 377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_844		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_844
!	jmp	_Label_843
_Label_843:
!   _temp_842 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_845
_Label_844:
!   _temp_842 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_845:
!   ReturnResult: _temp_842  (sizeInBytes=1)
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
	.word	_Label_846
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_848
	.word	-9
	.word	1
	.word	0
_Label_846:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_847:
	.ascii	"Pself\0"
	.align
_Label_848:
	.byte	'C'
	.ascii	"_temp_842\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_849
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_849:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_850
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_850:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	418,r13		! source line 418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	419,r13		! source line 419
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
	mov	419,r13		! source line 419
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
	.word	_Label_852
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_854
	.word	-12
	.word	4
	.word	0
_Label_852:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_853:
	.ascii	"Pself\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_851\0"
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	424,r13		! source line 424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
	mov	427,r13		! source line 427
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
!   Retrieve Result: targetName=_temp_857  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_857 then goto _Label_856 else goto _Label_855
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_855
	jmp	_Label_856
_Label_855:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_858 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_858  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	428,r13		! source line 428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_856:
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	431,r13		! source line 431
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
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_859 = &waitingThreads
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
	mov	433,r13		! source line 433
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
	mov	434,r13		! source line 434
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
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	435,r13		! source line 435
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
	.word	_Label_860
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_862
	.word	12
	.word	4
	.word	_Label_863
	.word	-16
	.word	4
	.word	_Label_864
	.word	-20
	.word	4
	.word	_Label_865
	.word	-9
	.word	1
	.word	_Label_866
	.word	-24
	.word	4
	.word	0
_Label_860:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_861:
	.ascii	"Pself\0"
	.align
_Label_862:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_865:
	.byte	'C'
	.ascii	"_temp_857\0"
	.align
_Label_866:
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	440,r13		! source line 440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0IF",r10
	mov	444,r13		! source line 444
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
!   Retrieve Result: targetName=_temp_869  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_869 then goto _Label_868 else goto _Label_867
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_867
	jmp	_Label_868
_Label_867:
! THEN...
	mov	445,r13		! source line 445
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_870 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	445,r13		! source line 445
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_868:
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
	mov	448,r13		! source line 448
	mov	"\0\0SE",r10
!   _temp_871 = &waitingThreads
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
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_873		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_873
!	jmp	_Label_872
_Label_872:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_874 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_874 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_875 = &_P_Kernel_readyList
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
_Label_873:
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	453,r13		! source line 453
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
	.word	_Label_876
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_878
	.word	12
	.word	4
	.word	_Label_879
	.word	-16
	.word	4
	.word	_Label_880
	.word	-20
	.word	4
	.word	_Label_881
	.word	-24
	.word	4
	.word	_Label_882
	.word	-28
	.word	4
	.word	_Label_883
	.word	-9
	.word	1
	.word	_Label_884
	.word	-32
	.word	4
	.word	_Label_885
	.word	-36
	.word	4
	.word	0
_Label_876:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_877:
	.ascii	"Pself\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_883:
	.byte	'C'
	.ascii	"_temp_869\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_885:
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
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	458,r13		! source line 458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
	mov	462,r13		! source line 462
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
!   Retrieve Result: targetName=_temp_888  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_888 then goto _Label_887 else goto _Label_886
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_886
	jmp	_Label_887
_Label_886:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_889 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_889  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	463,r13		! source line 463
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_887:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0WH",r10
_Label_890:
!	jmp	_Label_891
_Label_891:
	mov	466,r13		! source line 466
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   _temp_893 = &waitingThreads
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
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_894
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_894
	jmp	_Label_895
_Label_894:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0BR",r10
	jmp	_Label_892
! END IF...
_Label_895:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_896 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
!   _temp_897 = &_P_Kernel_readyList
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
	jmp	_Label_890
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	474,r13		! source line 474
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
	.word	_Label_898
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	_Label_903
	.word	-24
	.word	4
	.word	_Label_904
	.word	-28
	.word	4
	.word	_Label_905
	.word	-9
	.word	1
	.word	_Label_906
	.word	-32
	.word	4
	.word	_Label_907
	.word	-36
	.word	4
	.word	0
_Label_898:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_905:
	.byte	'C'
	.ascii	"_temp_888\0"
	.align
_Label_906:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_907:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_908
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_908:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_909
	.word	_sourceFileName
	.word	165		! line number
	.word	64		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_909:
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
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
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
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   cnt = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   nextCount = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
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
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   _temp_912 = &nextSem
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
	mov	494,r13		! source line 494
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
	mov	495,r13		! source line 495
	mov	"\0\0SE",r10
!   _temp_914 = &sem
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
	mov	495,r13		! source line 495
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
	.word	_Label_915
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	0
_Label_915:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_910\0"
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	501,r13		! source line 501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
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
	mov	503,r13		! source line 503
	mov	"\0\0IF",r10
!   if nextCount <= 0 then goto _Label_923		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_923
!	jmp	_Label_922
_Label_922:
! THEN...
	mov	504,r13		! source line 504
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0SE",r10
!   _temp_924 = &nextSem
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
	jmp	_Label_925
_Label_923:
! ELSE...
	mov	506,r13		! source line 506
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	506,r13		! source line 506
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
_Label_925:
! SEND STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
!   _temp_926 = &sem
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
	mov	509,r13		! source line 509
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
	mov	509,r13		! source line 509
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
	.word	_Label_927
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	12
	.word	4
	.word	_Label_930
	.word	-12
	.word	4
	.word	_Label_931
	.word	-16
	.word	4
	.word	0
_Label_927:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_924\0"
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	514,r13		! source line 514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if cnt <= 0 then goto _Label_933		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_933
!	jmp	_Label_932
_Label_932:
! THEN...
	mov	516,r13		! source line 516
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
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
	mov	517,r13		! source line 517
	mov	"\0\0SE",r10
!   _temp_934 = &sem
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
	mov	518,r13		! source line 518
	mov	"\0\0SE",r10
!   _temp_935 = &nextSem
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
	mov	519,r13		! source line 519
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
_Label_933:
! RETURN STATEMENT...
	mov	515,r13		! source line 515
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
	.word	_Label_936
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_938
	.word	12
	.word	4
	.word	_Label_939
	.word	-12
	.word	4
	.word	_Label_940
	.word	-16
	.word	4
	.word	0
_Label_936:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_937:
	.ascii	"Pself\0"
	.align
_Label_938:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_941
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
_Label_941:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_942
	.word	_sourceFileName
	.word	181		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_942:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0AS",r10
!   _temp_943 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_943 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   _temp_944 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_944 [0 ] into _temp_945
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
!   Data Move: *_temp_945 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   _temp_946 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_946 [999 ] into _temp_947
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
!   Data Move: *_temp_947 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   _temp_948 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_948 [999 ] into _temp_949
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
!   stackTop = _temp_949		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   _temp_950 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_952 = &_temp_951
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_952 = _temp_952 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_954:
!   Data Move: *_temp_952 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_952 = _temp_952 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_953 = _temp_953 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_953) then goto _Label_954
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_954
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_955 = &_temp_951
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3037
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3037:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_950 = *_temp_955  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3038:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3038
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   _temp_956 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_958 = &_temp_957
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_958 = _temp_958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_960:
!   Data Move: *_temp_958 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_958 = _temp_958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_959 = _temp_959 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_959) then goto _Label_960
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_960
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_961 = &_temp_957
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3039
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3039:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_956 = *_temp_961  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3040:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
! RETURN STATEMENT...
	mov	544,r13		! source line 544
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
	.word	_Label_962
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_964
	.word	12
	.word	4
	.word	_Label_965
	.word	-12
	.word	4
	.word	_Label_966
	.word	-16
	.word	4
	.word	_Label_967
	.word	-20
	.word	4
	.word	_Label_968
	.word	-84
	.word	64
	.word	_Label_969
	.word	-88
	.word	4
	.word	_Label_970
	.word	-92
	.word	4
	.word	_Label_971
	.word	-96
	.word	4
	.word	_Label_972
	.word	-100
	.word	4
	.word	_Label_973
	.word	-156
	.word	56
	.word	_Label_974
	.word	-160
	.word	4
	.word	_Label_975
	.word	-164
	.word	4
	.word	_Label_976
	.word	-168
	.word	4
	.word	_Label_977
	.word	-172
	.word	4
	.word	_Label_978
	.word	-176
	.word	4
	.word	_Label_979
	.word	-180
	.word	4
	.word	_Label_980
	.word	-184
	.word	4
	.word	_Label_981
	.word	-188
	.word	4
	.word	0
_Label_962:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_963:
	.ascii	"Pself\0"
	.align
_Label_964:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_943\0"
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	549,r13		! source line 549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
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
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_982  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_984 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
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
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	568,r13		! source line 568
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	568,r13		! source line 568
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
	.word	_Label_985
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_987
	.word	12
	.word	4
	.word	_Label_988
	.word	16
	.word	4
	.word	_Label_989
	.word	-12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	_Label_991
	.word	-20
	.word	4
	.word	_Label_992
	.word	-24
	.word	4
	.word	_Label_993
	.word	-28
	.word	4
	.word	0
_Label_985:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_986:
	.ascii	"Pself\0"
	.align
_Label_987:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_988:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_992:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_993:
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	573,r13		! source line 573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_996 == _P_Kernel_currentThread then goto _Label_995		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
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
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
	mov	596,r13		! source line 596
	mov	"\0\0SE",r10
!   _temp_998 = &_P_Kernel_readyList
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
	mov	597,r13		! source line 597
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1000		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1002		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1002
!	jmp	_Label_1001
_Label_1001:
! THEN...
	mov	602,r13		! source line 602
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1003 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
	load	[r14+-20],r1
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
_Label_1002:
! ASSIGNMENT STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1005 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1004  sizeInBytes=4
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
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1000:
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	608,r13		! source line 608
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
	.word	_Label_1006
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1008
	.word	-12
	.word	4
	.word	_Label_1009
	.word	-16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	0
_Label_1006:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1007:
	.ascii	"Pself\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1014:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1015:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1016:
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	613,r13		! source line 613
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1018		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1018
!	jmp	_Label_1017
_Label_1017:
! THEN...
	mov	626,r13		! source line 626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1019 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	626,r13		! source line 626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1018:
! IF STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1022 == _P_Kernel_currentThread then goto _Label_1021		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	630,r13		! source line 630
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1023 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	630,r13		! source line 630
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1021:
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
	mov	636,r13		! source line 636
	mov	"\0\0SE",r10
!   _temp_1024 = &_P_Kernel_readyList
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
	mov	637,r13		! source line 637
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1025
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1025
	jmp	_Label_1026
_Label_1025:
! THEN...
	mov	638,r13		! source line 638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	638,r13		! source line 638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1026:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	640,r13		! source line 640
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
	.word	_Label_1028
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1030
	.word	-12
	.word	4
	.word	_Label_1031
	.word	-16
	.word	4
	.word	_Label_1032
	.word	-20
	.word	4
	.word	_Label_1033
	.word	-24
	.word	4
	.word	_Label_1034
	.word	-28
	.word	4
	.word	_Label_1035
	.word	-32
	.word	4
	.word	0
_Label_1028:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1029:
	.ascii	"Pself\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1035:
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	645,r13		! source line 645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   _temp_1039 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1039 [0 ] into _temp_1040
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
!   Data Move: _temp_1038 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1038 == 606348324 then goto _Label_1037		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	652,r13		! source line 652
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1042
_Label_1037:
! ELSE...
	mov	653,r13		! source line 653
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0IF",r10
!   _temp_1046 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1046 [999 ] into _temp_1047
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
!   Data Move: _temp_1045 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1045 == 606348324 then goto _Label_1044		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1044
!	jmp	_Label_1043
_Label_1043:
! THEN...
	mov	654,r13		! source line 654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1048 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	654,r13		! source line 654
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1044:
! END IF...
_Label_1042:
! RETURN STATEMENT...
	mov	651,r13		! source line 651
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	_Label_1056
	.word	-32
	.word	4
	.word	_Label_1057
	.word	-36
	.word	4
	.word	_Label_1058
	.word	-40
	.word	4
	.word	0
_Label_1049:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1038\0"
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	660,r13		! source line 660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1059 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1060 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1062 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1063 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1068 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1069 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1068  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1064:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1069 then goto _Label_1067		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1067
_Label_1065:
	mov	673,r13		! source line 673
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1070 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1071 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1072 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1074 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1074 [i ] into _temp_1075
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
!   Data Move: _temp_1073 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1076 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1078 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1078 [i ] into _temp_1079
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
!   Data Move: _temp_1077 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1080 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1066:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1064
! END FOR
_Label_1067:
! CALL STATEMENT...
!   _temp_1081 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1082 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1082  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1083 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_1085 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1085 [0 ] into _temp_1086
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
!   _temp_1084 = _temp_1086		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1084  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	684,r13		! source line 684
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1089
	cmp	r1,2
	be	_Label_1090
	cmp	r1,3
	be	_Label_1091
	cmp	r1,4
	be	_Label_1092
	cmp	r1,5
	be	_Label_1093
	jmp	_Label_1087
! CASE 1...
_Label_1089:
! CALL STATEMENT...
!   _temp_1094 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 2...
_Label_1090:
! CALL STATEMENT...
!   _temp_1095 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 3...
_Label_1091:
! CALL STATEMENT...
!   _temp_1096 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 4...
_Label_1092:
! CALL STATEMENT...
!   _temp_1097 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1097  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 5...
_Label_1093:
! CALL STATEMENT...
!   _temp_1098 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_1088
! DEFAULT CASE...
_Label_1087:
! CALL STATEMENT...
!   _temp_1099 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	701,r13		! source line 701
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1088:
! CALL STATEMENT...
!   _temp_1100 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1101 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1106 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1107 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1106  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1102:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1107 then goto _Label_1105		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1105
_Label_1103:
	mov	707,r13		! source line 707
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1108 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1109 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1110 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1112 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1112 [i ] into _temp_1113
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
!   Data Move: _temp_1111 = *_temp_1113  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1114 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1116 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1116 [i ] into _temp_1117
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
!   Data Move: _temp_1115 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1118 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1104:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1102
! END FOR
_Label_1105:
! ASSIGNMENT STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	716,r13		! source line 716
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
	.word	_Label_1119
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1121
	.word	-12
	.word	4
	.word	_Label_1122
	.word	-16
	.word	4
	.word	_Label_1123
	.word	-20
	.word	4
	.word	_Label_1124
	.word	-24
	.word	4
	.word	_Label_1125
	.word	-28
	.word	4
	.word	_Label_1126
	.word	-32
	.word	4
	.word	_Label_1127
	.word	-36
	.word	4
	.word	_Label_1128
	.word	-40
	.word	4
	.word	_Label_1129
	.word	-44
	.word	4
	.word	_Label_1130
	.word	-48
	.word	4
	.word	_Label_1131
	.word	-52
	.word	4
	.word	_Label_1132
	.word	-56
	.word	4
	.word	_Label_1133
	.word	-60
	.word	4
	.word	_Label_1134
	.word	-64
	.word	4
	.word	_Label_1135
	.word	-68
	.word	4
	.word	_Label_1136
	.word	-72
	.word	4
	.word	_Label_1137
	.word	-76
	.word	4
	.word	_Label_1138
	.word	-80
	.word	4
	.word	_Label_1139
	.word	-84
	.word	4
	.word	_Label_1140
	.word	-88
	.word	4
	.word	_Label_1141
	.word	-92
	.word	4
	.word	_Label_1142
	.word	-96
	.word	4
	.word	_Label_1143
	.word	-100
	.word	4
	.word	_Label_1144
	.word	-104
	.word	4
	.word	_Label_1145
	.word	-108
	.word	4
	.word	_Label_1146
	.word	-112
	.word	4
	.word	_Label_1147
	.word	-116
	.word	4
	.word	_Label_1148
	.word	-120
	.word	4
	.word	_Label_1149
	.word	-124
	.word	4
	.word	_Label_1150
	.word	-128
	.word	4
	.word	_Label_1151
	.word	-132
	.word	4
	.word	_Label_1152
	.word	-136
	.word	4
	.word	_Label_1153
	.word	-140
	.word	4
	.word	_Label_1154
	.word	-144
	.word	4
	.word	_Label_1155
	.word	-148
	.word	4
	.word	_Label_1156
	.word	-152
	.word	4
	.word	_Label_1157
	.word	-156
	.word	4
	.word	_Label_1158
	.word	-160
	.word	4
	.word	_Label_1159
	.word	-164
	.word	4
	.word	_Label_1160
	.word	-168
	.word	4
	.word	_Label_1161
	.word	-172
	.word	4
	.word	_Label_1162
	.word	-176
	.word	4
	.word	_Label_1163
	.word	-180
	.word	4
	.word	_Label_1164
	.word	-184
	.word	4
	.word	_Label_1165
	.word	-188
	.word	4
	.word	_Label_1166
	.word	-192
	.word	4
	.word	_Label_1167
	.word	-196
	.word	4
	.word	0
_Label_1119:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1120:
	.ascii	"Pself\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1166:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1168
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1168:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1169
	.word	_sourceFileName
	.word	208		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1169:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	771,r13		! source line 771
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1170 = _StringConst_103
	set	_StringConst_103,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	set	-45904,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   _temp_1171 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1173 = &_temp_1172
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   _temp_1173 = _temp_1173 + 4
	load	[r14+-4252],r1
	add	r1,4,r1
	store	r1,[r14+-4252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1175 = zeros  (sizeInBytes=4164)
	add	r14,-4244,r4
	mov	1041,r3
_Label_3047:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
!   _temp_1175 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4244]
	mov	10,r1
	store	r1,[r14+-4248]
_Label_1177:
!   Data Move: *_temp_1173 = _temp_1175  (sizeInBytes=4164)
	add	r14,-4244,r5
	load	[r14+-4252],r4
	mov	1041,r3
_Label_3048:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3048
!   _temp_1173 = _temp_1173 + 4164
	load	[r14+-4252],r1
	add	r1,4164,r1
	store	r1,[r14+-4252]
!   _temp_1174 = _temp_1174 + -1
	load	[r14+-4248],r1
	add	r1,-1,r1
	store	r1,[r14+-4248]
!   if intNotZero (_temp_1174) then goto _Label_1177
	load	[r14+-4248],r1
	cmp	r1,r0
	bne	_Label_1177
!   Initialize the array size...
	mov	10,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   _temp_1178 = &_temp_1172
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3049
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3049:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1171 = *_temp_1178  (sizeInBytes=41644)
	load	[r14+-76],r5
	set	-45900,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3050:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3050
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
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
	mov	786,r13		! source line 786
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
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1181 = &threadManagerLock
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
	mov	789,r13		! source line 789
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
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_1183 = &aThreadBecameFree
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
	mov	792,r13		! source line 792
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1188 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1189 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1188  (sizeInBytes=4)
	load	[r14+-52],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1184:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1189 then goto _Label_1187		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1187
_Label_1185:
	mov	792,r13		! source line 792
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   _temp_1190 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   _temp_1191 = index + 1		(int)
	set	-45908,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   th_name = _temp_1190 + _temp_1191		(int)
	load	[r14+-44],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
! ASSIGNMENT STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0AS",r10
!   _temp_1192 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1192 [index ] into _temp_1193
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
!   Data Move: th = *_temp_1193  (sizeInBytes=4164)
	load	[r14+-32],r5
	set	-50072,r4
	add	r14,r4,r4
	mov	1041,r3
_Label_3051:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3051
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1194 = &th
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
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   _temp_1195 = &th
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-24]
!   _temp_1196 = _temp_1195 + 76
	load	[r14+-24],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1196 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_1197 = &th
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   _temp_1198 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1197  sizeInBytes=4
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
_Label_1186:
!   index = index + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1184
! END FOR
_Label_1187:
! RETURN STATEMENT...
	mov	792,r13		! source line 792
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
	.word	_Label_1199
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_1200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1201
	.word	-12
	.word	4
	.word	_Label_1202
	.word	-16
	.word	4
	.word	_Label_1203
	.word	-20
	.word	4
	.word	_Label_1204
	.word	-24
	.word	4
	.word	_Label_1205
	.word	-28
	.word	4
	.word	_Label_1206
	.word	-32
	.word	4
	.word	_Label_1207
	.word	-36
	.word	4
	.word	_Label_1208
	.word	-40
	.word	4
	.word	_Label_1209
	.word	-44
	.word	4
	.word	_Label_1210
	.word	-48
	.word	4
	.word	_Label_1211
	.word	-52
	.word	4
	.word	_Label_1212
	.word	-56
	.word	4
	.word	_Label_1213
	.word	-60
	.word	4
	.word	_Label_1214
	.word	-64
	.word	4
	.word	_Label_1215
	.word	-68
	.word	4
	.word	_Label_1216
	.word	-72
	.word	4
	.word	_Label_1217
	.word	-76
	.word	4
	.word	_Label_1218
	.word	-80
	.word	4
	.word	_Label_1219
	.word	-4244
	.word	4164
	.word	_Label_1220
	.word	-4248
	.word	4
	.word	_Label_1221
	.word	-4252
	.word	4
	.word	_Label_1222
	.word	-45896
	.word	41644
	.word	_Label_1223
	.word	-45900
	.word	4
	.word	_Label_1224
	.word	-45904
	.word	4
	.word	_Label_1225
	.word	-45908
	.word	4
	.word	_Label_1226
	.word	-50072
	.word	4164
	.word	_Label_1227
	.word	-50076
	.word	4
	.word	0
_Label_1199:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1200:
	.ascii	"Pself\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1225:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1226:
	.byte	'O'
	.ascii	"th\0"
	.align
_Label_1227:
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	807,r13		! source line 807
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1228 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1233 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1234 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1233  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1229:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1234 then goto _Label_1232		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1232
_Label_1230:
	mov	816,r13		! source line 816
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1235 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1235  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1236 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1238 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1238 [i ] into _temp_1239
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
!   _temp_1237 = _temp_1239		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1231:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1229
! END FOR
_Label_1232:
! CALL STATEMENT...
!   _temp_1240 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1241 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1242 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1241  sizeInBytes=4
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
	mov	824,r13		! source line 824
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	825,r13		! source line 825
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
	.word	_Label_1243
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1244
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1245
	.word	-12
	.word	4
	.word	_Label_1246
	.word	-16
	.word	4
	.word	_Label_1247
	.word	-20
	.word	4
	.word	_Label_1248
	.word	-24
	.word	4
	.word	_Label_1249
	.word	-28
	.word	4
	.word	_Label_1250
	.word	-32
	.word	4
	.word	_Label_1251
	.word	-36
	.word	4
	.word	_Label_1252
	.word	-40
	.word	4
	.word	_Label_1253
	.word	-44
	.word	4
	.word	_Label_1254
	.word	-48
	.word	4
	.word	_Label_1255
	.word	-52
	.word	4
	.word	_Label_1256
	.word	-56
	.word	4
	.word	_Label_1257
	.word	-60
	.word	4
	.word	0
_Label_1243:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1244:
	.ascii	"Pself\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1257:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	830,r13		! source line 830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1258 = &threadManagerLock
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
	mov	842,r13		! source line 842
	mov	"\0\0WH",r10
_Label_1259:
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_1262 = &freeList
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
!   if result==true then goto _Label_1260 else goto _Label_1261
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1261
	jmp	_Label_1260
_Label_1260:
	mov	842,r13		! source line 842
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1263 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1264 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1263  sizeInBytes=4
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
	jmp	_Label_1259
_Label_1261:
! ASSIGNMENT STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0AS",r10
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_1265 = &freeList
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
	mov	847,r13		! source line 847
	mov	"\0\0AS",r10
!   if intIsZero (new_th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1266 = new_th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1266 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0SE",r10
!   _temp_1267 = &threadManagerLock
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
	mov	850,r13		! source line 850
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
	.word	_Label_1268
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1270
	.word	-12
	.word	4
	.word	_Label_1271
	.word	-16
	.word	4
	.word	_Label_1272
	.word	-20
	.word	4
	.word	_Label_1273
	.word	-24
	.word	4
	.word	_Label_1274
	.word	-28
	.word	4
	.word	_Label_1275
	.word	-32
	.word	4
	.word	_Label_1276
	.word	-36
	.word	4
	.word	_Label_1277
	.word	-40
	.word	4
	.word	0
_Label_1268:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1269:
	.ascii	"Pself\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1277:
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0SE",r10
!   _temp_1278 = &threadManagerLock
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
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1279 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1280 = &freeList
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
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_1281 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1282 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
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
	mov	868,r13		! source line 868
	mov	"\0\0SE",r10
!   _temp_1283 = &threadManagerLock
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
	mov	868,r13		! source line 868
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
	.word	_Label_1284
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1286
	.word	12
	.word	4
	.word	_Label_1287
	.word	-12
	.word	4
	.word	_Label_1288
	.word	-16
	.word	4
	.word	_Label_1289
	.word	-20
	.word	4
	.word	_Label_1290
	.word	-24
	.word	4
	.word	_Label_1291
	.word	-28
	.word	4
	.word	_Label_1292
	.word	-32
	.word	4
	.word	0
_Label_1284:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1285:
	.ascii	"Pself\0"
	.align
_Label_1286:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1293
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1293:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1294
	.word	_sourceFileName
	.word	229		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1294:
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	881,r13		! source line 881
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3056:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0SE",r10
!   _temp_1296 = &addrSpace
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
	mov	885,r13		! source line 885
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
	.word	_Label_1297
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1299
	.word	-12
	.word	4
	.word	_Label_1300
	.word	-16
	.word	4
	.word	0
_Label_1297:
	.ascii	"ProcessControlBlock"
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
	.ascii	"_temp_1295\0"
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	895,r13		! source line 895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1301) then goto _runtimeErrorNullPointer
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1302 = &addrSpace
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
!   _temp_1303 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	913,r13		! source line 913
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
	.word	_Label_1304
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1306
	.word	-12
	.word	4
	.word	_Label_1307
	.word	-16
	.word	4
	.word	_Label_1308
	.word	-20
	.word	4
	.word	0
_Label_1304:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1305:
	.ascii	"Pself\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1301\0"
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1309 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1311 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1312 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1314		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1314
!	jmp	_Label_1313
_Label_1313:
! THEN...
	mov	928,r13		! source line 928
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1315 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1316
_Label_1314:
! ELSE...
	mov	929,r13		! source line 929
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1318		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1318
!	jmp	_Label_1317
_Label_1317:
! THEN...
	mov	930,r13		! source line 930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1319 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1320
_Label_1318:
! ELSE...
	mov	931,r13		! source line 931
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1322		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1322
!	jmp	_Label_1321
_Label_1321:
! THEN...
	mov	932,r13		! source line 932
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1323 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1324
_Label_1322:
! ELSE...
	mov	934,r13		! source line 934
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1325 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1325  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	934,r13		! source line 934
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1324:
! END IF...
_Label_1320:
! END IF...
_Label_1316:
! CALL STATEMENT...
!   _temp_1326 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1327 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	940,r13		! source line 940
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
	.word	_Label_1328
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1330
	.word	-12
	.word	4
	.word	_Label_1331
	.word	-16
	.word	4
	.word	_Label_1332
	.word	-20
	.word	4
	.word	_Label_1333
	.word	-24
	.word	4
	.word	_Label_1334
	.word	-28
	.word	4
	.word	_Label_1335
	.word	-32
	.word	4
	.word	_Label_1336
	.word	-36
	.word	4
	.word	_Label_1337
	.word	-40
	.word	4
	.word	_Label_1338
	.word	-44
	.word	4
	.word	_Label_1339
	.word	-48
	.word	4
	.word	0
_Label_1328:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1329:
	.ascii	"Pself\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1340
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1340:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1341
	.word	_sourceFileName
	.word	249		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1341:
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
	mov	369,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	951,r13		! source line 951
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1342 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-1472]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-1472],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   _temp_1343 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1345 = &_temp_1344
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1345 = _temp_1345 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1347 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3060:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3060
!   _temp_1347 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1349:
!   Data Move: *_temp_1345 = _temp_1347  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3061:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3061
!   _temp_1345 = _temp_1345 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1346 = _temp_1346 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1346) then goto _Label_1349
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1349
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1350 = &_temp_1344
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3062
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3062:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1343 = *_temp_1350  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3063:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
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
	mov	963,r13		! source line 963
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
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_1353 = &processManagerLock
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
	mov	966,r13		! source line 966
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
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1355 = &aProcessBecameFree
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
	mov	969,r13		! source line 969
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
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1357 = &aProcessDied
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
	mov	972,r13		! source line 972
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1362 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1363 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1362  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1476]
_Label_1358:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1363 then goto _Label_1361		
	load	[r14+-1476],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1361
_Label_1359:
	mov	972,r13		! source line 972
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1364 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1364 [index ] into _temp_1365
!     make sure index expr is >= 0
	load	[r14+-1476],r2
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
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   _temp_1366 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1366 [index ] into _temp_1367
!     make sure index expr is >= 0
	load	[r14+-1476],r2
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
!   _temp_1368 = _temp_1367 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1368 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1370 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1370 [index ] into _temp_1371
!     make sure index expr is >= 0
	load	[r14+-1476],r2
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
!   _temp_1369 = _temp_1371		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1372 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1369  sizeInBytes=4
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
_Label_1360:
!   index = index + 1
	load	[r14+-1476],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1476]
	jmp	_Label_1358
! END FOR
_Label_1361:
! RETURN STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0RE",r10
	add	r15,1480,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	1476		! frame size = 1476
	.word	_Label_1374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	_Label_1378
	.word	-24
	.word	4
	.word	_Label_1379
	.word	-28
	.word	4
	.word	_Label_1380
	.word	-32
	.word	4
	.word	_Label_1381
	.word	-36
	.word	4
	.word	_Label_1382
	.word	-40
	.word	4
	.word	_Label_1383
	.word	-44
	.word	4
	.word	_Label_1384
	.word	-48
	.word	4
	.word	_Label_1385
	.word	-52
	.word	4
	.word	_Label_1386
	.word	-56
	.word	4
	.word	_Label_1387
	.word	-60
	.word	4
	.word	_Label_1388
	.word	-64
	.word	4
	.word	_Label_1389
	.word	-68
	.word	4
	.word	_Label_1390
	.word	-72
	.word	4
	.word	_Label_1391
	.word	-76
	.word	4
	.word	_Label_1392
	.word	-80
	.word	4
	.word	_Label_1393
	.word	-84
	.word	4
	.word	_Label_1394
	.word	-88
	.word	4
	.word	_Label_1395
	.word	-212
	.word	124
	.word	_Label_1396
	.word	-216
	.word	4
	.word	_Label_1397
	.word	-220
	.word	4
	.word	_Label_1398
	.word	-1464
	.word	1244
	.word	_Label_1399
	.word	-1468
	.word	4
	.word	_Label_1400
	.word	-1472
	.word	4
	.word	_Label_1401
	.word	-1476
	.word	4
	.word	0
_Label_1373:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1374:
	.ascii	"Pself\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1401:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	982,r13		! source line 982
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1402 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1408 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1407  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1408 then goto _Label_1406		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1406
_Label_1404:
	mov	991,r13		! source line 991
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1409 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1410 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1411 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1411 [i ] into _temp_1412
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
_Label_1405:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1403
! END FOR
_Label_1406:
! CALL STATEMENT...
!   _temp_1413 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	997,r13		! source line 997
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1414 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1415 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1414  sizeInBytes=4
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
	mov	999,r13		! source line 999
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
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
	.word	_Label_1416
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1417
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1418
	.word	-12
	.word	4
	.word	_Label_1419
	.word	-16
	.word	4
	.word	_Label_1420
	.word	-20
	.word	4
	.word	_Label_1421
	.word	-24
	.word	4
	.word	_Label_1422
	.word	-28
	.word	4
	.word	_Label_1423
	.word	-32
	.word	4
	.word	_Label_1424
	.word	-36
	.word	4
	.word	_Label_1425
	.word	-40
	.word	4
	.word	_Label_1426
	.word	-44
	.word	4
	.word	_Label_1427
	.word	-48
	.word	4
	.word	_Label_1428
	.word	-52
	.word	4
	.word	_Label_1429
	.word	-56
	.word	4
	.word	0
_Label_1416:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1417:
	.ascii	"Pself\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1428:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1429:
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1005,r13		! source line 1005
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1430 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1435  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1436 then goto _Label_1434		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1434
_Label_1432:
	mov	1014,r13		! source line 1014
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1437 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_1438 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1438 [i ] into _temp_1439
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
_Label_1433:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1431
! END FOR
_Label_1434:
! CALL STATEMENT...
!   _temp_1440 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1019,r13		! source line 1019
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_1441 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1442 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1441  sizeInBytes=4
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
	mov	1021,r13		! source line 1021
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1022,r13		! source line 1022
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
	.word	_Label_1443
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1445
	.word	-12
	.word	4
	.word	_Label_1446
	.word	-16
	.word	4
	.word	_Label_1447
	.word	-20
	.word	4
	.word	_Label_1448
	.word	-24
	.word	4
	.word	_Label_1449
	.word	-28
	.word	4
	.word	_Label_1450
	.word	-32
	.word	4
	.word	_Label_1451
	.word	-36
	.word	4
	.word	_Label_1452
	.word	-40
	.word	4
	.word	_Label_1453
	.word	-44
	.word	4
	.word	_Label_1454
	.word	-48
	.word	4
	.word	_Label_1455
	.word	-52
	.word	4
	.word	0
_Label_1443:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1444:
	.ascii	"Pself\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1454:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1455:
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1027,r13		! source line 1027
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_1456 = &processManagerLock
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
	mov	1037,r13		! source line 1037
	mov	"\0\0WH",r10
_Label_1457:
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_1460 = &freeList
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
!   if result==true then goto _Label_1458 else goto _Label_1459
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1459
	jmp	_Label_1458
_Label_1458:
	mov	1037,r13		! source line 1037
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1461 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1462 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1461  sizeInBytes=4
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
	jmp	_Label_1457
_Label_1459:
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_1463 = &freeList
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
	mov	1042,r13		! source line 1042
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
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1464 = pcb + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   _temp_1465 = nextPid - 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Data Move: *_temp_1464 = _temp_1465  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1466 = pcb + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1466 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1467 = &processManagerLock
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
	mov	1047,r13		! source line 1047
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
	.word	_Label_1468
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1470
	.word	-12
	.word	4
	.word	_Label_1471
	.word	-16
	.word	4
	.word	_Label_1472
	.word	-20
	.word	4
	.word	_Label_1473
	.word	-24
	.word	4
	.word	_Label_1474
	.word	-28
	.word	4
	.word	_Label_1475
	.word	-32
	.word	4
	.word	_Label_1476
	.word	-36
	.word	4
	.word	_Label_1477
	.word	-40
	.word	4
	.word	_Label_1478
	.word	-44
	.word	4
	.word	_Label_1479
	.word	-48
	.word	4
	.word	0
_Label_1468:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1469:
	.ascii	"Pself\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1479:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1054,r13		! source line 1054
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1480 = &processManagerLock
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
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1481 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1481 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1482 = &freeList
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
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1483 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1484 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1483  sizeInBytes=4
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
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_1485 = &processManagerLock
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
	mov	1066,r13		! source line 1066
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
	.word	_Label_1486
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	12
	.word	4
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	_Label_1492
	.word	-24
	.word	4
	.word	_Label_1493
	.word	-28
	.word	4
	.word	_Label_1494
	.word	-32
	.word	4
	.word	0
_Label_1486:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1495
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1495:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1496
	.word	_sourceFileName
	.word	272		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1496:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1100,r13		! source line 1100
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1497 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
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
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_1499 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
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
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_1501 = &frameManagerLock
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
	mov	1112,r13		! source line 1112
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
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_1503 = &newFramesAvailable
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
	mov	1119,r13		! source line 1119
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1508 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1509 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1508  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1504:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1509 then goto _Label_1507		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1507
_Label_1505:
	mov	1119,r13		! source line 1119
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1512 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1512) then goto _Label_1511
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1511
!	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	1123,r13		! source line 1123
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1513 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1123,r13		! source line 1123
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1511:
!   Increment the FOR-LOOP index variable and jump back
_Label_1506:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1504
! END FOR
_Label_1507:
! RETURN STATEMENT...
	mov	1119,r13		! source line 1119
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
	.word	_Label_1514
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1516
	.word	-12
	.word	4
	.word	_Label_1517
	.word	-16
	.word	4
	.word	_Label_1518
	.word	-20
	.word	4
	.word	_Label_1519
	.word	-24
	.word	4
	.word	_Label_1520
	.word	-28
	.word	4
	.word	_Label_1521
	.word	-32
	.word	4
	.word	_Label_1522
	.word	-36
	.word	4
	.word	_Label_1523
	.word	-40
	.word	4
	.word	_Label_1524
	.word	-44
	.word	4
	.word	_Label_1525
	.word	-48
	.word	4
	.word	_Label_1526
	.word	-52
	.word	4
	.word	_Label_1527
	.word	-56
	.word	4
	.word	0
_Label_1514:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1515:
	.ascii	"Pself\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1527:
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1130,r13		! source line 1130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_1528 = &frameManagerLock
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
!   _temp_1529 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1530 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1530  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1531 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_1532 = &framesInUse
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
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1533 = &frameManagerLock
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
	mov	1139,r13		! source line 1139
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
	.word	_Label_1534
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1536
	.word	-12
	.word	4
	.word	_Label_1537
	.word	-16
	.word	4
	.word	_Label_1538
	.word	-20
	.word	4
	.word	_Label_1539
	.word	-24
	.word	4
	.word	_Label_1540
	.word	-28
	.word	4
	.word	_Label_1541
	.word	-32
	.word	4
	.word	0
_Label_1534:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1535:
	.ascii	"Pself\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1528\0"
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1144,r13		! source line 1144
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1542 = &frameManagerLock
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
	mov	1155,r13		! source line 1155
	mov	"\0\0WH",r10
_Label_1543:
!   if numberFreeFrames >= 1 then goto _Label_1545		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1545
!	jmp	_Label_1544
_Label_1544:
	mov	1155,r13		! source line 1155
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_1546 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1547 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1546  sizeInBytes=4
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
	jmp	_Label_1543
_Label_1545:
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_1548 = &framesInUse
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
	mov	1161,r13		! source line 1161
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
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1549 = &frameManagerLock
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
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   _temp_1550 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1550		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1169,r13		! source line 1169
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
	.word	_Label_1551
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1552
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1553
	.word	-12
	.word	4
	.word	_Label_1554
	.word	-16
	.word	4
	.word	_Label_1555
	.word	-20
	.word	4
	.word	_Label_1556
	.word	-24
	.word	4
	.word	_Label_1557
	.word	-28
	.word	4
	.word	_Label_1558
	.word	-32
	.word	4
	.word	_Label_1559
	.word	-36
	.word	4
	.word	_Label_1560
	.word	-40
	.word	4
	.word	0
_Label_1551:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1552:
	.ascii	"Pself\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1559:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1560:
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1174,r13		! source line 1174
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_1561 = &frameManagerLock
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
	mov	1183,r13		! source line 1183
	mov	"\0\0WH",r10
_Label_1562:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1564		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1564
!	jmp	_Label_1563
_Label_1563:
	mov	1183,r13		! source line 1183
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1565 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1566 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1565  sizeInBytes=4
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
	jmp	_Label_1562
_Label_1564:
! FOR STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1571 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1572 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1571  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1567:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1572 then goto _Label_1570		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1570
_Label_1568:
	mov	1187,r13		! source line 1187
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1573 = &framesInUse
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
	mov	1189,r13		! source line 1189
	mov	"\0\0AS",r10
!   _temp_1574 = frame_index * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frame_address = 1048576 + _temp_1574		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
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
_Label_1569:
!   index = index + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1567
! END FOR
_Label_1570:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1575 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1575 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
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
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1576 = &frameManagerLock
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
	mov	1198,r13		! source line 1198
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
	.word	_Label_1577
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1579
	.word	12
	.word	4
	.word	_Label_1580
	.word	16
	.word	4
	.word	_Label_1581
	.word	-12
	.word	4
	.word	_Label_1582
	.word	-16
	.word	4
	.word	_Label_1583
	.word	-20
	.word	4
	.word	_Label_1584
	.word	-24
	.word	4
	.word	_Label_1585
	.word	-28
	.word	4
	.word	_Label_1586
	.word	-32
	.word	4
	.word	_Label_1587
	.word	-36
	.word	4
	.word	_Label_1588
	.word	-40
	.word	4
	.word	_Label_1589
	.word	-44
	.word	4
	.word	_Label_1590
	.word	-48
	.word	4
	.word	_Label_1591
	.word	-52
	.word	4
	.word	_Label_1592
	.word	-56
	.word	4
	.word	0
_Label_1577:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1578:
	.ascii	"Pself\0"
	.align
_Label_1579:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1580:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"frame_index\0"
	.align
_Label_1592:
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1205,r13		! source line 1205
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0SE",r10
!   _temp_1593 = &frameManagerLock
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
	mov	1214,r13		! source line 1214
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1598 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1601 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1600 = *_temp_1601  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1599 = _temp_1600 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1598  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1594:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1599 then goto _Label_1597		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1597
_Label_1595:
	mov	1214,r13		! source line 1214
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
	mov	1215,r13		! source line 1215
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
	mov	1216,r13		! source line 1216
	mov	"\0\0AS",r10
!   _temp_1602 = frame_address - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   frame_index = _temp_1602 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
!   _temp_1603 = &framesInUse
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
_Label_1596:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1594
! END FOR
_Label_1597:
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1605 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1604 = *_temp_1605  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1604		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_1606 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1607 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1606  sizeInBytes=4
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
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_1608 = &frameManagerLock
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
	mov	1225,r13		! source line 1225
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
	.word	_Label_1609
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1611
	.word	12
	.word	4
	.word	_Label_1612
	.word	-12
	.word	4
	.word	_Label_1613
	.word	-16
	.word	4
	.word	_Label_1614
	.word	-20
	.word	4
	.word	_Label_1615
	.word	-24
	.word	4
	.word	_Label_1616
	.word	-28
	.word	4
	.word	_Label_1617
	.word	-32
	.word	4
	.word	_Label_1618
	.word	-36
	.word	4
	.word	_Label_1619
	.word	-40
	.word	4
	.word	_Label_1620
	.word	-44
	.word	4
	.word	_Label_1621
	.word	-48
	.word	4
	.word	_Label_1622
	.word	-52
	.word	4
	.word	_Label_1623
	.word	-56
	.word	4
	.word	_Label_1624
	.word	-60
	.word	4
	.word	_Label_1625
	.word	-64
	.word	4
	.word	_Label_1626
	.word	-68
	.word	4
	.word	0
_Label_1609:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1610:
	.ascii	"Pself\0"
	.align
_Label_1611:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"frame_index\0"
	.align
_Label_1626:
	.byte	'I'
	.ascii	"frame_address\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1627
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
_Label_1627:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1628
	.word	_sourceFileName
	.word	291		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1628:
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0AS",r10
!   _temp_1629 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1631 = &_temp_1630
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1631 = _temp_1631 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1633:
!   Data Move: *_temp_1631 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1631 = _temp_1631 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1632 = _temp_1632 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1632) then goto _Label_1633
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1633
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1634 = &_temp_1630
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3074
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3074:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1629 = *_temp_1634  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3075:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3075
! RETURN STATEMENT...
	mov	1241,r13		! source line 1241
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
	.word	_Label_1635
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	-12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-104
	.word	84
	.word	_Label_1641
	.word	-108
	.word	4
	.word	0
_Label_1635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1629\0"
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1246,r13		! source line 1246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1642 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1643 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1648 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1649 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1648  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1644:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1649 then goto _Label_1647		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1647
_Label_1645:
	mov	1253,r13		! source line 1253
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1652 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1652 [i ] into _temp_1653
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
!   _temp_1651 = _temp_1653		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1654 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1656 [i ] into _temp_1657
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
!   Data Move: _temp_1655 = *_temp_1657  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1658 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1659 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1660 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1662) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1663 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0IF",r10
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1666  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1666) then goto _Label_1665
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1665
!	jmp	_Label_1664
_Label_1664:
! THEN...
	mov	1264,r13		! source line 1264
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1668  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1670
_Label_1665:
! ELSE...
	mov	1266,r13		! source line 1266
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1670:
! CALL STATEMENT...
!   _temp_1672 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0IF",r10
	mov	1269,r13		! source line 1269
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1675) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1673 else goto _Label_1674
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1674
	jmp	_Label_1673
_Label_1673:
! THEN...
	mov	1270,r13		! source line 1270
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1676 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1677
_Label_1674:
! ELSE...
	mov	1272,r13		! source line 1272
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1677:
! CALL STATEMENT...
!   _temp_1679 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1682) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1680 else goto _Label_1681
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1681
	jmp	_Label_1680
_Label_1680:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1683 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1684
_Label_1681:
! ELSE...
	mov	1278,r13		! source line 1278
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1685 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1684:
! CALL STATEMENT...
!   _temp_1686 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0IF",r10
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1689) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1687 else goto _Label_1688
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1687
_Label_1687:
! THEN...
	mov	1282,r13		! source line 1282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1690 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1691
_Label_1688:
! ELSE...
	mov	1284,r13		! source line 1284
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1691:
! CALL STATEMENT...
!   _temp_1693 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0IF",r10
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1696) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1694 else goto _Label_1695
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1695
	jmp	_Label_1694
_Label_1694:
! THEN...
	mov	1288,r13		! source line 1288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1698
_Label_1695:
! ELSE...
	mov	1290,r13		! source line 1290
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1699 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1698:
! CALL STATEMENT...
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1646:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1644
! END FOR
_Label_1647:
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
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
	.word	_Label_1700
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1702
	.word	-12
	.word	4
	.word	_Label_1703
	.word	-16
	.word	4
	.word	_Label_1704
	.word	-20
	.word	4
	.word	_Label_1705
	.word	-24
	.word	4
	.word	_Label_1706
	.word	-28
	.word	4
	.word	_Label_1707
	.word	-32
	.word	4
	.word	_Label_1708
	.word	-36
	.word	4
	.word	_Label_1709
	.word	-40
	.word	4
	.word	_Label_1710
	.word	-44
	.word	4
	.word	_Label_1711
	.word	-48
	.word	4
	.word	_Label_1712
	.word	-52
	.word	4
	.word	_Label_1713
	.word	-56
	.word	4
	.word	_Label_1714
	.word	-60
	.word	4
	.word	_Label_1715
	.word	-64
	.word	4
	.word	_Label_1716
	.word	-68
	.word	4
	.word	_Label_1717
	.word	-72
	.word	4
	.word	_Label_1718
	.word	-76
	.word	4
	.word	_Label_1719
	.word	-80
	.word	4
	.word	_Label_1720
	.word	-84
	.word	4
	.word	_Label_1721
	.word	-88
	.word	4
	.word	_Label_1722
	.word	-92
	.word	4
	.word	_Label_1723
	.word	-96
	.word	4
	.word	_Label_1724
	.word	-100
	.word	4
	.word	_Label_1725
	.word	-104
	.word	4
	.word	_Label_1726
	.word	-108
	.word	4
	.word	_Label_1727
	.word	-112
	.word	4
	.word	_Label_1728
	.word	-116
	.word	4
	.word	_Label_1729
	.word	-120
	.word	4
	.word	_Label_1730
	.word	-124
	.word	4
	.word	_Label_1731
	.word	-128
	.word	4
	.word	_Label_1732
	.word	-132
	.word	4
	.word	_Label_1733
	.word	-136
	.word	4
	.word	_Label_1734
	.word	-140
	.word	4
	.word	_Label_1735
	.word	-144
	.word	4
	.word	_Label_1736
	.word	-148
	.word	4
	.word	_Label_1737
	.word	-152
	.word	4
	.word	_Label_1738
	.word	-156
	.word	4
	.word	_Label_1739
	.word	-160
	.word	4
	.word	_Label_1740
	.word	-164
	.word	4
	.word	_Label_1741
	.word	-168
	.word	4
	.word	0
_Label_1700:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1701:
	.ascii	"Pself\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1741:
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_1744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1744 [entry ] into _temp_1745
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
!   Data Move: _temp_1743 = *_temp_1745  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1742 = _temp_1743 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1742  (sizeInBytes=4)
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
	.word	_Label_1746
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1748
	.word	12
	.word	4
	.word	_Label_1749
	.word	-12
	.word	4
	.word	_Label_1750
	.word	-16
	.word	4
	.word	_Label_1751
	.word	-20
	.word	4
	.word	_Label_1752
	.word	-24
	.word	4
	.word	0
_Label_1746:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1747:
	.ascii	"Pself\0"
	.align
_Label_1748:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1742\0"
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_1755 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1755 [entry ] into _temp_1756
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
!   Data Move: _temp_1754 = *_temp_1756  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1753 = _temp_1754 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1753  (sizeInBytes=4)
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
	.word	_Label_1757
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1759
	.word	12
	.word	4
	.word	_Label_1760
	.word	-12
	.word	4
	.word	_Label_1761
	.word	-16
	.word	4
	.word	_Label_1762
	.word	-20
	.word	4
	.word	_Label_1763
	.word	-24
	.word	4
	.word	0
_Label_1757:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1758:
	.ascii	"Pself\0"
	.align
_Label_1759:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1753\0"
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   _temp_1764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1764 [entry ] into _temp_1765
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
!   _temp_1769 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1769 [entry ] into _temp_1770
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
!   Data Move: _temp_1768 = *_temp_1770  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1767 = _temp_1768 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1766 = _temp_1767 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1765 = _temp_1766  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
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
	.word	_Label_1771
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1773
	.word	12
	.word	4
	.word	_Label_1774
	.word	16
	.word	4
	.word	_Label_1775
	.word	-12
	.word	4
	.word	_Label_1776
	.word	-16
	.word	4
	.word	_Label_1777
	.word	-20
	.word	4
	.word	_Label_1778
	.word	-24
	.word	4
	.word	_Label_1779
	.word	-28
	.word	4
	.word	_Label_1780
	.word	-32
	.word	4
	.word	_Label_1781
	.word	-36
	.word	4
	.word	0
_Label_1771:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1772:
	.ascii	"Pself\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1774:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1764\0"
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0RE",r10
!   _temp_1785 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1785 [entry ] into _temp_1786
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
!   Data Move: _temp_1784 = *_temp_1786  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1783 = _temp_1784 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1783) then goto _Label_1787
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1787
!   _temp_1782 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1788
_Label_1787:
!   _temp_1782 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1788:
!   ReturnResult: _temp_1782  (sizeInBytes=1)
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
	.word	_Label_1789
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	-16
	.word	4
	.word	_Label_1793
	.word	-20
	.word	4
	.word	_Label_1794
	.word	-24
	.word	4
	.word	_Label_1795
	.word	-28
	.word	4
	.word	_Label_1796
	.word	-9
	.word	1
	.word	0
_Label_1789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1796:
	.byte	'C'
	.ascii	"_temp_1782\0"
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1336,r13		! source line 1336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0RE",r10
!   _temp_1800 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1800 [entry ] into _temp_1801
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
!   Data Move: _temp_1799 = *_temp_1801  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1798 = _temp_1799 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1798) then goto _Label_1802
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1802
!   _temp_1797 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1803
_Label_1802:
!   _temp_1797 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1803:
!   ReturnResult: _temp_1797  (sizeInBytes=1)
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
	.word	_Label_1804
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1806
	.word	12
	.word	4
	.word	_Label_1807
	.word	-16
	.word	4
	.word	_Label_1808
	.word	-20
	.word	4
	.word	_Label_1809
	.word	-24
	.word	4
	.word	_Label_1810
	.word	-28
	.word	4
	.word	_Label_1811
	.word	-9
	.word	1
	.word	0
_Label_1804:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1805:
	.ascii	"Pself\0"
	.align
_Label_1806:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1811:
	.byte	'C'
	.ascii	"_temp_1797\0"
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0RE",r10
!   _temp_1815 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1815 [entry ] into _temp_1816
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
!   Data Move: _temp_1814 = *_temp_1816  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1813 = _temp_1814 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1813) then goto _Label_1817
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1817
!   _temp_1812 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1818
_Label_1817:
!   _temp_1812 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1818:
!   ReturnResult: _temp_1812  (sizeInBytes=1)
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
	.word	_Label_1819
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1821
	.word	12
	.word	4
	.word	_Label_1822
	.word	-16
	.word	4
	.word	_Label_1823
	.word	-20
	.word	4
	.word	_Label_1824
	.word	-24
	.word	4
	.word	_Label_1825
	.word	-28
	.word	4
	.word	_Label_1826
	.word	-9
	.word	1
	.word	0
_Label_1819:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1820:
	.ascii	"Pself\0"
	.align
_Label_1821:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1826:
	.byte	'C'
	.ascii	"_temp_1812\0"
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0RE",r10
!   _temp_1830 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1830 [entry ] into _temp_1831
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
!   Data Move: _temp_1829 = *_temp_1831  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1828 = _temp_1829 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1828) then goto _Label_1832
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1832
!   _temp_1827 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1833
_Label_1832:
!   _temp_1827 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1833:
!   ReturnResult: _temp_1827  (sizeInBytes=1)
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
	.word	_Label_1834
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1836
	.word	12
	.word	4
	.word	_Label_1837
	.word	-16
	.word	4
	.word	_Label_1838
	.word	-20
	.word	4
	.word	_Label_1839
	.word	-24
	.word	4
	.word	_Label_1840
	.word	-28
	.word	4
	.word	_Label_1841
	.word	-9
	.word	1
	.word	0
_Label_1834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1835:
	.ascii	"Pself\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1841:
	.byte	'C'
	.ascii	"_temp_1827\0"
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   _temp_1842 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1842 [entry ] into _temp_1843
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
!   _temp_1846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1846 [entry ] into _temp_1847
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
!   Data Move: _temp_1845 = *_temp_1847  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1844 = _temp_1845 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1843 = _temp_1844  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
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
	.word	_Label_1848
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	-12
	.word	4
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-24
	.word	4
	.word	_Label_1855
	.word	-28
	.word	4
	.word	_Label_1856
	.word	-32
	.word	4
	.word	0
_Label_1848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1842\0"
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   _temp_1857 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1857 [entry ] into _temp_1858
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
!   _temp_1861 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1861 [entry ] into _temp_1862
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
!   Data Move: _temp_1860 = *_temp_1862  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1859 = _temp_1860 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1858 = _temp_1859  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
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
	.word	_Label_1863
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1865
	.word	12
	.word	4
	.word	_Label_1866
	.word	-12
	.word	4
	.word	_Label_1867
	.word	-16
	.word	4
	.word	_Label_1868
	.word	-20
	.word	4
	.word	_Label_1869
	.word	-24
	.word	4
	.word	_Label_1870
	.word	-28
	.word	4
	.word	_Label_1871
	.word	-32
	.word	4
	.word	0
_Label_1863:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1864:
	.ascii	"Pself\0"
	.align
_Label_1865:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1857\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1381,r13		! source line 1381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1872 [entry ] into _temp_1873
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
!   _temp_1876 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1876 [entry ] into _temp_1877
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
!   Data Move: _temp_1875 = *_temp_1877  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1874 = _temp_1875 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1873 = _temp_1874  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
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
	.word	_Label_1878
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1880
	.word	12
	.word	4
	.word	_Label_1881
	.word	-12
	.word	4
	.word	_Label_1882
	.word	-16
	.word	4
	.word	_Label_1883
	.word	-20
	.word	4
	.word	_Label_1884
	.word	-24
	.word	4
	.word	_Label_1885
	.word	-28
	.word	4
	.word	_Label_1886
	.word	-32
	.word	4
	.word	0
_Label_1878:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1879:
	.ascii	"Pself\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1872\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   _temp_1887 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1887 [entry ] into _temp_1888
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
!   _temp_1891 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1891 [entry ] into _temp_1892
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
!   Data Move: _temp_1890 = *_temp_1892  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1889 = _temp_1890 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1888 = _temp_1889  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
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
	.word	_Label_1893
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1895
	.word	12
	.word	4
	.word	_Label_1896
	.word	-12
	.word	4
	.word	_Label_1897
	.word	-16
	.word	4
	.word	_Label_1898
	.word	-20
	.word	4
	.word	_Label_1899
	.word	-24
	.word	4
	.word	_Label_1900
	.word	-28
	.word	4
	.word	_Label_1901
	.word	-32
	.word	4
	.word	0
_Label_1893:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1894:
	.ascii	"Pself\0"
	.align
_Label_1895:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1887\0"
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   _temp_1902 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1902 [entry ] into _temp_1903
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
!   _temp_1906 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1906 [entry ] into _temp_1907
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
!   Data Move: _temp_1905 = *_temp_1907  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1904 = _temp_1905 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1903 = _temp_1904  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1403,r13		! source line 1403
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
	.word	_Label_1908
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	12
	.word	4
	.word	_Label_1911
	.word	-12
	.word	4
	.word	_Label_1912
	.word	-16
	.word	4
	.word	_Label_1913
	.word	-20
	.word	4
	.word	_Label_1914
	.word	-24
	.word	4
	.word	_Label_1915
	.word	-28
	.word	4
	.word	_Label_1916
	.word	-32
	.word	4
	.word	0
_Label_1908:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1902\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1408,r13		! source line 1408
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0AS",r10
!   _temp_1917 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1917 [entry ] into _temp_1918
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
!   _temp_1921 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1921 [entry ] into _temp_1922
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
!   Data Move: _temp_1920 = *_temp_1922  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1919 = _temp_1920 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1918 = _temp_1919  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1412,r13		! source line 1412
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
	.word	_Label_1923
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1925
	.word	12
	.word	4
	.word	_Label_1926
	.word	-12
	.word	4
	.word	_Label_1927
	.word	-16
	.word	4
	.word	_Label_1928
	.word	-20
	.word	4
	.word	_Label_1929
	.word	-24
	.word	4
	.word	_Label_1930
	.word	-28
	.word	4
	.word	_Label_1931
	.word	-32
	.word	4
	.word	0
_Label_1923:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1924:
	.ascii	"Pself\0"
	.align
_Label_1925:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1917\0"
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1417,r13		! source line 1417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   _temp_1932 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1932 [entry ] into _temp_1933
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
!   _temp_1936 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1936 [entry ] into _temp_1937
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
!   Data Move: _temp_1935 = *_temp_1937  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1934 = _temp_1935 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1933 = _temp_1934  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
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
	.word	_Label_1938
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1940
	.word	12
	.word	4
	.word	_Label_1941
	.word	-12
	.word	4
	.word	_Label_1942
	.word	-16
	.word	4
	.word	_Label_1943
	.word	-20
	.word	4
	.word	_Label_1944
	.word	-24
	.word	4
	.word	_Label_1945
	.word	-28
	.word	4
	.word	_Label_1946
	.word	-32
	.word	4
	.word	0
_Label_1938:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1939:
	.ascii	"Pself\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1932\0"
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   _temp_1947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1947 [entry ] into _temp_1948
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
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1951 [entry ] into _temp_1952
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
!   Data Move: _temp_1950 = *_temp_1952  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1949 = _temp_1950 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1948 = _temp_1949  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1430,r13		! source line 1430
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
	.word	_Label_1953
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	12
	.word	4
	.word	_Label_1956
	.word	-12
	.word	4
	.word	_Label_1957
	.word	-16
	.word	4
	.word	_Label_1958
	.word	-20
	.word	4
	.word	_Label_1959
	.word	-24
	.word	4
	.word	_Label_1960
	.word	-28
	.word	4
	.word	_Label_1961
	.word	-32
	.word	4
	.word	0
_Label_1953:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1947\0"
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1435,r13		! source line 1435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1963 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1963 [0 ] into _temp_1964
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
!   _temp_1962 = _temp_1964		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1965 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1962  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1965  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
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
	.word	_Label_1966
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1968
	.word	-12
	.word	4
	.word	_Label_1969
	.word	-16
	.word	4
	.word	_Label_1970
	.word	-20
	.word	4
	.word	_Label_1971
	.word	-24
	.word	4
	.word	0
_Label_1966:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1967:
	.ascii	"Pself\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1962\0"
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1972
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1972
	jmp	_Label_1973
_Label_1972:
! THEN...
	mov	1462,r13		! source line 1462
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1974
_Label_1973:
! ELSE...
	mov	1463,r13		! source line 1463
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1976		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1976
!	jmp	_Label_1975
_Label_1975:
! THEN...
	mov	1464,r13		! source line 1464
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1976:
! END IF...
_Label_1974:
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
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
	mov	1467,r13		! source line 1467
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
	mov	1470,r13		! source line 1470
	mov	"\0\0WH",r10
_Label_1977:
!	jmp	_Label_1978
_Label_1978:
	mov	1470,r13		! source line 1470
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1981		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1981
!	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	1472,r13		! source line 1472
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1982 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1472,r13		! source line 1472
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1981:
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1986) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1985  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1985 then goto _Label_1984 else goto _Label_1983
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1983
	jmp	_Label_1984
_Label_1983:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1987 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1476,r13		! source line 1476
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1984:
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
	mov	1479,r13		! source line 1479
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1989) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1988  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1988 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0WH",r10
_Label_1990:
!   if offset >= 8192 then goto _Label_1992		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1992
!	jmp	_Label_1991
_Label_1991:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1993 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1993  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1995		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1995
!	jmp	_Label_1994
_Label_1994:
! THEN...
	mov	1490,r13		! source line 1490
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1995:
! END WHILE...
	jmp	_Label_1990
_Label_1992:
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1977
_Label_1979:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1996
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1998
	.word	12
	.word	4
	.word	_Label_1999
	.word	16
	.word	4
	.word	_Label_2000
	.word	20
	.word	4
	.word	_Label_2001
	.word	-9
	.word	1
	.word	_Label_2002
	.word	-16
	.word	4
	.word	_Label_2003
	.word	-20
	.word	4
	.word	_Label_2004
	.word	-24
	.word	4
	.word	_Label_2005
	.word	-28
	.word	4
	.word	_Label_2006
	.word	-10
	.word	1
	.word	_Label_2007
	.word	-32
	.word	4
	.word	_Label_2008
	.word	-36
	.word	4
	.word	_Label_2009
	.word	-40
	.word	4
	.word	_Label_2010
	.word	-44
	.word	4
	.word	_Label_2011
	.word	-48
	.word	4
	.word	0
_Label_1996:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1997:
	.ascii	"Pself\0"
	.align
_Label_1998:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2001:
	.byte	'C'
	.ascii	"_temp_1993\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2006:
	.byte	'C'
	.ascii	"_temp_1985\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2008:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2009:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2011:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1500,r13		! source line 1500
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2012
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2012
	jmp	_Label_2013
_Label_2012:
! THEN...
	mov	1512,r13		! source line 1512
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2014
_Label_2013:
! ELSE...
	mov	1513,r13		! source line 1513
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2016		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2016
!	jmp	_Label_2015
_Label_2015:
! THEN...
	mov	1514,r13		! source line 1514
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2016:
! END IF...
_Label_2014:
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
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
	mov	1517,r13		! source line 1517
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
	mov	1518,r13		! source line 1518
	mov	"\0\0WH",r10
_Label_2017:
!	jmp	_Label_2018
_Label_2018:
	mov	1518,r13		! source line 1518
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2023		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2023
	jmp	_Label_2020
_Label_2023:
	mov	1520,r13		! source line 1520
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2025) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2024 then goto _Label_2022 else goto _Label_2020
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2020
	jmp	_Label_2022
_Label_2022:
	mov	1521,r13		! source line 1521
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2027) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2026  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2026 then goto _Label_2021 else goto _Label_2020
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2020
	jmp	_Label_2021
_Label_2020:
! THEN...
	mov	1522,r13		! source line 1522
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2021:
! ASSIGNMENT STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0AS",r10
	mov	1524,r13		! source line 1524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2029) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2028  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2028 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0WH",r10
_Label_2030:
!   if offset >= 8192 then goto _Label_2032		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2032
!	jmp	_Label_2031
_Label_2031:
	mov	1525,r13		! source line 1525
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2033 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2033  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2035		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2035
!	jmp	_Label_2034
_Label_2034:
! THEN...
	mov	1532,r13		! source line 1532
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2035:
! END WHILE...
	jmp	_Label_2030
_Label_2032:
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2017
_Label_2019:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2036
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	12
	.word	4
	.word	_Label_2039
	.word	16
	.word	4
	.word	_Label_2040
	.word	20
	.word	4
	.word	_Label_2041
	.word	-9
	.word	1
	.word	_Label_2042
	.word	-16
	.word	4
	.word	_Label_2043
	.word	-20
	.word	4
	.word	_Label_2044
	.word	-24
	.word	4
	.word	_Label_2045
	.word	-10
	.word	1
	.word	_Label_2046
	.word	-28
	.word	4
	.word	_Label_2047
	.word	-11
	.word	1
	.word	_Label_2048
	.word	-32
	.word	4
	.word	_Label_2049
	.word	-36
	.word	4
	.word	_Label_2050
	.word	-40
	.word	4
	.word	_Label_2051
	.word	-44
	.word	4
	.word	0
_Label_2036:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2039:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2040:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2041:
	.byte	'C'
	.ascii	"_temp_2033\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2045:
	.byte	'C'
	.ascii	"_temp_2026\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2047:
	.byte	'C'
	.ascii	"_temp_2024\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2049:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2050:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2051:
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1542,r13		! source line 1542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0IF",r10
	mov	1566,r13		! source line 1566
	mov	"\0\0SE",r10
!   _temp_2055 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2056) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2055  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2054  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2054 >= 4 then goto _Label_2053		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2053
!	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1569,r13		! source line 1569
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2053:
! IF STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2058		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2058
!	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	1574,r13		! source line 1574
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2058:
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
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
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
	mov	1579,r13		! source line 1579
	mov	"\0\0SE",r10
!   _temp_2061 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2060 = _temp_2061 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2062 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2060  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2062  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2059  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2059  (sizeInBytes=4)
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
	.word	_Label_2064
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	16
	.word	4
	.word	_Label_2068
	.word	20
	.word	4
	.word	_Label_2069
	.word	-12
	.word	4
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-24
	.word	4
	.word	_Label_2073
	.word	-28
	.word	4
	.word	_Label_2074
	.word	-32
	.word	4
	.word	_Label_2075
	.word	-36
	.word	4
	.word	_Label_2076
	.word	-40
	.word	4
	.word	_Label_2077
	.word	-44
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2078
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2078:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2079
	.word	_sourceFileName
	.word	324		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2079:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	2038,r13		! source line 2038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2080 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_2082 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
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
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
!   _temp_2084 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2049,r13		! source line 2049
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2085
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2087
	.word	-12
	.word	4
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	_Label_2091
	.word	-28
	.word	4
	.word	0
_Label_2085:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2086:
	.ascii	"Pself\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	2054,r13		! source line 2054
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_2092 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0WH",r10
_Label_2093:
!	jmp	_Label_2094
_Label_2094:
	mov	2068,r13		! source line 2068
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_2096 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2097) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2096  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_2098 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2075,r13		! source line 2075
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2107 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2101
	cmp	r1,2
	be	_Label_2102
	cmp	r1,3
	be	_Label_2103
	cmp	r1,4
	be	_Label_2104
	cmp	r1,5
	be	_Label_2105
	cmp	r1,6
	be	_Label_2106
	jmp	_Label_2099
! CASE 1...
_Label_2101:
! SEND STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0SE",r10
!   _temp_2108 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2102:
! CALL STATEMENT...
!   _temp_2109 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2109  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2080,r13		! source line 2080
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2103:
! CALL STATEMENT...
!   _temp_2110 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2110  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2082,r13		! source line 2082
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2104:
! CALL STATEMENT...
!   _temp_2111 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2111  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2084,r13		! source line 2084
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2105:
! BREAK STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0BR",r10
	jmp	_Label_2100
! CASE 6...
_Label_2106:
! CALL STATEMENT...
!   _temp_2112 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2090,r13		! source line 2090
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2099:
! CALL STATEMENT...
!   _temp_2113 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2092,r13		! source line 2092
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2100:
! END WHILE...
	jmp	_Label_2093
_Label_2095:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2114
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2115
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2116
	.word	12
	.word	4
	.word	_Label_2117
	.word	16
	.word	4
	.word	_Label_2118
	.word	20
	.word	4
	.word	_Label_2119
	.word	-12
	.word	4
	.word	_Label_2120
	.word	-16
	.word	4
	.word	_Label_2121
	.word	-20
	.word	4
	.word	_Label_2122
	.word	-24
	.word	4
	.word	_Label_2123
	.word	-28
	.word	4
	.word	_Label_2124
	.word	-32
	.word	4
	.word	_Label_2125
	.word	-36
	.word	4
	.word	_Label_2126
	.word	-40
	.word	4
	.word	_Label_2127
	.word	-44
	.word	4
	.word	_Label_2128
	.word	-48
	.word	4
	.word	_Label_2129
	.word	-52
	.word	4
	.word	0
_Label_2114:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2115:
	.ascii	"Pself\0"
	.align
_Label_2116:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2101,r13		! source line 2101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2130
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2132
	.word	12
	.word	4
	.word	_Label_2133
	.word	16
	.word	4
	.word	_Label_2134
	.word	20
	.word	4
	.word	_Label_2135
	.word	24
	.word	4
	.word	0
_Label_2130:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2131:
	.ascii	"Pself\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2133:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2135:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	2127,r13		! source line 2127
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0SE",r10
!   _temp_2136 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0WH",r10
_Label_2137:
!	jmp	_Label_2138
_Label_2138:
	mov	2140,r13		! source line 2140
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   _temp_2140 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2141) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2140  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0SE",r10
!   _temp_2142 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2146,r13		! source line 2146
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2151 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2145
	cmp	r1,2
	be	_Label_2146
	cmp	r1,3
	be	_Label_2147
	cmp	r1,4
	be	_Label_2148
	cmp	r1,5
	be	_Label_2149
	cmp	r1,6
	be	_Label_2150
	jmp	_Label_2143
! CASE 1...
_Label_2145:
! SEND STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0SE",r10
!   _temp_2152 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2146:
! CALL STATEMENT...
!   _temp_2153 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2153  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2151,r13		! source line 2151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2147:
! CALL STATEMENT...
!   _temp_2154 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2153,r13		! source line 2153
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2148:
! CALL STATEMENT...
!   _temp_2155 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2155  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2155,r13		! source line 2155
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2149:
! BREAK STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0BR",r10
	jmp	_Label_2144
! CASE 6...
_Label_2150:
! CALL STATEMENT...
!   _temp_2156 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2161,r13		! source line 2161
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2143:
! CALL STATEMENT...
!   _temp_2157 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2163,r13		! source line 2163
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2144:
! END WHILE...
	jmp	_Label_2137
_Label_2139:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2158
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	16
	.word	4
	.word	_Label_2162
	.word	20
	.word	4
	.word	_Label_2163
	.word	-12
	.word	4
	.word	_Label_2164
	.word	-16
	.word	4
	.word	_Label_2165
	.word	-20
	.word	4
	.word	_Label_2166
	.word	-24
	.word	4
	.word	_Label_2167
	.word	-28
	.word	4
	.word	_Label_2168
	.word	-32
	.word	4
	.word	_Label_2169
	.word	-36
	.word	4
	.word	_Label_2170
	.word	-40
	.word	4
	.word	_Label_2171
	.word	-44
	.word	4
	.word	_Label_2172
	.word	-48
	.word	4
	.word	_Label_2173
	.word	-52
	.word	4
	.word	0
_Label_2158:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2162:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2172,r13		! source line 2172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2174
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2176
	.word	12
	.word	4
	.word	_Label_2177
	.word	16
	.word	4
	.word	_Label_2178
	.word	20
	.word	4
	.word	_Label_2179
	.word	24
	.word	4
	.word	0
_Label_2174:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2175:
	.ascii	"Pself\0"
	.align
_Label_2176:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2177:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2178:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2179:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2180
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2180:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2181
	.word	_sourceFileName
	.word	347		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2181:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	2203,r13		! source line 2203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2182 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2182  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2210,r13		! source line 2210
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   _temp_2184 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_2187 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   _temp_2188 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2190 = &_temp_2189
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2190 = _temp_2190 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2192 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
!   _temp_2192 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2194:
!   Data Move: *_temp_2190 = _temp_2192  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3101
!   _temp_2190 = _temp_2190 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2191 = _temp_2191 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2191) then goto _Label_2194
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2194
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2195 = &_temp_2189
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3102:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2188 = *_temp_2195  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3103
! FOR STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2200 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2201 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2200  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2196:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2201 then goto _Label_2199		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2199
_Label_2197:
	mov	2220,r13		! source line 2220
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   _temp_2202 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2202 [i ] into _temp_2203
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2204 = _temp_2203 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2204 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2205 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2205 [i ] into _temp_2206
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   _temp_2208 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2208 [i ] into _temp_2209
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2207 = _temp_2209		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2210 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2207  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2198:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2196
! END FOR
_Label_2199:
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0SE",r10
!   _temp_2213 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   _temp_2214 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2216 = &_temp_2215
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2216 = _temp_2216 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2218 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3104
!   _temp_2218 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2220:
!   Data Move: *_temp_2216 = _temp_2218  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3105:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3105
!   _temp_2216 = _temp_2216 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2217 = _temp_2217 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2217) then goto _Label_2220
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2220
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2221 = &_temp_2215
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3106
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3106:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2214 = *_temp_2221  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3107:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3107
! FOR STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2226 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2227 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2226  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2222:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2227 then goto _Label_2225		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2225
_Label_2223:
	mov	2232,r13		! source line 2232
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   _temp_2228 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2228 [i ] into _temp_2229
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2230 = _temp_2229 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2230 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   _temp_2232 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2232 [i ] into _temp_2233
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2231 = _temp_2233		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2234 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2231  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2224:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2222
! END FOR
_Label_2225:
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3108
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   _temp_2236 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2237 = _temp_2236 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2237 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_2238 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2239 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2240
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2242
	.word	-12
	.word	4
	.word	_Label_2243
	.word	-16
	.word	4
	.word	_Label_2244
	.word	-20
	.word	4
	.word	_Label_2245
	.word	-24
	.word	4
	.word	_Label_2246
	.word	-28
	.word	4
	.word	_Label_2247
	.word	-32
	.word	4
	.word	_Label_2248
	.word	-36
	.word	4
	.word	_Label_2249
	.word	-40
	.word	4
	.word	_Label_2250
	.word	-44
	.word	4
	.word	_Label_2251
	.word	-48
	.word	4
	.word	_Label_2252
	.word	-52
	.word	4
	.word	_Label_2253
	.word	-56
	.word	4
	.word	_Label_2254
	.word	-60
	.word	4
	.word	_Label_2255
	.word	-64
	.word	4
	.word	_Label_2256
	.word	-68
	.word	4
	.word	_Label_2257
	.word	-72
	.word	4
	.word	_Label_2258
	.word	-100
	.word	28
	.word	_Label_2259
	.word	-104
	.word	4
	.word	_Label_2260
	.word	-108
	.word	4
	.word	_Label_2261
	.word	-392
	.word	284
	.word	_Label_2262
	.word	-396
	.word	4
	.word	_Label_2263
	.word	-400
	.word	4
	.word	_Label_2264
	.word	-404
	.word	4
	.word	_Label_2265
	.word	-408
	.word	4
	.word	_Label_2266
	.word	-412
	.word	4
	.word	_Label_2267
	.word	-416
	.word	4
	.word	_Label_2268
	.word	-420
	.word	4
	.word	_Label_2269
	.word	-424
	.word	4
	.word	_Label_2270
	.word	-428
	.word	4
	.word	_Label_2271
	.word	-432
	.word	4
	.word	_Label_2272
	.word	-436
	.word	4
	.word	_Label_2273
	.word	-440
	.word	4
	.word	_Label_2274
	.word	-444
	.word	4
	.word	_Label_2275
	.word	-448
	.word	4
	.word	_Label_2276
	.word	-452
	.word	4
	.word	_Label_2277
	.word	-456
	.word	4
	.word	_Label_2278
	.word	-460
	.word	4
	.word	_Label_2279
	.word	-500
	.word	40
	.word	_Label_2280
	.word	-504
	.word	4
	.word	_Label_2281
	.word	-508
	.word	4
	.word	_Label_2282
	.word	-912
	.word	404
	.word	_Label_2283
	.word	-916
	.word	4
	.word	_Label_2284
	.word	-920
	.word	4
	.word	_Label_2285
	.word	-924
	.word	4
	.word	_Label_2286
	.word	-928
	.word	4
	.word	_Label_2287
	.word	-932
	.word	4
	.word	_Label_2288
	.word	-936
	.word	4
	.word	_Label_2289
	.word	-940
	.word	4
	.word	_Label_2290
	.word	-944
	.word	4
	.word	0
_Label_2240:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2241:
	.ascii	"Pself\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2290:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	2252,r13		! source line 2252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0SE",r10
!   _temp_2291 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2292 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2255,r13		! source line 2255
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2297 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2298 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2297  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2293:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2298 then goto _Label_2296		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2296
_Label_2294:
	mov	2256,r13		! source line 2256
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2299 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2257,r13		! source line 2257
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2300 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2300  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2259,r13		! source line 2259
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2301 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2301 [i ] into _temp_2302
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2295:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2293
! END FOR
_Label_2296:
! CALL STATEMENT...
!   _temp_2303 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2262,r13		! source line 2262
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_2304 = _function_207_printFCB
	set	_function_207_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2305 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2304  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2264,r13		! source line 2264
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2306 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2265,r13		! source line 2265
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2311 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2312 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2311  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2307:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2312 then goto _Label_2310		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2310
_Label_2308:
	mov	2266,r13		! source line 2266
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2313 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2267,r13		! source line 2267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2314 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2314  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2316 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2316 [i ] into _temp_2317
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2315 = _temp_2317		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2318 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2319 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2319 [i ] into _temp_2320
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2309:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2307
! END FOR
_Label_2310:
! CALL STATEMENT...
!   _temp_2321 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2322 = _function_206_printOpen
	set	_function_206_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2323 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2322  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2324 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2276,r13		! source line 2276
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2325
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2327
	.word	-12
	.word	4
	.word	_Label_2328
	.word	-16
	.word	4
	.word	_Label_2329
	.word	-20
	.word	4
	.word	_Label_2330
	.word	-24
	.word	4
	.word	_Label_2331
	.word	-28
	.word	4
	.word	_Label_2332
	.word	-32
	.word	4
	.word	_Label_2333
	.word	-36
	.word	4
	.word	_Label_2334
	.word	-40
	.word	4
	.word	_Label_2335
	.word	-44
	.word	4
	.word	_Label_2336
	.word	-48
	.word	4
	.word	_Label_2337
	.word	-52
	.word	4
	.word	_Label_2338
	.word	-56
	.word	4
	.word	_Label_2339
	.word	-60
	.word	4
	.word	_Label_2340
	.word	-64
	.word	4
	.word	_Label_2341
	.word	-68
	.word	4
	.word	_Label_2342
	.word	-72
	.word	4
	.word	_Label_2343
	.word	-76
	.word	4
	.word	_Label_2344
	.word	-80
	.word	4
	.word	_Label_2345
	.word	-84
	.word	4
	.word	_Label_2346
	.word	-88
	.word	4
	.word	_Label_2347
	.word	-92
	.word	4
	.word	_Label_2348
	.word	-96
	.word	4
	.word	_Label_2349
	.word	-100
	.word	4
	.word	_Label_2350
	.word	-104
	.word	4
	.word	_Label_2351
	.word	-108
	.word	4
	.word	_Label_2352
	.word	-112
	.word	4
	.word	_Label_2353
	.word	-116
	.word	4
	.word	0
_Label_2325:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2326:
	.ascii	"Pself\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	2281,r13		! source line 2281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_2354 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2355
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2355
	jmp	_Label_2356
_Label_2355:
! THEN...
	mov	2299,r13		! source line 2299
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2356:
! SEND STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2357 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2304,r13		! source line 2304
	mov	"\0\0WH",r10
_Label_2358:
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2361 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2359 else goto _Label_2360
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2360
	jmp	_Label_2359
_Label_2359:
	mov	2304,r13		! source line 2304
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_2362 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2363 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2362  sizeInBytes=4
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
	jmp	_Label_2358
_Label_2360:
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   _temp_2364 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2365 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2365 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2366 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2366 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2367 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2367 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_2368 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2317,r13		! source line 2317
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2369
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2371
	.word	12
	.word	4
	.word	_Label_2372
	.word	-12
	.word	4
	.word	_Label_2373
	.word	-16
	.word	4
	.word	_Label_2374
	.word	-20
	.word	4
	.word	_Label_2375
	.word	-24
	.word	4
	.word	_Label_2376
	.word	-28
	.word	4
	.word	_Label_2377
	.word	-32
	.word	4
	.word	_Label_2378
	.word	-36
	.word	4
	.word	_Label_2379
	.word	-40
	.word	4
	.word	_Label_2380
	.word	-44
	.word	4
	.word	_Label_2381
	.word	-48
	.word	4
	.word	_Label_2382
	.word	-52
	.word	4
	.word	_Label_2383
	.word	-56
	.word	4
	.word	0
_Label_2369:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2370:
	.ascii	"Pself\0"
	.align
_Label_2371:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2382:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2383:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	2322,r13		! source line 2322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2385		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2385
!	jmp	_Label_2384
_Label_2384:
! THEN...
	mov	2353,r13		! source line 2353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2386 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2386  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2353,r13		! source line 2353
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2385:
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0WH",r10
_Label_2387:
!   if numFiles <= 0 then goto _Label_2389		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2389
!	jmp	_Label_2388
_Label_2388:
	mov	2363,r13		! source line 2363
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2390 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2390  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2364,r13		! source line 2364
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2391 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2391  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2366,r13		! source line 2366
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2392 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2396 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2396 then goto _Label_2394		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2394
!	jmp	_Label_2395
_Label_2395:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2398
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2397 = _temp_2398		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2397  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2371,r13		! source line 2371
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2393 else goto _Label_2394
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2394
	jmp	_Label_2393
_Label_2393:
! THEN...
	mov	2372,r13		! source line 2372
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0BR",r10
	jmp	_Label_2389
! END IF...
_Label_2394:
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2387
_Label_2389:
! IF STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2400		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2400
!	jmp	_Label_2399
_Label_2399:
! THEN...
	mov	2380,r13		! source line 2380
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2400:
! SEND STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2401 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2406 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2407 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2406  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2402:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2407 then goto _Label_2405		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2405
_Label_2403:
	mov	2385,r13		! source line 2385
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   _temp_2408 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2408 [i ] into _temp_2409
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2409		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2413 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2412 = *_temp_2413  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2412 != start then goto _Label_2411		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2411
!	jmp	_Label_2410
_Label_2410:
! THEN...
	mov	2388,r13		! source line 2388
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2414 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2416 = *_temp_2417  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2415 = _temp_2416 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2414 = _temp_2415  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_2418 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2411:
!   Increment the FOR-LOOP index variable and jump back
_Label_2404:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2402
! END FOR
_Label_2405:
! WHILE STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0WH",r10
_Label_2419:
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2422 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2420 else goto _Label_2421
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2421
	jmp	_Label_2420
_Label_2420:
	mov	2395,r13		! source line 2395
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0SE",r10
!   _temp_2423 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2424 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2419
_Label_2421:
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
	mov	2398,r13		! source line 2398
	mov	"\0\0SE",r10
!   _temp_2425 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_2426 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2427 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2427 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2428 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2428 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2434 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2433 = *_temp_2434  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2433 < 0 then goto _Label_2432		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2432
	jmp	_Label_2430
_Label_2432:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2435 ) then goto _Label_2431		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2431
!	jmp	_Label_2430
_Label_2430:
! THEN...
	mov	2408,r13		! source line 2408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2436 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2408,r13		! source line 2408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2431:
! RETURN STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2437
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	12
	.word	4
	.word	_Label_2440
	.word	-12
	.word	4
	.word	_Label_2441
	.word	-16
	.word	4
	.word	_Label_2442
	.word	-20
	.word	4
	.word	_Label_2443
	.word	-24
	.word	4
	.word	_Label_2444
	.word	-28
	.word	4
	.word	_Label_2445
	.word	-32
	.word	4
	.word	_Label_2446
	.word	-36
	.word	4
	.word	_Label_2447
	.word	-40
	.word	4
	.word	_Label_2448
	.word	-44
	.word	4
	.word	_Label_2449
	.word	-48
	.word	4
	.word	_Label_2450
	.word	-52
	.word	4
	.word	_Label_2451
	.word	-56
	.word	4
	.word	_Label_2452
	.word	-60
	.word	4
	.word	_Label_2453
	.word	-64
	.word	4
	.word	_Label_2454
	.word	-68
	.word	4
	.word	_Label_2455
	.word	-72
	.word	4
	.word	_Label_2456
	.word	-76
	.word	4
	.word	_Label_2457
	.word	-80
	.word	4
	.word	_Label_2458
	.word	-84
	.word	4
	.word	_Label_2459
	.word	-88
	.word	4
	.word	_Label_2460
	.word	-92
	.word	4
	.word	_Label_2461
	.word	-96
	.word	4
	.word	_Label_2462
	.word	-100
	.word	4
	.word	_Label_2463
	.word	-104
	.word	4
	.word	_Label_2464
	.word	-108
	.word	4
	.word	_Label_2465
	.word	-112
	.word	4
	.word	_Label_2466
	.word	-116
	.word	4
	.word	_Label_2467
	.word	-120
	.word	4
	.word	_Label_2468
	.word	-124
	.word	4
	.word	_Label_2469
	.word	-128
	.word	4
	.word	_Label_2470
	.word	-132
	.word	4
	.word	_Label_2471
	.word	-136
	.word	4
	.word	_Label_2472
	.word	-140
	.word	4
	.word	_Label_2473
	.word	-144
	.word	4
	.word	_Label_2474
	.word	-148
	.word	4
	.word	_Label_2475
	.word	-152
	.word	4
	.word	_Label_2476
	.word	-156
	.word	4
	.word	_Label_2477
	.word	-160
	.word	4
	.word	0
_Label_2437:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2474:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2475:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2476:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2477:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	2423,r13		! source line 2423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0IF",r10
!   _temp_2480 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2480 then goto _Label_2479		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2479
!	jmp	_Label_2478
_Label_2478:
! THEN...
	mov	2426,r13		! source line 2426
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2479:
! SEND STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2482 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2483  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2486 = *_temp_2487  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2485 = _temp_2486 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2484 = _temp_2485  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2490 = *_temp_2491  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2490 > 0 then goto _Label_2489		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2489
!	jmp	_Label_2488
_Label_2488:
! THEN...
	mov	2433,r13		! source line 2433
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2492 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2493 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2494 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2493  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2496 = _temp_2497 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2495 = _temp_2496  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2502 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2501 = *_temp_2502  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2501 > 0 then goto _Label_2500		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2500
!	jmp	_Label_2499
_Label_2499:
! THEN...
	mov	2437,r13		! source line 2437
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_2503 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_2504 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2505 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2504  sizeInBytes=4
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
! END IF...
_Label_2500:
! END IF...
_Label_2489:
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2506 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2441,r13		! source line 2441
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2507
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2509
	.word	12
	.word	4
	.word	_Label_2510
	.word	-12
	.word	4
	.word	_Label_2511
	.word	-16
	.word	4
	.word	_Label_2512
	.word	-20
	.word	4
	.word	_Label_2513
	.word	-24
	.word	4
	.word	_Label_2514
	.word	-28
	.word	4
	.word	_Label_2515
	.word	-32
	.word	4
	.word	_Label_2516
	.word	-36
	.word	4
	.word	_Label_2517
	.word	-40
	.word	4
	.word	_Label_2518
	.word	-44
	.word	4
	.word	_Label_2519
	.word	-48
	.word	4
	.word	_Label_2520
	.word	-52
	.word	4
	.word	_Label_2521
	.word	-56
	.word	4
	.word	_Label_2522
	.word	-60
	.word	4
	.word	_Label_2523
	.word	-64
	.word	4
	.word	_Label_2524
	.word	-68
	.word	4
	.word	_Label_2525
	.word	-72
	.word	4
	.word	_Label_2526
	.word	-76
	.word	4
	.word	_Label_2527
	.word	-80
	.word	4
	.word	_Label_2528
	.word	-84
	.word	4
	.word	_Label_2529
	.word	-88
	.word	4
	.word	_Label_2530
	.word	-92
	.word	4
	.word	_Label_2531
	.word	-96
	.word	4
	.word	_Label_2532
	.word	-100
	.word	4
	.word	_Label_2533
	.word	-104
	.word	4
	.word	0
_Label_2507:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2508:
	.ascii	"Pself\0"
	.align
_Label_2509:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2533:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	2446,r13		! source line 2446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2536 = *_temp_2537  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2536) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = _temp_2536 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2538 ) then goto _Label_2535		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2535
!	jmp	_Label_2534
_Label_2534:
! THEN...
	mov	2452,r13		! source line 2452
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2543 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2542 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2542) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = _temp_2542 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2541 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2541 >= 0 then goto _Label_2540		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2540
!	jmp	_Label_2539
_Label_2539:
! THEN...
	mov	2453,r13		! source line 2453
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2545 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2453,r13		! source line 2453
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2540:
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2546 = *_temp_2547  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2546) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = _temp_2546 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2548 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2552 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2551 = *_temp_2552  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = _temp_2551 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2550 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2555 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2555) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2557 = _temp_2555 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2554 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2549 = _temp_2550 + _temp_2554		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2559 = *_temp_2560  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2559) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = _temp_2559 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2558 = *_temp_2561  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2562 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2549  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2558  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2535:
! RETURN STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2563
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2565
	.word	12
	.word	4
	.word	_Label_2566
	.word	-12
	.word	4
	.word	_Label_2567
	.word	-16
	.word	4
	.word	_Label_2568
	.word	-20
	.word	4
	.word	_Label_2569
	.word	-24
	.word	4
	.word	_Label_2570
	.word	-28
	.word	4
	.word	_Label_2571
	.word	-32
	.word	4
	.word	_Label_2572
	.word	-36
	.word	4
	.word	_Label_2573
	.word	-40
	.word	4
	.word	_Label_2574
	.word	-44
	.word	4
	.word	_Label_2575
	.word	-48
	.word	4
	.word	_Label_2576
	.word	-52
	.word	4
	.word	_Label_2577
	.word	-56
	.word	4
	.word	_Label_2578
	.word	-60
	.word	4
	.word	_Label_2579
	.word	-64
	.word	4
	.word	_Label_2580
	.word	-68
	.word	4
	.word	_Label_2581
	.word	-72
	.word	4
	.word	_Label_2582
	.word	-76
	.word	4
	.word	_Label_2583
	.word	-80
	.word	4
	.word	_Label_2584
	.word	-84
	.word	4
	.word	_Label_2585
	.word	-88
	.word	4
	.word	_Label_2586
	.word	-92
	.word	4
	.word	_Label_2587
	.word	-96
	.word	4
	.word	_Label_2588
	.word	-100
	.word	4
	.word	_Label_2589
	.word	-104
	.word	4
	.word	_Label_2590
	.word	-108
	.word	4
	.word	0
_Label_2563:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2564:
	.ascii	"Pself\0"
	.align
_Label_2565:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	2465,r13		! source line 2465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_2591 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2597		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2597
!   _temp_2596 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2598
_Label_2597:
!   _temp_2596 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2598:
!   if _temp_2596 then goto _Label_2595 else goto _Label_2592
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2592
	jmp	_Label_2595
_Label_2595:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2600 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2600 == 0 then goto _Label_2602		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2602
!   _temp_2599 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2603
_Label_2602:
!   _temp_2599 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2603:
!   if _temp_2599 then goto _Label_2594 else goto _Label_2592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2592
	jmp	_Label_2594
_Label_2594:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2605 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = _temp_2605 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2604 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2604 >= 0 then goto _Label_2593		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2593
!	jmp	_Label_2592
_Label_2592:
! THEN...
	mov	2482,r13		! source line 2482
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2608 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2482,r13		! source line 2482
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2593:
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2609 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2609  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0WH",r10
_Label_2610:
!   if numBytes <= 0 then goto _Label_2612		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2612
!	jmp	_Label_2611
_Label_2611:
	mov	2485,r13		! source line 2485
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2615 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2615 == sector then goto _Label_2614		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2614
!	jmp	_Label_2613
_Label_2613:
! THEN...
	mov	2500,r13		! source line 2500
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2617) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2618 = sector + _temp_2619		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2622 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2621 = *_temp_2622  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2623 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2618  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2621  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2624 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2625 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2614:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2627 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2626 = *_temp_2627  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2626 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   _temp_2628 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2610
_Label_2612:
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_2629 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2630
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2631
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2632
	.word	12
	.word	4
	.word	_Label_2633
	.word	16
	.word	4
	.word	_Label_2634
	.word	20
	.word	4
	.word	_Label_2635
	.word	24
	.word	4
	.word	_Label_2636
	.word	-16
	.word	4
	.word	_Label_2637
	.word	-20
	.word	4
	.word	_Label_2638
	.word	-24
	.word	4
	.word	_Label_2639
	.word	-28
	.word	4
	.word	_Label_2640
	.word	-32
	.word	4
	.word	_Label_2641
	.word	-36
	.word	4
	.word	_Label_2642
	.word	-40
	.word	4
	.word	_Label_2643
	.word	-44
	.word	4
	.word	_Label_2644
	.word	-48
	.word	4
	.word	_Label_2645
	.word	-52
	.word	4
	.word	_Label_2646
	.word	-56
	.word	4
	.word	_Label_2647
	.word	-60
	.word	4
	.word	_Label_2648
	.word	-64
	.word	4
	.word	_Label_2649
	.word	-68
	.word	4
	.word	_Label_2650
	.word	-72
	.word	4
	.word	_Label_2651
	.word	-76
	.word	4
	.word	_Label_2652
	.word	-80
	.word	4
	.word	_Label_2653
	.word	-84
	.word	4
	.word	_Label_2654
	.word	-88
	.word	4
	.word	_Label_2655
	.word	-92
	.word	4
	.word	_Label_2656
	.word	-96
	.word	4
	.word	_Label_2657
	.word	-100
	.word	4
	.word	_Label_2658
	.word	-104
	.word	4
	.word	_Label_2659
	.word	-9
	.word	1
	.word	_Label_2660
	.word	-10
	.word	1
	.word	_Label_2661
	.word	-108
	.word	4
	.word	_Label_2662
	.word	-112
	.word	4
	.word	_Label_2663
	.word	-116
	.word	4
	.word	_Label_2664
	.word	-120
	.word	4
	.word	_Label_2665
	.word	-124
	.word	4
	.word	_Label_2666
	.word	-128
	.word	4
	.word	0
_Label_2630:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2631:
	.ascii	"Pself\0"
	.align
_Label_2632:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2633:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2634:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2635:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2659:
	.byte	'C'
	.ascii	"_temp_2599\0"
	.align
_Label_2660:
	.byte	'C'
	.ascii	"_temp_2596\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2662:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2663:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2665:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2666:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	2529,r13		! source line 2529
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_2667 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2673		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2673
!   _temp_2672 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2674
_Label_2673:
!   _temp_2672 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2674:
!   if _temp_2672 then goto _Label_2671 else goto _Label_2668
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2668
	jmp	_Label_2671
_Label_2671:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2676 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2676 == 0 then goto _Label_2678		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2678
!   _temp_2675 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2679
_Label_2678:
!   _temp_2675 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2679:
!   if _temp_2675 then goto _Label_2670 else goto _Label_2668
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2668
	jmp	_Label_2670
_Label_2670:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2681 = *_temp_2682  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = _temp_2681 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2680 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2680 >= 0 then goto _Label_2669		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2669
!	jmp	_Label_2668
_Label_2668:
! THEN...
	mov	2547,r13		! source line 2547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2684 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2547,r13		! source line 2547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2669:
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2685 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2685  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0WH",r10
_Label_2686:
!   if numBytes <= 0 then goto _Label_2688		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2688
!	jmp	_Label_2687
_Label_2687:
	mov	2550,r13		! source line 2550
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2691 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2691 == sector then goto _Label_2690		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2690
!	jmp	_Label_2689
_Label_2689:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2693) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2690:
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2694 = *_temp_2695  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2694 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   _temp_2696 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2696  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2569,r13		! source line 2569
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2699 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2699 != sector then goto _Label_2698		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2698
!	jmp	_Label_2697
_Label_2697:
	jmp	_Label_2701
_Label_2698:
! ELSE...
	mov	2572,r13		! source line 2572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2704
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2704
	jmp	_Label_2703
_Label_2704:
!   if bytesToMove != 8192 then goto _Label_2703		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2703
!	jmp	_Label_2702
_Label_2702:
	jmp	_Label_2705
_Label_2703:
! ELSE...
	mov	2576,r13		! source line 2576
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2708 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2707 = *_temp_2708  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2706 = sector + _temp_2707		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2711 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2706  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2709  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2705:
! END IF...
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2712 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2713 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2686
_Label_2688:
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2714 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2715
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2717
	.word	12
	.word	4
	.word	_Label_2718
	.word	16
	.word	4
	.word	_Label_2719
	.word	20
	.word	4
	.word	_Label_2720
	.word	24
	.word	4
	.word	_Label_2721
	.word	-16
	.word	4
	.word	_Label_2722
	.word	-20
	.word	4
	.word	_Label_2723
	.word	-24
	.word	4
	.word	_Label_2724
	.word	-28
	.word	4
	.word	_Label_2725
	.word	-32
	.word	4
	.word	_Label_2726
	.word	-36
	.word	4
	.word	_Label_2727
	.word	-40
	.word	4
	.word	_Label_2728
	.word	-44
	.word	4
	.word	_Label_2729
	.word	-48
	.word	4
	.word	_Label_2730
	.word	-52
	.word	4
	.word	_Label_2731
	.word	-56
	.word	4
	.word	_Label_2732
	.word	-60
	.word	4
	.word	_Label_2733
	.word	-64
	.word	4
	.word	_Label_2734
	.word	-68
	.word	4
	.word	_Label_2735
	.word	-72
	.word	4
	.word	_Label_2736
	.word	-76
	.word	4
	.word	_Label_2737
	.word	-80
	.word	4
	.word	_Label_2738
	.word	-84
	.word	4
	.word	_Label_2739
	.word	-88
	.word	4
	.word	_Label_2740
	.word	-92
	.word	4
	.word	_Label_2741
	.word	-96
	.word	4
	.word	_Label_2742
	.word	-100
	.word	4
	.word	_Label_2743
	.word	-104
	.word	4
	.word	_Label_2744
	.word	-108
	.word	4
	.word	_Label_2745
	.word	-112
	.word	4
	.word	_Label_2746
	.word	-9
	.word	1
	.word	_Label_2747
	.word	-10
	.word	1
	.word	_Label_2748
	.word	-116
	.word	4
	.word	_Label_2749
	.word	-120
	.word	4
	.word	_Label_2750
	.word	-124
	.word	4
	.word	_Label_2751
	.word	-128
	.word	4
	.word	_Label_2752
	.word	-132
	.word	4
	.word	_Label_2753
	.word	-136
	.word	4
	.word	0
_Label_2715:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2716:
	.ascii	"Pself\0"
	.align
_Label_2717:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2746:
	.byte	'C'
	.ascii	"_temp_2675\0"
	.align
_Label_2747:
	.byte	'C'
	.ascii	"_temp_2672\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2751:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2753:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2754
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2754:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2755
	.word	_sourceFileName
	.word	372		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2755:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	2633,r13		! source line 2633
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   _temp_2756 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2757
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2759
	.word	-12
	.word	4
	.word	0
_Label_2757:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2758:
	.ascii	"Pself\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	2643,r13		! source line 2643
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2760 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2645,r13		! source line 2645
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2761 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2647,r13		! source line 2647
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2762 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2763 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2764 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2765 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2766
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2768
	.word	-12
	.word	4
	.word	_Label_2769
	.word	-16
	.word	4
	.word	_Label_2770
	.word	-20
	.word	4
	.word	_Label_2771
	.word	-24
	.word	4
	.word	_Label_2772
	.word	-28
	.word	4
	.word	_Label_2773
	.word	-32
	.word	4
	.word	0
_Label_2766:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2767:
	.ascii	"Pself\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2774
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2774:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2775
	.word	_sourceFileName
	.word	389		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2775:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	2667,r13		! source line 2667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2776 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2777 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2777  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2779		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2779
!	jmp	_Label_2778
_Label_2778:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2780
_Label_2779:
! ELSE...
	mov	2674,r13		! source line 2674
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2781 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2781  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2780:
! RETURN STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2782
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	-12
	.word	4
	.word	_Label_2785
	.word	-16
	.word	4
	.word	_Label_2786
	.word	-20
	.word	4
	.word	0
_Label_2782:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	2680,r13		! source line 2680
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2787 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2788 = _temp_2787 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_2789 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2790 = _temp_2789 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0RE",r10
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2793 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2792  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2791  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2791  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2794
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	16
	.word	4
	.word	_Label_2798
	.word	-16
	.word	4
	.word	_Label_2799
	.word	-20
	.word	4
	.word	_Label_2800
	.word	-9
	.word	1
	.word	_Label_2801
	.word	-24
	.word	4
	.word	_Label_2802
	.word	-28
	.word	4
	.word	_Label_2803
	.word	-32
	.word	4
	.word	_Label_2804
	.word	-36
	.word	4
	.word	_Label_2805
	.word	-40
	.word	4
	.word	0
_Label_2794:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2800:
	.byte	'C'
	.ascii	"_temp_2791\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2805:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	2699,r13		! source line 2699
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0IF",r10
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_2809 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2810) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2809  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2808  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2808 then goto _Label_2807 else goto _Label_2806
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2806
	jmp	_Label_2807
_Label_2806:
! THEN...
	mov	2705,r13		! source line 2705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2811 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2811  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2705,r13		! source line 2705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2807:
! RETURN STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2812
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	-16
	.word	4
	.word	_Label_2815
	.word	-20
	.word	4
	.word	_Label_2816
	.word	-24
	.word	4
	.word	_Label_2817
	.word	-9
	.word	1
	.word	_Label_2818
	.word	-28
	.word	4
	.word	0
_Label_2812:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2817:
	.byte	'C'
	.ascii	"_temp_2808\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	2712,r13		! source line 2712
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2821) then goto _Label_2820
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2820
!	jmp	_Label_2819
_Label_2819:
! THEN...
	mov	2739,r13		! source line 2739
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2823 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2823  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2739,r13		! source line 2739
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2820:
! IF STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0IF",r10
	mov	2743,r13		! source line 2743
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2827) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2826  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2826 == 1112300152 then goto _Label_2825		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2825
!	jmp	_Label_2824
_Label_2824:
! THEN...
	mov	2744,r13		! source line 2744
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2828 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2828  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2825:
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
	mov	2749,r13		! source line 2749
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2829) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
	mov	2750,r13		! source line 2750
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2830) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2831) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
	mov	2752,r13		! source line 2752
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2832) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2833) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2834) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0IF",r10
!   _temp_2837 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2837) then goto _Label_2836
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2836
!	jmp	_Label_2835
_Label_2835:
! THEN...
	mov	2758,r13		! source line 2758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2836:
! ASSIGNMENT STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2840
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2840
!	jmp	_Label_2839
_Label_2839:
! THEN...
	mov	2766,r13		! source line 2766
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2841 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2840:
! IF STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0IF",r10
!   _temp_2844 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2844) then goto _Label_2843
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2772,r13		! source line 2772
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2772,r13		! source line 2772
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   _temp_2848 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2848 then goto _Label_2847		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2847
!	jmp	_Label_2846
_Label_2846:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2849 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2847:
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0IF",r10
!   _temp_2852 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2852) then goto _Label_2851
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	2783,r13		! source line 2783
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2853 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2851:
! IF STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0IF",r10
!   _temp_2856 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2856 then goto _Label_2855		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2855
!	jmp	_Label_2854
_Label_2854:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2857 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2855:
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   _temp_2860 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2859 = _temp_2860 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2858 = _temp_2859 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2858 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2862		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2862
!	jmp	_Label_2861
_Label_2861:
! THEN...
	mov	2809,r13		! source line 2809
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2863 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2864 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2865 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2865  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2862:
! SEND STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0SE",r10
!   _temp_2866 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0IF",r10
	mov	2820,r13		! source line 2820
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2870) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2869  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2869 == 707406378 then goto _Label_2868		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	2821,r13		! source line 2821
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2871 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_2872 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2877 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2878 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2877  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2873:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2878 then goto _Label_2876		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2876
_Label_2874:
	mov	2828,r13		! source line 2828
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2881  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2881 then goto _Label_2880 else goto _Label_2879
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2879
	jmp	_Label_2880
_Label_2879:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_2884 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2880:
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2875:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2873
! END FOR
_Label_2876:
! IF STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0IF",r10
	mov	2842,r13		! source line 2842
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2887  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2887 == 707406378 then goto _Label_2886		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2843,r13		! source line 2843
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2843,r13		! source line 2843
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! FOR STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2895 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2896 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2895  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2891:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2896 then goto _Label_2894		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2894
_Label_2892:
	mov	2849,r13		! source line 2849
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0IF",r10
	mov	2853,r13		! source line 2853
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2899  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2899 then goto _Label_2898 else goto _Label_2897
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2897
	jmp	_Label_2898
_Label_2897:
! THEN...
	mov	2854,r13		! source line 2854
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2854,r13		! source line 2854
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
!   _temp_2902 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2898:
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2893:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2891
! END FOR
_Label_2894:
! IF STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0IF",r10
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2905  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2905 == 707406378 then goto _Label_2904		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2863,r13		! source line 2863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2907 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2907  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0SE",r10
!   _temp_2908 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
	mov	2869,r13		! source line 2869
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2909
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2911
	.word	12
	.word	4
	.word	_Label_2912
	.word	-16
	.word	4
	.word	_Label_2913
	.word	-20
	.word	4
	.word	_Label_2914
	.word	-24
	.word	4
	.word	_Label_2915
	.word	-28
	.word	4
	.word	_Label_2916
	.word	-32
	.word	4
	.word	_Label_2917
	.word	-36
	.word	4
	.word	_Label_2918
	.word	-40
	.word	4
	.word	_Label_2919
	.word	-9
	.word	1
	.word	_Label_2920
	.word	-44
	.word	4
	.word	_Label_2921
	.word	-48
	.word	4
	.word	_Label_2922
	.word	-52
	.word	4
	.word	_Label_2923
	.word	-56
	.word	4
	.word	_Label_2924
	.word	-60
	.word	4
	.word	_Label_2925
	.word	-64
	.word	4
	.word	_Label_2926
	.word	-68
	.word	4
	.word	_Label_2927
	.word	-72
	.word	4
	.word	_Label_2928
	.word	-76
	.word	4
	.word	_Label_2929
	.word	-10
	.word	1
	.word	_Label_2930
	.word	-80
	.word	4
	.word	_Label_2931
	.word	-84
	.word	4
	.word	_Label_2932
	.word	-88
	.word	4
	.word	_Label_2933
	.word	-92
	.word	4
	.word	_Label_2934
	.word	-96
	.word	4
	.word	_Label_2935
	.word	-100
	.word	4
	.word	_Label_2936
	.word	-104
	.word	4
	.word	_Label_2937
	.word	-108
	.word	4
	.word	_Label_2938
	.word	-112
	.word	4
	.word	_Label_2939
	.word	-116
	.word	4
	.word	_Label_2940
	.word	-120
	.word	4
	.word	_Label_2941
	.word	-124
	.word	4
	.word	_Label_2942
	.word	-128
	.word	4
	.word	_Label_2943
	.word	-132
	.word	4
	.word	_Label_2944
	.word	-136
	.word	4
	.word	_Label_2945
	.word	-140
	.word	4
	.word	_Label_2946
	.word	-144
	.word	4
	.word	_Label_2947
	.word	-148
	.word	4
	.word	_Label_2948
	.word	-152
	.word	4
	.word	_Label_2949
	.word	-156
	.word	4
	.word	_Label_2950
	.word	-160
	.word	4
	.word	_Label_2951
	.word	-164
	.word	4
	.word	_Label_2952
	.word	-168
	.word	4
	.word	_Label_2953
	.word	-172
	.word	4
	.word	_Label_2954
	.word	-176
	.word	4
	.word	_Label_2955
	.word	-180
	.word	4
	.word	_Label_2956
	.word	-184
	.word	4
	.word	_Label_2957
	.word	-188
	.word	4
	.word	_Label_2958
	.word	-192
	.word	4
	.word	_Label_2959
	.word	-196
	.word	4
	.word	_Label_2960
	.word	-200
	.word	4
	.word	_Label_2961
	.word	-204
	.word	4
	.word	_Label_2962
	.word	-208
	.word	4
	.word	_Label_2963
	.word	-212
	.word	4
	.word	_Label_2964
	.word	-216
	.word	4
	.word	_Label_2965
	.word	-220
	.word	4
	.word	_Label_2966
	.word	-224
	.word	4
	.word	_Label_2967
	.word	-228
	.word	4
	.word	_Label_2968
	.word	-232
	.word	4
	.word	_Label_2969
	.word	-236
	.word	4
	.word	_Label_2970
	.word	-240
	.word	4
	.word	_Label_2971
	.word	-244
	.word	4
	.word	_Label_2972
	.word	-248
	.word	4
	.word	_Label_2973
	.word	-252
	.word	4
	.word	_Label_2974
	.word	-256
	.word	4
	.word	_Label_2975
	.word	-260
	.word	4
	.word	_Label_2976
	.word	-264
	.word	4
	.word	_Label_2977
	.word	-268
	.word	4
	.word	0
_Label_2909:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2910:
	.ascii	"Pself\0"
	.align
_Label_2911:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2919:
	.byte	'C'
	.ascii	"_temp_2899\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2929:
	.byte	'C'
	.ascii	"_temp_2881\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2966:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2967:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2969:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2977:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
