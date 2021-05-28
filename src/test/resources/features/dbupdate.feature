@dbupdate
  Feature: Hotel Verilerini Guncelleme
    Scenario:kullanici hotel verilerini gunceller
      Given kullanici dbutils ile veritabanina baglanir
      And kullanici id degeri "1" olan verinin "ContactNameSurname" bilgisini "Batch5" ile günceller