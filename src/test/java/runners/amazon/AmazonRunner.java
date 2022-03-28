package runners.amazon;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features/features/com.amazon",
        glue = "stepdefinitions/amazonsteps",
        dryRun = false,
        tags = "@amazon",
        plugin = {"pretty","html:target/uiReport.html","rerun:target/uiFailedTest.txt"}
)

public class AmazonRunner {
}
