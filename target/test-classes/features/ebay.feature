@ebayarama
Feature: Amazon Birden Fazla Arama
  Scenario Outline:T06_kullanici ebay'da arama yapar ve sonuclari ekrani gösterir.
  Given kullanici "https://www.ebay.com/" sayfasina gider.
  And arama kutusunda "<kelimeler>" yapar ve arar.
  Then sonuc sayisini ekrana yazdirir.

    Examples: Aranilcak Urunler
    |kelimeler|
    |araba    |
    |bebek arabasi|
    |bisiklet|
