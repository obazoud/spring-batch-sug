package fr.sug.springbatch.example.writer;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.ItemSqlParameterSourceProvider;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcOperations;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import fr.sug.springbatch.example.beans.Recipe;

/**
 * Write recipe list into database.
 */
public class RecipeItemWriter implements ItemWriter<Recipe> {
    private static final Logger LOG = Logger.getLogger(RecipeItemWriter.class);
    private SimpleJdbcOperations simpleJdbcTemplate;
    private Map<String, String> sqlQueries;

    /**
     * Write each item in the chunk.
     *
     * @param items items to write
     * @throws Exception
     */
    @Override
    public void write(List<? extends Recipe> items) throws Exception {
        for (Recipe recipe : items) {
            LOG.debug("writing recipe: " + recipe.getName());
            writeItem(recipe, "recipeSql");
            writeItemList(recipe.getHops(), "hopSql");
            writeItemList(recipe.getFermentables(), "fermentableSql");
            writeItemList(recipe.getMiscs(), "miscSql");
            writeItemList(recipe.getYeasts(), "yeastSql");
            writeItem(recipe.getStyle(), "styleSql");
            writeItem(recipe.getEquipment(), "equipmentSql");
            writeItem(recipe.getMash(), "mashSql");
            writeItemList(recipe.getMash().getMashSteps(), "mashStepSql");
            writeItemList(recipe.getWaters(), "waterSql");
        }
    }

    @SuppressWarnings("unchecked")
    private void writeItem(Object item, String sqlId) {
        SqlParameterSource args = new BeanPropertyItemSqlParameterSourceProvider().createSqlParameterSource(item);
        String sql = sqlQueries.get(sqlId);
        simpleJdbcTemplate.batchUpdate(sql, new SqlParameterSource[]{args});
    }

    @SuppressWarnings("unchecked")
    private void writeItemList(Collection items, String sqlId) {
        List<SqlParameterSource> args = new ArrayList<SqlParameterSource>();
        ItemSqlParameterSourceProvider sqlParameterSource = new BeanPropertyItemSqlParameterSourceProvider();
        for (Object item : items) {
            args.add(sqlParameterSource.createSqlParameterSource(item));
        }
        String sql = sqlQueries.get(sqlId);
        simpleJdbcTemplate.batchUpdate(sql, args.toArray(new SqlParameterSource[args.size()]));
    }

    @Required
    public void setSqlQueries(Map<String, String> props) {
        this.sqlQueries = props;
    }

    @Required
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }
}
