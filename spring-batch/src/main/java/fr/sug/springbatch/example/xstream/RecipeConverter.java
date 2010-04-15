package fr.sug.springbatch.example.xstream;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.thoughtworks.xstream.converters.Converter;
import com.thoughtworks.xstream.converters.MarshallingContext;
import com.thoughtworks.xstream.converters.UnmarshallingContext;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;

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

public class RecipeConverter implements Converter {
    // logger
    private static final Logger LOG = Logger.getLogger(RecipeConverter.class);

    @Override
    @SuppressWarnings("unchecked")
    public boolean canConvert(Class type) {
        return type.equals(Recipe.class);
    }

    @Override
    public Object unmarshal(HierarchicalStreamReader reader, UnmarshallingContext context) {
        LOG.warn(reader.getClass() + " -> " + reader.underlyingReader().getClass());

        Recipe recipe = new Recipe();
        recipe.setName(read(reader, context, "NAME"));
        recipe.setVersion(read(reader, context, "VERSION"));
        recipe.setType(read(reader, context, "TYPE"));
        recipe.setBrewer(read(reader, context, "BREWER"));
        recipe.setAsstBrewer(read(reader, context, "ASST_BREWER"));
        recipe.setBatchSize(read(reader, context, "BATCH_SIZE"));
        recipe.setBoilSize(read(reader, context, "BOIL_SIZE"));
        recipe.setBoilTime(read(reader, context, "BOIL_TIME"));
        recipe.setEfficiency(read(reader, context, "EFFICIENCY"));

        recipe.setNotes(read(reader, context, "NOTES"));
        recipe.setTasteNotes(read(reader, context, "TASTE_NOTES"));
        recipe.setTasteRating(read(reader, context, "TASTE_RATING"));
        recipe.setOg(read(reader, context, "OG"));
        recipe.setFg(read(reader, context, "FG"));
        recipe.setFermatationStages(read(reader, context, "FERMENTATION_STAGES"));
        recipe.setPrimaryAge(read(reader, context, "PRIMARY_AGE"));
        recipe.setPrimaryTemp(read(reader, context, "PRIMARY_TEMP"));
        recipe.setSecondaryAge(read(reader, context, "SECONDARY_AGE"));
        recipe.setSecondaryTemp(read(reader, context, "SECONDARY_TEMP"));
        recipe.setTertiaryAge(read(reader, context, "TERTIARY_AGE"));
        recipe.setTertiaryTmp(read(reader, context, "TERTIARY_TEMP"));
        recipe.setAge(read(reader, context, "AGE"));
        recipe.setAgeTemp(read(reader, context, "AGE_TEMP"));
        recipe.setDateRecipe(read(reader, context, "DATE"));
        recipe.setCarbonation(read(reader, context, "CARBONATION"));
        recipe.setForceCarbonation(read(reader, context, "FORCED_CARBONATION"));
        recipe.setPrimingSugarName(read(reader, context, "PRIMING_SUGAR_NAME"));
        recipe.setCarbonationTemp(read(reader, context, "CARBONATION_TEMP"));
        recipe.setPrimingSugarEquiv(read(reader, context, "PRIMING_SUGAR_EQUIV"));
        recipe.setKegPrimingFactor(read(reader, context, "KEG_PRIMING_FACTOR"));

        recipe.setEstOg(read(reader, context, "EST_OG"));
        recipe.setEstFg(read(reader, context, "EST_FG"));
        recipe.setEstColor(read(reader, context, "EST_COLOR"));
        recipe.setIbu(read(reader, context, "IBU"));
        recipe.setIbuMethod(read(reader, context, "IBU_METHOD"));
        recipe.setEstAbv(read(reader, context, "EST_ABV"));
        recipe.setAbv(read(reader, context, "ABV"));
        recipe.setActualEfficiency(read(reader, context, "ACTUAL_EFFICIENCY"));
        recipe.setCalories(read(reader, context, "CALORIES"));
        recipe.setDisplayBatchSize(read(reader, context, "DISPLAY_BATCH_SIZE"));
        recipe.setDisplayBoilSize(read(reader, context, "DISPLAY_BOIL_SIZE"));
        recipe.setDisplayOg(read(reader, context, "DISPLAY_OG"));
        recipe.setDisplayFg(read(reader, context, "DISPLAY_FG"));
        recipe.setDisplayPrimaryTemp(read(reader, context, "DISPLAY_PRIMARY_TEMP"));
        recipe.setDisplaySecondaryTemp(read(reader, context, "DISPLAY_SECONDARY_TEMP"));
        recipe.setDisplayTertiaryTemp(read(reader, context, "DISPLAY_TERTIARY_TEMP"));
        recipe.setDisplayAgeTemp(read(reader, context, "DISPLAY_AGE_TEMP"));
        recipe.setCarbonationUsed(read(reader, context, "CARBONATION_USED"));
        recipe.setDisplayCarbTemp(read(reader, context, "DISPLAY_CARB_TEMP"));

        while (reader.hasMoreChildren()) {
            reader.moveDown();
            unmarshalHops(reader, context, recipe);
            unmarshalFermentables(reader, context, recipe);
            unmarshalMics(reader, context, recipe);
            unmarshalYeasts(reader, context, recipe);
            unmarshalWaters(reader, context, recipe);
            unmarshalStyle(reader, context, recipe);
            unmarshalEquipment(reader, context, recipe);
            unmarshalMash(reader, context, recipe);
            reader.moveUp();
        }
        return recipe;
    }

