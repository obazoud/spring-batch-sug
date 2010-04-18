package fr.sug.springbatch.example.writer;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.ItemSqlParameterSourceProvider;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcOperations;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import fr.sug.springbatch.example.beans.Equipment;
import fr.sug.springbatch.example.beans.Fermentable;
import fr.sug.springbatch.example.beans.Hop;
import fr.sug.springbatch.example.beans.Mash;
import fr.sug.springbatch.example.beans.MashStep;
import fr.sug.springbatch.example.beans.Misc;
import fr.sug.springbatch.example.beans.Recipe;
import fr.sug.springbatch.example.beans.Style;
import fr.sug.springbatch.example.beans.Water;
import fr.sug.springbatch.example.beans.Yeast;

/**
 * 
 * @author bazoud
 * 
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

    @Override
    public void write(List<? extends Recipe> items) throws Exception {
        for (Recipe recipe : items) {
            // Recipe
            SqlParameterSource argsRecipe = new BeanPropertyItemSqlParameterSourceProvider<Recipe>().createSqlParameterSource(recipe);
            simpleJdbcTemplate.batchUpdate(recipeSql, new SqlParameterSource[] { argsRecipe });

            // Hop
            List<SqlParameterSource> argsHops = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<Hop> sqlParameterSourceHop = new BeanPropertyItemSqlParameterSourceProvider<Hop>();
            for (Hop hop : recipe.getHops()) {
                argsHops.add(sqlParameterSourceHop.createSqlParameterSource(hop));
            }
            simpleJdbcTemplate.batchUpdate(hopSql, argsHops.toArray(new SqlParameterSource[argsHops.size()]));

            // Fermentable
            List<SqlParameterSource> argsFermentables = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<Fermentable> sqlParameterSourceFermentable = new BeanPropertyItemSqlParameterSourceProvider<Fermentable>();
            for (Fermentable fermentable : recipe.getFermentables()) {
                argsFermentables.add(sqlParameterSourceFermentable.createSqlParameterSource(fermentable));
            }
            simpleJdbcTemplate.batchUpdate(fermentableSql, argsFermentables.toArray(new SqlParameterSource[argsFermentables.size()]));

            // Misc
            List<SqlParameterSource> argsMiscs = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<Misc> sqlParameterSourceMisc = new BeanPropertyItemSqlParameterSourceProvider<Misc>();
            for (Misc misc : recipe.getMiscs()) {
                argsMiscs.add(sqlParameterSourceMisc.createSqlParameterSource(misc));
            }
            simpleJdbcTemplate.batchUpdate(miscSql, argsMiscs.toArray(new SqlParameterSource[argsMiscs.size()]));

            // Yeast
            List<SqlParameterSource> argsYeasts = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<Yeast> sqlParameterSourceYeast = new BeanPropertyItemSqlParameterSourceProvider<Yeast>();
            for (Yeast yeast : recipe.getYeasts()) {
                argsYeasts.add(sqlParameterSourceYeast.createSqlParameterSource(yeast));
            }
            simpleJdbcTemplate.batchUpdate(yeastSql, argsYeasts.toArray(new SqlParameterSource[argsYeasts.size()]));

            // Style
            Style style = recipe.getStyle();
            SqlParameterSource argsStyle = new BeanPropertyItemSqlParameterSourceProvider<Style>().createSqlParameterSource(style);
            simpleJdbcTemplate.batchUpdate(styleSql, new SqlParameterSource[] { argsStyle });

            // Equipment
            Equipment equipment = recipe.getEquipment();
            SqlParameterSource argsEquipment = new BeanPropertyItemSqlParameterSourceProvider<Equipment>()
                    .createSqlParameterSource(equipment);
            simpleJdbcTemplate.batchUpdate(equipmentSql, new SqlParameterSource[] { argsEquipment });

            // Mash
            Mash mash = recipe.getMash();
            SqlParameterSource argsMash = new BeanPropertyItemSqlParameterSourceProvider<Mash>().createSqlParameterSource(mash);
            simpleJdbcTemplate.batchUpdate(mashSql, new SqlParameterSource[] { argsMash });

            // MashStep
            List<SqlParameterSource> argsMashSteps = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<MashStep> sqlParameterSourceMashStep = new BeanPropertyItemSqlParameterSourceProvider<MashStep>();
            for (MashStep mashStep : mash.getMashSteps()) {
                argsMashSteps.add(sqlParameterSourceMashStep.createSqlParameterSource(mashStep));
            }
            simpleJdbcTemplate.batchUpdate(mashStepSql, argsMashSteps.toArray(new SqlParameterSource[argsMashSteps.size()]));

            // Water
            List<SqlParameterSource> argsWaters = new ArrayList<SqlParameterSource>();
            ItemSqlParameterSourceProvider<Water> sqlParameterSourceWater = new BeanPropertyItemSqlParameterSourceProvider<Water>();
            for (Water water : recipe.getWaters()) {
                argsWaters.add(sqlParameterSourceWater.createSqlParameterSource(water));
            }
            simpleJdbcTemplate.batchUpdate(waterSql, argsWaters.toArray(new SqlParameterSource[argsWaters.size()]));
        }
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
