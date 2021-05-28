package database_stepdefinitions;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import io.cucumber.java.en.Given;
import utilities.DBUtils;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbUpdateStepDef {

    @Given("kullanici dbutils ile veritabanina baglanir")
    public void kullanici_dbutils_ile_veritabanina_baglanir() throws SQLException {
        DBUtils.createConnection();
    }
    @Given("kullanici id degeri {string} olan verinin {string} bilgisini {string} ile günceller")
    public void kullanici_id_degeri_olan_verinin_bilgisini_ile_günceller(String string, String string2,String string3) {
        //string=1
        //string2=ContactNameSurname
        //string3=Batch5
        String query="SELECT" + string2 +"FROM dbo.tHOTELROOMRESERVATION";
        //DBUtils.executeQuery(query);
        //DBUtils.getResultSet().next();
        //System.out.println(DBUtils.getResultSet().getObject(string2).toString);

        /*Tüm ContactNameSurname verilerini ekrana yazdiralim.
        while(DBUtils.getResultset().next()){
        System.out.println(DBUtils.getResultSet().getObject(string2).toString);
        }
        * */

        String updateQuery="UPDATE dbo.tHOTELROOMRESERVATION SET "+string2+ " = '"+string3+"'WHERE IDHotelReservation"+string;
        //UPDATE dbo.tHOTELROOMRESERVATION SET ContactNameSurname='Batch 5' WHERE IDHotelReservation=1
        //DBUtils.executeQuery(updateQuery);





    }
}
