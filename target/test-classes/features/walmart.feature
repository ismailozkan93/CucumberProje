@walmart
  Feature: Walmartta Urun Arama
    Scenario Outline:  TC08_kullanici walmartta aramakutusu kullanarak arama yapar
      Given kullanici "https://walmart.com" sayfasina gider.
      And kullanici  walmart aramakutusuna "<urunismi>" yazar ve arar
      Then kullanici walmart sonuc sayisini ekrana yazdirir

      Examples: Test Verileri
        |urunismi|
        |watch|
        |calculator|
        |flower|