    private void unmarshalMics(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("MISCS".equals(reader.getNodeName())) {
            while (reader.hasMoreChildren()) {
                reader.moveDown();
                if ("MISC".equals(reader.getNodeName())) {
                    Misc misc = new Misc();
                    misc.setName(read(reader, context, "NAME"));
                    misc.setVersion(read(reader, context, "VERSION"));
                    misc.setType(read(reader, context, "TYPE"));
                    misc.setUser(read(reader, context, "USE"));
                    misc.setTime(read(reader, context, "TIME"));
                    misc.setAmount(read(reader, context, "AMOUNT"));
                    misc.setAmountIsWeight(read(reader, context, "AMOUNT_IS_WEIGHT"));
                    misc.setUseFor(read(reader, context, "USE_FOR"));
                    misc.setNotes(read(reader, context, "NOTES"));
                    misc.setDisplayAmount(read(reader, context, "DISPLAY_AMOUNT"));
                    misc.setInventory(read(reader, context, "INVENTORY"));
                    misc.setDisplayTime(read(reader, context, "DISPLAY_TIME"));
                    misc.setBatchSize(read(reader, context, "BATCH_SIZE"));
                    recipe.getMics().add(misc);
                }
                reader.moveUp();
            }
        }
    }

    private void unmarshalMash(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("MASH".equals(reader.getNodeName())) {
            Mash mash = new Mash();
            mash.setName(read(reader, context, "NAME"));
            mash.setVersion(read(reader, context, "VERSION"));
            mash.setGrainTemp(read(reader, context, "GRAIN_TEMP"));
            mash.setNotes(read(reader, context, "NOTES"));
            mash.setTunTemp(read(reader, context, "TUN_TEMP"));
            mash.setSpargeTemp(read(reader, context, "SPARGE_TEMP"));
            mash.setPh(read(reader, context, "PH"));
            mash.setTunWeight(read(reader, context, "TUN_WEIGHT"));
            mash.setTunSpecificHeat(read(reader, context, "TUN_SPECIFIC_HEAT"));
            mash.setEquipAdjust(read(reader, context, "EQUIP_ADJUST"));
            mash.setDisplayGrainTemp(read(reader, context, "DISPLAY_GRAIN_TEMP"));
            mash.setDisplayTunTemp(read(reader, context, "DISPLAY_TUN_TEMP"));
            mash.setDisplaySpargeTemp(read(reader, context, "DISPLAY_SPARGE_TEMP"));
            mash.setDisplayTunWeight(read(reader, context, "DISPLAY_TUN_WEIGHT"));
            if ("MASH_STEPS".equals(reader.getNodeName())) {
                while (reader.hasMoreChildren()) {
                    reader.moveDown();
                    if ("MASH_STEP".equals(reader.getNodeName())) {
                        MashStep mashStep = new MashStep();
                        mashStep.setName(read(reader, context, "NAME"));
                        mashStep.setVersion(read(reader, context, "VERSION"));
                        mashStep.setType(read(reader, context, "TYPE"));
                        mashStep.setInfuseAmount(read(reader, context, "INFUSE_AMOUNT"));
                        mashStep.setStempTemp(read(reader, context, "STEP_TEMP"));
                        mashStep.setStepTime(read(reader, context, "STEP_TIME"));
                        mashStep.setRampTime(read(reader, context, "RAMP_TIME"));
                        mashStep.setEndTemp(read(reader, context, "END_TEMP"));
                        mashStep.setDescription(read(reader, context, "DESCRIPTION"));
                        mashStep.setWaterGrainRatio(read(reader, context, "WATER_GRAIN_RATIO"));
                        mashStep.setDecoctionAmt(read(reader, context, "DECOCTION_AMT"));
                        mashStep.setInfuseTemp(read(reader, context, "INFUSE_TEMP"));
                        mashStep.setDisplayStepTemp(read(reader, context, "DISPLAY_STEP_TEMP"));
                        mashStep.setDisplayInfuseAmt(read(reader, context, "DISPLAY_INFUSE_AMT"));

                        mash.getMashSteps().add(mashStep);
                    }
                    reader.moveUp();
                }
            }
            recipe.setMash(mash);
        }
    }

