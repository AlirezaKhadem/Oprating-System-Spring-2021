code Main

  -- OS Class: Project 3
  --
  -- S.alireza khadem 97100398
  --

-----------------------------  Main  ----------------------------------------

  function main ()
      -- FatalError ("Need to implement")
      print ("OS Class: project 3\t S.Alireza Khadem 97100398\n")

      InitializeScheduler ()

      --  uncomment two next line to test BarberShop Problem
      --  BarberShopInit ()
      --  BarberShopTest ()

      --  uncomment two next line to test GamminParlor Problem
      GammingParlorInit ()
      GammingParlorTest ()
    endFunction

  function BarberShopInit()

      BarberShopMon = new BarberShopMonitor
      BarberShopMon.Init ()

      StartSem = new Semaphore
      FinishSem = new Semaphore
      Customers = new Semaphore
      Barbers = new Semaphore
      Mutexxx = new Semaphore

      StartSem.Init (0)
      FinishSem.Init (0)
      Customers.Init (0)
      Barbers.Init (0)
      Mutexxx.Init (1)

      waiting = 0
    endFunction

  var 
    customers_array: array [NO_OF_CUSTOMERS] of Thread = new array of Thread {NO_OF_CUSTOMERS of new Thread }
    barber: Thread = new Thread
  function BarberShopTest ()

      var 
        index: int
        thread_name: String
        --  oldStatus: int

      print ("\nBarber shop Example...\n")

      barber.Init ("barber")
      barber.Fork (Barber, NO_OF_CUSTOMERS)

      for index = 1 to NO_OF_CUSTOMERS
        printInt (index)
        if index < 10
          print ("   ")
        else
          print ("  ")
        endIf
      endFor
      print ("\n")

      for index = 0 to NO_OF_CUSTOMERS - 1
          
        thread_name = "customer- " + (index + 1)
        --  thread_name[9] = intToChar(index + 1)
        
        customers_array[index].Init (thread_name)
        customers_array[index].Fork (Customer, index)

        WasteTime  (5000)
      endFor

      --  oldStatus = SetInterruptsTo (DISABLED)
      --    print ("\nThe currently running thread is ")
      --    print (currentThread.name)
      --    print ("\n")
      --    PrintReadyList ()
      --  oldStatus = SetInterruptsTo (oldStatus)

      for index = 1 to 10
        currentThread.Yield ()
        --  print ("\n..Main..\n")
      endFor

      -- Print the readyList at this point...
      --  PrintReadyList ()
      --  currentThread.Print()

      ThreadFinish ()
    endFunction

  function CutHair()
      -- print start of barber work
      --  print ("start of barber work\n")
      StartSem.Up ()
      WasteTime (10000)
      FinishSem.Down ()
      -- print end of barber work
      --  print ("end of barber work \n")
    endFunction

  function GetHaircut()
      StartSem.Down ()
      BarberShopMon.status[currentThread.initialArgument] = BEING_HAIRCUT
      BarberShopMon.PrintAllStatus ()
      -- print start of customer getting haircut
      --  print ("start of customer getting haircut \n")
      WasteTime (10000)
      -- print end of customer getting haircut
      --  print ("end of customer getting haircut \n")
      BarberShopMon.status[currentThread.initialArgument] = FINISH_HAIRCUT
      BarberShopMon.PrintAllStatus ()
      FinishSem.Up ()
    endFunction

  function WasteTime(cont: int)
      var 
        index: int
      for index = 1 to cont
        endFor
    endFunction

  function Barber()
      while true
        Customers.Down ()
        Mutexxx.Down ()
        waiting = waiting - 1
        Barbers.Up ()
        Mutexxx.Up ()
        CutHair ()
      endWhile
    endFunction

  function Customer()
      Mutexxx.Down ()
      BarberShopMon.status[currentThread.initialArgument] = ENTER
      BarberShopMon.PrintAllStatus ()
      if waiting < CHAIRS
        waiting = waiting + 1
        BarberShopMon.status[currentThread.initialArgument] = SIT_IN_WAITING_CHAIR
        BarberShopMon.PrintAllStatus ()
        Customers.Up ()
        Mutexxx.Up ()
        Barbers.Down ()
        GetHaircut ()
      else
        BarberShopMon.status[currentThread.initialArgument] = LEAVE
        BarberShopMon.PrintAllStatus ()
        Mutexxx.Up ()
      endIf
      --  Mutexxx.Down ()
    endFunction

  
  enum INDENTS_TO_ENTER, ENTER, SIT_IN_WAITING_CHAIR, BEING_HAIRCUT, FINISH_HAIRCUT, LEAVE
  class BarberShopMonitor
      superclass Object
      fields
        status: array [NO_OF_CUSTOMERS] of int
      methods
        Init ()
        PrintAllStatus ()
    endClass

  behavior BarberShopMonitor

      method Init ()
        status = new array [NO_OF_CUSTOMERS] of int {NO_OF_CUSTOMERS of INDENTS_TO_ENTER}
        endMethod

      method PrintAllStatus ()
        -- Print a single line showing the status of all philosophers.
        -- I = Intends to enter
        -- E = Enter
        -- S = Sit in waiting chair
        -- B = Begin haircut
        -- F = Finish haircut
        -- L = Leave
        -- start = Barber begins haircut
        -- end = Barber ends haircut
        var
          index: int
          oldStatus: int

        
        oldStatus = SetInterruptsTo (DISABLED)
        for index = 0 to NO_OF_CUSTOMERS - 1
          switch status [index]
              case INDENTS_TO_ENTER:
                print ("I   ")
                break
              case ENTER:
                print ("E   ")
                break
              case SIT_IN_WAITING_CHAIR:
                print ("S   ")
                break
              case BEING_HAIRCUT:
                print ("B   ")
                break
              case FINISH_HAIRCUT:
                print ("F   ")
                break
              case LEAVE:
                print ("L   ")
                break
              default:
                print ("*   ")
                break
            endSwitch 
        endFor 
        print ("\n")
        oldStatus = SetInterruptsTo (oldStatus)
      endMethod

    endBehavior

  var 
    groups_array: array [8] of Thread = new array of Thread {8 of new Thread}
  function GammingParlorInit()
      GammingParlorMon = new GammingParlorMonitor
      GammingParlorMon.Init ()
    endFunction

  function GammingParlorTest()
      var 
        index: int
      
      index = 0

      groups_array[0].Init ("group-A")
      groups_array[0].Fork (Backgammon, 0)

      groups_array[1].Init ("group-B")
      groups_array[1].Fork (Backgammon, 1)

      groups_array[2].Init ("group_C")
      groups_array[2].Fork (Risk, 2)

      groups_array[3].Init ("group_D")
      groups_array[3].Fork (Risk, 3)

      groups_array[4].Init ("group_E")
      groups_array[4].Fork (Monopoly, 4)

      groups_array[5].Init ("group_F")
      groups_array[5].Fork (Risk, 5)

      groups_array[6].Init ("group_G")
      groups_array[6].Fork (Pictionary, 6)

      groups_array[7].Init ("group_C")
      groups_array[7].Fork (Pictionary, 7)

      ThreadFinish ()
    endFunction

  function Backgammon()
      var 
        index: int

        for index = 1 to 5
          GammingParlorMon.Request(4)
          currentThread.Yield ()
          --   ...play game (no actual work)...
          GammingParlorMon.Return (4)
          currentThread.Yield ()
        endFor
    endFunction
  
  function Risk()
      var 
        index: int

        for index = 1 to 5
          GammingParlorMon.Request(5)
          currentThread.Yield ()
          --   ...play game (no actual work)...
          GammingParlorMon.Return (5)
          currentThread.Yield ()
        endFor
    endFunction

  function Monopoly()
      var 
        index: int

        for index = 1 to 5
          GammingParlorMon.Request(2)
          currentThread.Yield ()
          --   ...play game (no actual work)...
          GammingParlorMon.Return (2)
          currentThread.Yield ()
        endFor
    endFunction

  function Pictionary()
      var 
        index: int

        for index = 1 to 5 
          GammingParlorMon.Request(1)
          currentThread.Yield ()
          --   ...play game (no actual work)...
          GammingParlorMon.Return (1)
          currentThread.Yield ()
        endFor
    endFunction

  class GammingParlorMonitor
      superclass Object
      fields
        MonitorLock: Mutex
        AvailableDice: int
        NumberOfGroupWaiting: int
        HeaderOfWaitingGroup: Condition
        OtheerOfWaitingGroup: Condition
      methods
        Init ()
        Request (numberOfDice: int)
        Return (numberOfDice: int)
    endClass

  behavior GammingParlorMonitor
      method Init ()
          MonitorLock = new Mutex
          MonitorLock.Init ()

          AvailableDice = 8
          NumberOfGroupWaiting = 0
          
          HeaderOfWaitingGroup = new Condition
          OtheerOfWaitingGroup = new Condition

          HeaderOfWaitingGroup.Init ()
          OtheerOfWaitingGroup.Init ()
          
        endMethod

      method Return(numberOfDice: int)
          MonitorLock.Lock ()

          AvailableDice = AvailableDice + numberOfDice
          HeaderOfWaitingGroup.Signal (&MonitorLock)

          print (currentThread.name)
          print (" releases and adds back ")
          printInt (numberOfDice)
          print ("\n")

          print ("-------------------------------------Number of dice now avail = ")
          printInt (AvailableDice)
          print ("\n")

          MonitorLock.Unlock ()
        endMethod
        
        method Request(numberOfDice: int)
            var
              flag: bool
            MonitorLock.Lock ()

            print (currentThread.name)
            print (" request ")
            printInt (numberOfDice)
            print ("\n")

            print ("-------------------------------------Number of dice now avail = ")
            printInt (AvailableDice)
            print ("\n")

            NumberOfGroupWaiting = NumberOfGroupWaiting + 1

            if NumberOfGroupWaiting > 1
              OtheerOfWaitingGroup.Wait (&MonitorLock)
            endIf

            flag = false
            while AvailableDice < numberOfDice
              HeaderOfWaitingGroup.Wait (&MonitorLock)
              flag = true
              MonitorLock.Unlock ()
            endWhile

            if flag
              MonitorLock.Lock ()
            endIf

            
            AvailableDice = AvailableDice - numberOfDice
            NumberOfGroupWaiting = NumberOfGroupWaiting - 1
            OtheerOfWaitingGroup.Signal (&MonitorLock)

            print (currentThread.name)
            print (" proceed ")
            printInt (numberOfDice)
            print ("\n")

            print ("-------------------------------------Number of dice now avail = ")
            printInt (AvailableDice)
            print ("\n")

            MonitorLock.Unlock ()
          endMethod

    endBehavior


endCode

