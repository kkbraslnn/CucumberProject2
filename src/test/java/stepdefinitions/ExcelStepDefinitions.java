package stepdefinitions;

import io.cucumber.java.en.Given;
import org.junit.Assert;
import pages.HomePage;
import pages.LoginPage;
import utilities.ConfigReader;
import utilities.Driver;
import utilities.ExcelUtils;
import utilities.ReusableMethods;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ExcelStepDefinitions {
    //page objelerini olustur
    HomePage  HomePage;
    LoginPage LoginPage;
    ExcelUtils excelUtils;
    List<Map<String,String>> excelData;




    @Given("kullanici {string} bilgileri ile giris yapar")
    public void kullanici_bilgileri_ile_giris_yapar(String sayfaAdi) throws IOException {
        String path="./src/test/resources/testdata/mysmoketestdata.xlsx";
       // String sayfa = sayfaAdi;
        excelUtils= new ExcelUtils(path,sayfaAdi);
        excelData=excelUtils.getDataList();
        for(Map<String,String> data:excelData){
            //ana sayfaya git
            Driver.getDriver().get(ConfigReader.getProperty("app_url"));
            HomePage = new HomePage();
            LoginPage = new LoginPage();
            //ana sayfaya login butonuna tikla
            HomePage.firstLogin.click();
           // ReusableMethods.waitFor(1);
            //emaili gonder
            LoginPage.email.sendKeys(data.get("username"));
           // ReusableMethods.waitFor(1);
            //sifre gonder
            LoginPage.password.sendKeys(data.get("password"));
           // ReusableMethods.waitFor(1);
            //login butonuna tikla
            LoginPage.login.click();
           // ReusableMethods.waitFor(1);
            //giris yapildi.giris yapildigini verify et
            //id gorunur ise giris basarilidir
            Assert.assertTrue(HomePage.userID.isDisplayed());
            ReusableMethods.getScreenshot("login_goruntusu");
            HomePage.userID.click();
          //  ReusableMethods.waitFor(1);
            pages.HomePage.logOutLink.click();
         //   ReusableMethods.waitFor(1);
            HomePage.OK.click();
         //   ReusableMethods.waitFor(1);
            Driver.closeDriver();


        }


    }
}
