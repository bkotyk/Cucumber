package pages.openmrspages;

import org.bouncycastle.crypto.engines.EthereumIESEngine;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class OpenMRSLoginPage {
    public OpenMRSLoginPage(WebDriver driver){
        PageFactory.initElements(driver,this);
    }

    @FindBy(id = "username")
    private WebElement userName;

    @FindBy(id = "password")
    private WebElement password;

    @FindBy(id = "Inpatient Ward")
    private WebElement InpatientWardButton;

    @FindBy(id="loginButton")
    private WebElement loginButton;

    public void login(String userName, String password){
    this.userName.sendKeys(userName);
    this.password.sendKeys(password);
    InpatientWardButton.click();
    loginButton.click();

    }
}
