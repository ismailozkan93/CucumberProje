package database_stepdefinitions;

import io.cucumber.java.en.Given;
import utilities.DBUtils;

import java.sql.SQLException;

public class DbCreateStepDef {
    @Given("kullanici yeni bir hotel olusturur")
    public void kullanici_yeni_bir_hotel_olusturur() throws SQLException {
        DBUtils.createConnection();
        String query="INSERT INTO dbo.tHOTELROOMRESERVATION (Code, Name, Adress, Email, IDGroup,CreateDate,CreateUser )\n" +
                "VALUES ('113', 'Batch5', 'Cikmaz sok.','012345','batch5@gmail.com',1132020,'2020-11-03 00:00:00',4)";
        DBUtils.executeInsertion(query);
    }



}