    private void unmarshalEquipment(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("EQUIPMENT".equals(reader.getNodeName())) {
            Equipment equipment = new Equipment();
            equipment.setName(read(reader, context, "NAME"));
            equipment.setVersion(read(reader, context, "VERSION"));
            equipment.setBoilSize(read(reader, context, "BOIL_SIZE"));
            equipment.setBatchSize(read(reader, context, "BATCH_SIZE"));
            equipment.setTunVolume(read(reader, context, "TUN_VOLUME"));
            equipment.setTunWeight(read(reader, context, "TUN_WEIGHT"));
            equipment.setTunSpecificHeat(read(reader, context, "TUN_SPECIFIC_HEAT"));
            equipment.setTopUpWater(read(reader, context, "TOP_UP_WATER"));
            equipment.setTrubChillerLoss(read(reader, context, "TRUB_CHILLER_LOSS"));
            equipment.setEvapRate(read(reader, context, "EVAP_RATE"));
            equipment.setBoilTime(read(reader, context, "BOIL_TIME"));
            equipment.setCalcBoilVolume(read(reader, context, "CALC_BOIL_VOLUME"));
            equipment.setLauterDeadspace(read(reader, context, "LAUTER_DEADSPACE"));
            equipment.setTopUpKettle(read(reader, context, "TOP_UP_KETTLE"));
            equipment.setHopUtilization(read(reader, context, "HOP_UTILIZATION"));
            equipment.setNotes(read(reader, context, "NOTES"));
            equipment.setDisplayBoilSize(read(reader, context, "DISPLAY_BOIL_SIZE"));
            equipment.setDisplayBatchSize(read(reader, context, "DISPLAY_BATCH_SIZE"));
            equipment.setDisplayTunVolume(read(reader, context, "DISPLAY_TUN_VOLUME"));
            equipment.setDisplayTunWeight(read(reader, context, "DISPLAY_TUN_WEIGHT"));
            equipment.setDisplayTopUpWater(read(reader, context, "DISPLAY_TOP_UP_WATER"));
            equipment.setDisplayTrubChillerLoss(read(reader, context, "DISPLAY_TRUB_CHILLER_LOSS"));
            equipment.setDisplayLauterDeadspace(read(reader, context, "DISPLAY_LAUTER_DEADSPACE"));
            equipment.setDisplayTopUpKettle(read(reader, context, "DISPLAY_TOP_UP_KETTLE"));
            recipe.setEquipment(equipment);
        }
    }

