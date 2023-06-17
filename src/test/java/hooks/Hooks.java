package hooks;

import com.aventstack.extentreports.gherkin.model.Scenario;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;

public class Hooks {
    /*
    Hooks : Her bir Scenario yada Scenario Outline dan ONCE yada SONRA calismasmasini istedigim metotlar konur
    @Before ve @After metotlarint icecir
    Burda onemli olan raporlama isleminin ekran goruntusuyle birlikde Hooks yardimiyla yapilmasidir
• */
    @Before
    public void setUpScenarios(){
        System.out.println("Before Metotu");
    }
    @After
    public void tearDownScenarios (Scenario scenario){
        final byte[] failedScreenshot = ((TakesScreenshot) Driver.getDriver ()).getScreenshotAs(OutputType.BYTES);
        //scenario.attach(failedScreenshot,"image/png","failed_scenario"+scenario.getName());

    }
}
