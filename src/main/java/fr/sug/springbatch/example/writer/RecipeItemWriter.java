package fr.sug.springbatch.example.writer;

import fr.sug.springbatch.example.beans.Recipe;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.ItemSqlParameterSourceProvider;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcOperations;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Write recipe list into database.
 */
public class RecipeItemWriter implements ItemWriter<Recipe> {
    private SimpleJdbcOperations simpleJdbcTemplate;
    private String recipeSql;
    private String hopSql;
    private String fermentableSql;
    private String miscSql;
    private String yeastSql;
    private String styleSql;
    private String equipmentSql;
    private String mashSql;
    private String mashStepSql;
    private String waterSql;

    /**
     * Write each item in the chunk.
     *
     * @param items items to write
     * @throws Exception
     */
    @Override
    public void write(List<? extends Recipe> items) throws Exception {
        for (Recipe recipe : items) {

            writeItem(recipe, recipeSql);
            writeItemList(recipe.getHops(), hopSql);
            writeItemList(recipe.getFermentables(), fermentableSql);
            writeItemList(recipe.getMiscs(), miscSql);
            writeItemList(recipe.getYeasts(), yeastSql);
            writeItem(recipe.getStyle(), styleSql);
            writeItem(recipe.getEquipment(), equipmentSql);
            writeItem(recipe.getMash(), mashSql);
            writeItemList(recipe.getMash().getMashSteps(), mashStepSql);
            writeItemList(recipe.getWaters(), waterSql);
        }
    }

    @SuppressWarnings("unchecked")
    private void writeItem(Object item, String sql) {
        SqlParameterSource args = new BeanPropertyItemSqlParameterSourceProvider().createSqlParameterSource(item);
        simpleJdbcTemplate.batchUpdate(sql, new SqlParameterSource[]{args});
    }

    @SuppressWarnings("unchecked")
    private void writeItemList(Collection items, String sql) {
        List<SqlParameterSource> args = new ArrayList<SqlParameterSource>();
        ItemSqlParameterSourceProvider sqlParameterSource = new BeanPropertyItemSqlParameterSourceProvider();
        for (Object item : items) {
            args.add(sqlParameterSource.createSqlParameterSource(item));
        }
        simpleJdbcTemplate.batchUpdate(sql, args.toArray(new SqlParameterSource[args.size()]));
    }

    @Required
    public void setRecipeSql(String recipeSql) {
        this.recipeSql = recipeSql;
    }

    @Required
    public void setHopSql(String hopSql) {
        this.hopSql = hopSql;
    }

    @Required
    public void setFermentableSql(String fermentableSql) {
        this.fermentableSql = fermentableSql;
    }

    @Required
    public void setMiscSql(String miscSql) {
        this.miscSql = miscSql;
    }

    @Required
    public void setYeastSql(String yeastSql) {
        this.yeastSql = yeastSql;
    }

    @Required
    public void setStyleSql(String styleSql) {
        this.styleSql = styleSql;
    }

    @Required
    public void setEquipmentSql(String equipmentSql) {
        this.equipmentSql = equipmentSql;
    }

    @Required
    public void setMashSql(String mashSql) {
        this.mashSql = mashSql;
    }

    @Required
    public void setMashStepSql(String mashStepSql) {
        this.mashStepSql = mashStepSql;
    }

    @Required
    public void setWaterSql(String waterSql) {
        this.waterSql = waterSql;
    }

    @Required
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }
}
