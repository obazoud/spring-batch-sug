package fr.sug.springbatch.plainoldbatch;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

/**
 * Read beer recipes data from XML file and insert it into a database.
 * There are many defects within this code.
 */
public class PlainOldBatch {

    private SimpleJdbcTemplate jdbcTemplate;

    public static void main(String[] args) throws JDOMException, IOException, SQLException {
        // Parse args:
        String inputFileName = args[0];

        new PlainOldBatch().run(inputFileName);

    }

    /**
     * Init Spring for batch.
     */
    private PlainOldBatch() {
        ApplicationContext spring = new ClassPathXmlApplicationContext("fr/sug/springbatch/plainoldbatch/spring.xml");
        jdbcTemplate = (SimpleJdbcTemplate) spring.getBean("jdbcTemplate");
    }

    /**
     * Run that plain old batch.
     *
     * @param inputFileName file to read
     * @throws JDOMException XML parsing problem
     * @throws IOException   IO problem
     * @throws SQLException  SQL problem
     */
    @SuppressWarnings("unchecked")
    private void run(String inputFileName) throws JDOMException, IOException, SQLException {
        // Read XML file:
        Document dom = new SAXBuilder(false).build(inputFileName);

        // Get the recipes:
        List<Element> recipes = dom.getRootElement().getChildren();

        // Write recipes:
        for (Element recipe : recipes) {
            String recipeId = insertRecipe(recipe);

            // Write hops for recipe:
            List<Element> hops = recipe.getChild("HOPS").getChildren();
            for (Element hop : hops) {
                insertHop(hop, recipeId);
            }

            // Write fermentables for recipe:
            List<Element> fermentables = recipe.getChild("FERMENTABLES").getChildren();
            for (Element fermentable : fermentables) {
                insertFermentable(fermentable, recipeId);
            }
        }
    }

    private String insertRecipe(Element recipe) {
        String id = generateUniqueID();
        String name = val(recipe, "NAME");
        String version = val(recipe, "VERSION");
        String type = val(recipe, "TYPE");
        String brewer = val(recipe, "BREWER");
        String boilSize = val(recipe, "BOIL_SIZE");
        String boilTime = val(recipe, "BOIL_TIME");
        String efficiency = val(recipe, "EFFICIENCY");
        jdbcTemplate.update("insert into RECIPE ( ID, NAME, VERSION, TYPE, BREWER, BOILSIZE, BOILTIME, EFFICIENCY ) " +
                "values ( ?, ?, ?, ?, ?, ?, ?, ? )",
                id, name, version, type, brewer, boilSize, boilTime, efficiency);
        return id;
    }

    private void insertHop(Element hop, String recipeId) {
        String id = generateUniqueID();
        String name = val(hop, "NAME");
        String version = val(hop, "VERSION");
        String origin = val(hop, "ORIGIN");
        String alpha = val(hop, "ALPHA");
        String amount = val(hop, "AMOUNT");
        String time = val(hop, "TIME");
        String type = val(hop, "TYPE");
        jdbcTemplate.update("insert into HOP ( ID, RECIPEID, NAME, VERSION, ORIGIN, ALPHA, AMOUNT, TIME, TYPE ) " +
                "values ( ?, ?, ?, ?, ?, ?, ?, ?, ? )",
                id, recipeId, name, version, origin, alpha, amount, time, type);
    }

    private void insertFermentable(Element hop, String recipeId) {
        String id = generateUniqueID();
        String name = val(hop, "NAME");
        String version = val(hop, "VERSION");
        String type = val(hop, "TYPE");
        String amount = val(hop, "AMOUNT");
        String yield = val(hop, "YIELD");
        String color = val(hop, "COLOR");

        jdbcTemplate.update("insert into FERMENTABLE ( ID, RECIPEID, NAME, VERSION, TYPE, AMOUNT, YIELD, COLOR ) " +
                "values ( ?, ?, ?, ?, ?, ?, ?, ? )",
                id, recipeId, name, version, type, amount, yield, color);
    }

    private String generateUniqueID() {
        return UUID.randomUUID().toString();
    }

    private String val(Element element, String childName) {
        return element.getChild(childName).getValue();
    }

}
