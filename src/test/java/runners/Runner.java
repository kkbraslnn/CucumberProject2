package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {

        "pretty",//raporlarin daha okunakli olmasi icin
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber.json",
        "junit:target/xml-report /cucumber. xml"
        },
        monochrome=true,//raporlarin konsol da daha okunakli cikmasi icin
        features = "./src/test/resources/features",//feature folder path
        glue = {"stepdefinitions","hooks"},//stepdefinitions path
        tags = "@data_tables",
        dryRun = false


)
public class Runner {
}
//Bu sinif Test caseleri RUN etmek icin kullanilir.
//Ve konfigurasyonlar icin kullanilir.