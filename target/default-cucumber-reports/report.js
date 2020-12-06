$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/dbokuma.feature");
formatter.feature({
  "name": "Veri Okuma",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@dbokuma"
    }
  ]
});
formatter.scenario({
  "name": "kullanici hotel tablosundaki verileri okur",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@dbokuma"
    }
  ]
});
formatter.step({
  "name": "kullanici veritabanina baglanir",
  "keyword": "Given "
});
formatter.match({
  "location": "database_stepdefinitions.DbReadStepDef.kullanici_veritabanina_baglanir()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "kullanici \"tHOTEL\" tablosundaki \"Email\" verilerini alir",
  "keyword": "And "
});
formatter.match({
  "location": "database_stepdefinitions.DbReadStepDef.kullanici_tablosundaki_verilerini_alir(java.lang.String,java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "kullanici \"Name\" sutunundaki verileri okur",
  "keyword": "And "
});
formatter.match({
  "location": "database_stepdefinitions.DbReadStepDef.kullanici_sutunundaki_verileri_okur(java.lang.String)"
});
formatter.result({
  "error_message": "com.microsoft.sqlserver.jdbc.SQLServerException: The column name Name is not valid.\r\n\tat com.microsoft.sqlserver.jdbc.SQLServerException.makeFromDriverError(SQLServerException.java:234)\r\n\tat com.microsoft.sqlserver.jdbc.SQLServerResultSet.findColumn(SQLServerResultSet.java:698)\r\n\tat com.microsoft.sqlserver.jdbc.SQLServerResultSet.getObject(SQLServerResultSet.java:2460)\r\n\tat database_stepdefinitions.DbReadStepDef.kullanici_sutunundaki_verileri_okur(DbReadStepDef.java:37)\r\n\tat ✽.kullanici \"Name\" sutunundaki verileri okur(file:///C:/Users/Ismail/IdeaProjects/CucumberProje/src/test/resources/features/dbokuma.feature:6)\r\n",
  "status": "failed"
});
});