    private void unmarshalStyle(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("STYLE".equals(reader.getNodeName())) {
            Style style = new Style();
            style.setName(read(reader, context, "NAME"));
            style.setCategory(read(reader, context, "CATEGORY"));
            style.setVersion(read(reader, context, "VERSION"));
            style.setCategoryNumber(read(reader, context, "CATEGORY_NUMBER"));
            style.setStyleLetter(read(reader, context, "STYLE_LETTER"));
            style.setStyleGuide(read(reader, context, "STYLE_GUIDE"));
            style.setType(read(reader, context, "TYPE"));
            style.setOgMin(read(reader, context, "OG_MIN"));
            style.setOgMax(read(reader, context, "OG_MAX"));
            style.setFgMin(read(reader, context, "FG_MIN"));
            style.setFgMax(read(reader, context, "FG_MAX"));
            style.setIbuMin(read(reader, context, "IBU_MIN"));
            style.setIbuMax(read(reader, context, "IBU_MAX"));
            style.setColorMin(read(reader, context, "COLOR_MIN"));
            style.setColorMax(read(reader, context, "COLOR_MAX"));
            style.setCarbMin(read(reader, context, "CARB_MIN"));
            style.setCarbMax(read(reader, context, "CARB_MAX"));
            style.setAbvMin(read(reader, context, "ABV_MIN"));
            style.setAbvMax(read(reader, context, "ABV_MAX"));
            style.setNotes(read(reader, context, "NOTES"));
            style.setProfile(read(reader, context, "PROFILE"));
            style.setIngredients(read(reader, context, "INGREDIENTS"));
            style.setExamples(read(reader, context, "EXAMPLES"));
            style.setDisplayObMin(read(reader, context, "DISPLAY_OG_MIN"));
            style.setDisplayObMax(read(reader, context, "DISPLAY_OG_MAX"));
            style.setDisplayfgMin(read(reader, context, "DISPLAY_FG_MIN"));
            style.setDisplayOgMax(read(reader, context, "DISPLAY_FG_MAX"));
            style.setDisplayColorMin(read(reader, context, "DISPLAY_COLOR_MIN"));
            style.setDisplayColorMax(read(reader, context, "DISPLAY_COLOR_MAX"));
            style.setOgRange(read(reader, context, "OG_RANGE"));
            style.setFgRange(read(reader, context, "FG_RANGE"));
            style.setIbuRange(read(reader, context, "IBU_RANGE"));
            style.setCarbRange(read(reader, context, "CARB_RANGE"));
            style.setColorRange(read(reader, context, "COLOR_RANGE"));
            style.setAbvRange(read(reader, context, "ABV_RANGE"));
            recipe.setStyle(style);
        }
    }

    private void unmarshalWaters(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("WATERS".equals(reader.getNodeName())) {
            while (reader.hasMoreChildren()) {
                reader.moveDown();
                if ("WATER".equals(reader.getNodeName())) {
                    Water water = new Water();
                    water.setName(read(reader, context, "NAME"));
                    water.setVersion(read(reader, context, "VERSION"));
                    water.setAmount(read(reader, context, "AMOUNT"));
                    water.setCalcium(read(reader, context, "CALCIUM"));
                    water.setBicarbonate(read(reader, context, "BICARBONATE"));
                    water.setSulfate(read(reader, context, "SULFATE"));
                    water.setChloride(read(reader, context, "CHLORIDE"));
                    water.setSodium(read(reader, context, "SODIUM"));
                    water.setMagnesium(read(reader, context, "MAGNESIUM"));
                    water.setPh(read(reader, context, "PH"));
                    water.setNotes(read(reader, context, "NOTES"));
                    water.setDisplayAmount(read(reader, context, "DISPLAY_AMOUNT"));

                    recipe.getWaters().add(water);
                }
                reader.moveUp();
            }
        }
    }

    private void unmarshalYeasts(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("YEASTS".equals(reader.getNodeName())) {
            while (reader.hasMoreChildren()) {
                reader.moveDown();
                if ("YEAST".equals(reader.getNodeName())) {
                    Yeast yeast = new Yeast();
                    yeast.setName(read(reader, context, "NAME"));
                    yeast.setVersion(read(reader, context, "VERSION"));
                    yeast.setType(read(reader, context, "TYPE"));
                    yeast.setForm(read(reader, context, "FORM"));
                    yeast.setAmount(read(reader, context, "AMOUNT"));
                    yeast.setAmountIsWeight(read(reader, context, "AMOUNT_IS_WEIGHT"));
                    yeast.setLaboratory(read(reader, context, "LABORATORY"));
                    yeast.setProductId(read(reader, context, "PRODUCT_ID"));
                    yeast.setMinTemperature(read(reader, context, "MIN_TEMPERATURE"));
                    yeast.setMaxTemperature(read(reader, context, "MAX_TEMPERATURE"));
                    yeast.setFlocculation(read(reader, context, "FLOCCULATION"));
                    yeast.setAttenuation(read(reader, context, "ATTENUATION"));
                    yeast.setNotes(read(reader, context, "NOTES"));
                    yeast.setBestFor(read(reader, context, "BEST_FOR"));
                    yeast.setTimesCultured(read(reader, context, "TIMES_CULTURED"));
                    yeast.setMaxReuse(read(reader, context, "MAX_REUSE"));
                    yeast.setAddToSecondary(read(reader, context, "ADD_TO_SECONDARY"));
                    yeast.setDisplayAmount(read(reader, context, "DISPLAY_AMOUNT"));
                    yeast.setDispMinTemp(read(reader, context, "DISP_MIN_TEMP"));
                    yeast.setDispMaxTemp(read(reader, context, "DISP_MAX_TEMP"));
                    yeast.setInventory(read(reader, context, "INVENTORY"));
                    yeast.setCultureDate(read(reader, context, "CULTURE_DATE"));
                    recipe.getYeasts().add(yeast);
                }
                reader.moveUp();
            }
        }
    }

