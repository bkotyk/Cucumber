package stepdefinitions.webordersteps;

import org.junit.After;
import org.junit.Before;
import utils.DriverHelper;

import javax.xml.ws.BindingType;

public class HookWebOrder {
    @Before
    public void beforeScenario(){
        System.out.println("It runs before scenario");

    }
    @After
    public void afterScenario(){
        DriverHelper.tearDown();
        System.out.println("it runs after scenario");
    }
}
