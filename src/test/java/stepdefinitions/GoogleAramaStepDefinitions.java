package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.GooglePage;
import utilities.ConfigurationReader;
import utilities.Driver;

public class GoogleAramaStepDefinitions {

    GooglePage googlePage = new GooglePage();


    @Given("kullanici google sayfasina gider.")
    public void kullanici_google_sayfasina_gider() {
        Driver.getDriver().get(ConfigurationReader.getProperty("google_link"));
        //System.out.println("Google Sayfasina gider methodu calisti");
    }

    @Given("techproed aramasi yapar")
    public void techproed_aramasi_yapar() {
        googlePage.aramaKutusu.sendKeys(ConfigurationReader.getProperty("google_kelime") + Keys.ENTER);
        //System.out.println("Techproeducation aramasi yapti");
    }


    @Then("sayfa basligini kontrol eder.")
    public void sayfa_basligini_kontrol_eder() {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        String baslik = Driver.getDriver().getTitle();
        System.out.println(baslik);
        Assert.assertTrue(baslik.contains(ConfigurationReader.getProperty("google_kelime")));
    }

    //System.out.println("Sayfa basligini kontrol etti");

    @Given("camera aramasi yapar")
    public void camera_aramasi_yapar() {

    }
    }