    private void unmarshalFermentables(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("FERMENTABLES".equals(reader.getNodeName())) {
            while (reader.hasMoreChildren()) {
                reader.moveDown();
                if ("FERMENTABLE".equals(reader.getNodeName())) {
                    Fermentable fermentable = new Fermentable();
                    fermentable.setName(read(reader, context, "NAME"));
                    fermentable.setVersion(read(reader, context, "VERSION"));
                    fermentable.setType(read(reader, context, "TYPE"));
                    fermentable.setAmount(read(reader, context, "AMOUNT"));
                    fermentable.setYield(read(reader, context, "YIELD"));
                    fermentable.setColor(read(reader, context, "COLOR"));
                    fermentable.setAddAfterBoil(read(reader, context, "ADD_AFTER_BOIL"));
                    fermentable.setOrigin(read(reader, context, "ORIGIN"));
                    fermentable.setSupplier(read(reader, context, "SUPPLIER"));
                    fermentable.setNotes(read(reader, context, "NOTES"));
                    fermentable.setCoarseFineDiff(read(reader, context, "COARSE_FINE_DIFF"));
                    fermentable.setMoisture(read(reader, context, "MOISTURE"));
                    fermentable.setDiastaticPower(read(reader, context, "DIASTATIC_POWER"));
                    fermentable.setProtein(read(reader, context, "PROTEIN"));
                    fermentable.setMaxInBatch(read(reader, context, "MAX_IN_BATCH"));
                    fermentable.setRecommendMash(read(reader, context, "RECOMMEND_MASH"));
                    fermentable.setIbuGalPerLb(read(reader, context, "IBU_GAL_PER_LB"));
                    fermentable.setDisplayAmount(read(reader, context, "DISPLAY_AMOUNT"));
                    fermentable.setPotential(read(reader, context, "POTENTIAL"));
                    fermentable.setInventory(read(reader, context, "INVENTORY"));
                    fermentable.setDisplayColor(read(reader, context, "DISPLAY_COLOR"));
                    recipe.getFermentables().add(fermentable);
                }
                reader.moveUp();
            }
        }
    }

    private void unmarshalHops(HierarchicalStreamReader reader, UnmarshallingContext context, Recipe recipe) {
        if ("HOPS".equals(reader.getNodeName())) {
            while (reader.hasMoreChildren()) {
                reader.moveDown();
                if ("HOP".equals(reader.getNodeName())) {
                    Hop hop = new Hop();
                    hop.setName(read(reader, context, "NAME"));
                    hop.setVersion(read(reader, context, "VERSION"));
                    hop.setAlpha(read(reader, context, "ALPHA"));
                    hop.setAmount(read(reader, context, "AMOUNT"));
                    hop.setUse(read(reader, context, "USE"));
                    hop.setTime(read(reader, context, "TIME"));
                    hop.setNotes(read(reader, context, "NOTES"));
                    hop.setType(read(reader, context, "TYPE"));
                    hop.setForm(read(reader, context, "FORM"));
                    hop.setBeta(read(reader, context, "BETA"));
                    hop.setHsi(read(reader, context, "HSI"));
                    hop.setOrigin(read(reader, context, "ORIGIN"));
                    hop.setSubstitutes(read(reader, context, "SUBSTITUTES"));
                    hop.setHumulene(read(reader, context, "HUMULENE"));
                    hop.setCaryophyllene(read(reader, context, "CARYOPHYLLENE"));
                    hop.setCohumulone(read(reader, context, "COHUMULONE"));
                    hop.setMyrcene(read(reader, context, "MYRCENE"));
                    hop.setDisplayAmount(read(reader, context, "DISPLAY_AMOUNT"));
                    hop.setInventory(read(reader, context, "INVENTORY"));
                    hop.setDisplayTime(read(reader, context, "DISPLAY_TIME"));
                    recipe.getHops().add(hop);
                }
                reader.moveUp();
            }
        }
    }

    @Override
    public void marshal(Object source, HierarchicalStreamWriter writer, MarshallingContext context) {
    }

    static String read(HierarchicalStreamReader reader, UnmarshallingContext context, String name) {
        return StringUtils.trimToNull(reader.underlyingReader().getAttribute(name));
    }

}
