package runners.product;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/features/com.product",
        glue = "stepdefinitions/productsteps",
        dryRun = false,
        tags = "@productprojectOutline",
        plugin = {"pretty","html:target/uiReport.html","rerun:target/uiFailedTest.txt"}
)

public class ProductRunner {

}
