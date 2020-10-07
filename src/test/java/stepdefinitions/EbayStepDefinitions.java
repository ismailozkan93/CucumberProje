package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import pages.EbayPage;
import utilities.ConfigurationReader;
import utilities.Driver;

public class EbayStepDefinitions {
    EbayPage ebayPage=new EbayPage();
    @Given("kullanici {string} sayfasina gider.")
    public void kullanici_sayfasina_gider(String string) {
        Driver.getDriver().get(string);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Given("arama kutusunda {string} yapar ve arar.")
    public void arama_kutusunda_yapar_ve_arar(String string) {
        ebayPage.aramaKutusu.sendKeys(string+ Keys.ENTER);
    }

    @Then("sonuc sayisini ekrana yazdirir.")
    public void sonuc_sayisini_ekrana_yazdirir() {
        String sonuc=ebayPage.sonucSayisi.getText();
        System.out.println(sonuc);
    }








}
