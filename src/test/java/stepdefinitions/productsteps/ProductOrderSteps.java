package stepdefinitions.productsteps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import pages.productpages.ProductLoginPage;
import pages.productpages.ProductMainPage;
import pages.productpages.ProductOrderPage;
import utils.ConfigReader;
import utils.DriverHelper;

public class ProductOrderSteps {
    WebDriver driver= DriverHelper.getDriver();
    ProductLoginPage productLoginPage=new ProductLoginPage(driver);
    ProductMainPage productMainPage=new ProductMainPage(driver);
    ProductOrderPage productOrderPage=new ProductOrderPage(driver);


    @Given("the user navigates to product website homepage and clicks orderButton")
    public void the_user_navigates_to_product_website_homepage_and_clicks_order_button() {
     productLoginPage.login(ConfigReader.readProperty("productusername"),ConfigReader.readProperty("productpassword"));
     productMainPage.clickOrderButton();
    }
    @When("the user enters the product information {string} and {string}")
    public void the_user_enters_the_product_information_and(String productName, String quantity) {
        productOrderPage.sendProductInfo(productName, quantity);

    }
    @When("the user enters the address information {string},{string},{string},{string},{string}")
    public void the_user_enters_the_address_information(String customerName, String street, String city, String state, String zipCode) {
     productOrderPage.sendAddressInformation(customerName,street,city,state,zipCode);
    }
    @When("the user enters the cad information {string},{string},{string}")
    public void the_user_enters_the_cad_information(String type, String cardNumber, String expireDate) {
        productOrderPage.selectCard(type);
        productOrderPage.sendPaymentInformation(cardNumber,expireDate);
    }
    @Then("the user validated success message")
    public void the_user_validated_success_message() {
        productOrderPage.clickProcessButton();
        Assert.assertEquals("New order has been successfully added.", productOrderPage.getSuccessMessage());

    }
    @Then("the user validates the product details {string},{string},{string},{string},{string},{string},{string},{string},{string},{string}")
    public void the_user_validates_the_product_details(String customerName,String productName, String quantity,  String street,
                                                       String city, String state, String zipCode, String cardType, String cardNumber, String expireDate) {
      productMainPage.clickviewAllOrders();
      productOrderPage.productInfo(customerName,productName,quantity,street,city,state,zipCode,cardType,cardNumber,expireDate);

    }
}
