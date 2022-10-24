header Main

  uses System, Thread, Synch
  const
    NO_OF_CUSTOMERS = 10
    CHAIRS = 5

  var
    StartSem: Semaphore
    FinishSem: Semaphore
    Customers: Semaphore
    Barbers: Semaphore
    Mutexxx: Semaphore
    waiting: int
    BarberShopMon: BarberShopMonitor
    GammingParlorMon: GammingParlorMonitor

  functions
    main ()
    BarberShopInit ()
    BarberShopTest ()
    CutHair ()
    GetHaircut ()
    WasteTime (cont: int)
    Barber ()
    Customer ()
    GammingParlorInit ()
    GammingParlorTest ()
    Backgammon ()
    Risk ()
    Monopoly ()
    Pictionary ()



endHeader
