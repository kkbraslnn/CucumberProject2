package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class HomePage {
    public HomePage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }
        @FindBy(xpath = "(//a[@role='button'])[1]")
        public static WebElement firstLogin;

        @FindBy(xpath = "dropdown-basic-button")
        public static WebElement userID;

        @FindBy(xpath = "(//a[text()='LogOut']")
        public static WebElement logOutLink;

        @FindBy(xpath = "(//button[contains(text(),'OK')]")
        public static WebElement OK;


}

