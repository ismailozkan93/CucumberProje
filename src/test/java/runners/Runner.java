package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"html:target/default-cucumber-reports",
                "json:target/json-reports/cucumber.json",
                "junit:target/xml-report/cucumber.xml"},//rapor olusturmak icin
        features="src/test/resources/features", //features klasörünün adresini
        glue = "stepdefinitions", // testlerinin içerisinde olduğu paketin ismi
        tags = "@hotelreservationcreate",//sectiginiz tag'a ait testler calistirilir.
        dryRun = false

        //dryRun=true olursa eksik olan methodlari bulur ve size öneride bulunur.
        //dryRun=false olursa testi calistirir.

)


public class Runner {



}
