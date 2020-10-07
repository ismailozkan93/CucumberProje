@koalapalace
  Feature: Koala Palace
    Background:TC09_Koala Palace Admin Giris
      Given kullanici koalapalace admin sayfasina gider
      And kullanici kullaniciadi ve sifresini girer
      Then kullanici giris islemini gerceklestirir

      @hotelcreate
      Scenario:TC09_kullanici bilgileri girerek hotel olusturur
        Given kullanici hotelcreate sayfasina gider
        And kullanici code bolumune "1234" girer
        And kullanici name bolumune "test" girer
        And kullanici hotelcreate name bolumune "test" girer
        And kullanici hotelcreate adress bolumune "cikmaz sokak" girer
        And kullanici hotelcreate phone bolumune "0539123456" girer
        And kullanici hotelcreate email bolumune "hamza@tech.com" girer
        And kullanici hotelcreate idgroup bolumunde "Hotel Type1" secer
        And kullanici hotelcreate save butonuna tiklar
        Then kullanici hotelcreate kayit islemini assert eder

        @hotelroomcreate
        Scenario: TC09_kallnici bilgileri girerek hotel odasi olusturulur.
          Given kullanici hotelcreate room sayfasina gider
          And kullanici ID hotel bölümünde "WittingHotel" secer
          And kullanici roomcode bolumune "1234" girer
          And kullanici roomname bolumune "test" girer
          And kullanici Location bölümüne "Almanya" girer
          And kullanici description bölümüne "Merhabalar" girer
          And kullanici price bölümüne besyüz kutusunu tasir
          And kullanici room type bölümünde "Double" secer
          And kullanici MaxAdultcount bölümüne "2" girer
          And kullanici MaxChildcount bölümüne "2" girer
          And kullanici approved bölümünü onaylar.
          And kullanici hotelroomcreate save butonuna tiklar
          Then kullanici hotelroomcreate kayit islemini assert eder.

    @hotelreservationcreate
    Scenario: TC11_kullanici bilgileri girerek room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit islemini assert eder


    @hotelreservationcreate
      @hotelreservationnegativetests
    @hotelreservationnegativetest1
    Scenario: TC12_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
  #Bu adımı sildim : And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest2
    Scenario: TC13_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      #Bu adımı sildim :And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest3
    Scenario: TC14_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      #Bu adımı sildim :And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest4
    Scenario: TC15_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      #Bu adımı sildim :And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest5
    Scenario: TC16_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      #Bu adımı sildim :And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder



    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest6
    Scenario: TC17_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      #Bu adımı sildim :And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest7
    Scenario: TC18_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      #Bu adımı sildim :And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest8
    Scenario: TC19_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      #Bu adımı sildim :And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest9
    Scenario: TC20_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
     And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      #Bu adımı sildim : And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest10
    Scenario: TC21_kullanici iduser secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/10/2020" girer
      And kullanici roomreservation dateend bolumune "10/17/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      #Bu adımı sildim :And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

    @hotelreservationcreate
    @hotelreservationnegativetests
    @hotelreservationnegativetest11
    Scenario: TC22_kullanici email secmeden room reservation olusturur
      Given kullanici hotelroomreservation sayfasina gider
      And kullanici roomreservation iduser bolumunde "manager2" secer
      And kullanici roomreservation idhotelroom bolumunde "Hilton" secer
      And kullanici roomreservation price bolumune "500" girer
      And kullanici roomreservation datestart bolumune "10/30/2020" girer
      And kullanici roomreservation dateend bolumune "10/5/2020" girer
      And kullanici roomreservation adultamaount bolumune "2" girer
      And kullanici roomreservation childrenamount bolumune "3" girer
      And kullanici roomreservation namesurname bolumune "Hamza Yılmaz" girer
      And kullanici roomreservation phone bolumune "0500600700" girer
      And kullanici roomreservation email bolumune "hamza@gmail.com" girer
      And kullanici roomreservation notes bolumune "Testerlardan selam.." girer
      And kullanici roomreservation save butonuna tiklar
      Then kullanici roomreservation kayit isleminin basarisiz oldugunu assert eder

      @hotelsearch
      Scenario: TC23_kullanici hotellist sayfasinda code girerek hotel arar
        Given kullanici hotellist sayfasina gider
        And kullanici hotellist code bolumune "1234" girer
        And kullanici hotellist search butonuna tiklar
        Then kullanici hotellist bolumunundeki kayitlari inceler

    @hotelroomsearch
    Scenario: TC24_kullanici hotelroomlist sayfasinda verileri girerek hotelroom arar
      Given kullanici hotelroomlist sayfasina gider
      And kullanici hotelroomlist idhotelbolumunde "Star" secer
      And kullanici hotelroomlist code bolumune "12345" girer
      And kullanici hotelroomlist name bolumune "Techproed" girer
      And kullanici hotelroomlist location bolumune "USA" girer
      And kullanici hotelroomlist search butonuna tiklar
      Then kullanici hotelroomlist bolumundeki kayitlari inceler

    @hotelsearchnegative01
    Scenario: TC25_kullanici hotellist sayfasinda code girerek hotel arar
      Given kullanici hotellist sayfasina gider
      And kullanici hotellist code bolumune "-10" girer
      And kullanici hotellist search butonuna tiklar
      Then kullanici hotellist sonuc bolumunde kayit bulunamadi yazisini gorur

    @hotelreservationsearch
    Scenario: TC26_kullanici hotelreservationlist sayfasinda verileri girerek reservation arar
      Given kullanici hotelroomreservationlist sayfasina gider
      And kullanici hotelroomreservationlist hotelroomid bolumunde "team06" secer
      And kullanici hotelroomreservationlist arama kutusuna tiklar
      Then kullanici hotelroomreservationlist kayitlarini inceler

    @hoteledit
    Scenario: TC27_kullanici hoteledit sayfasinda verileri girerek hotel bilgilerini gunceller
      Given kullanici hoteledit "http://www.kaolapalace-qa-environment2.com/admin/HotelAdmin/Edit?Id=4" sayfasina gider
      And kullanici hoteledit code bolumunu "999" ile gunceller
      And kullanici hoteledit name bolumunu "sonDers" ile gunceller
      And kullanici hoteledit adress bolumunu "Cikmaz sk." ile gunceller
      And kullanici hoteledit phone bolumunu "0123456789" ile gunceller
      And kullanici hoteledit mail bolumunu "sonders@son.com" ile gunceller
      And kullanici hoteledit save butonuna tiklar
      Then kullanici hoteledit "Hotel was updated successfully" yazisini dogrular


    @hotelroomedit
    Scenario: TC28_kullanici hotelroomedit sayfasinda properties bolumundeki veriyi siler
      Given kullanici hotelroomedit "http://www.kaolapalace-qa-environment2.com/admin/HotelRoomAdmin/Edit?Id=13" sayfasina gider
      And kullanici hotelroomedit sayfasinda properties bolumune tiklar
      And kullanici hotelroomedit sayfasinda tip olarak "room prop1" secer
      And kullanici hotelroomedit sayfasinda code olarak "4444" girer
      And kullanici hotelroomedit sayfasinda value olarak "sistem bozuldu" girer
      And kullanici hotelroomedit sayfasinda save butonuna tiklar
      Then kullanici hotelroomedit sayfasinda properties bolumunde yeni kayit oldugunu assert eder


