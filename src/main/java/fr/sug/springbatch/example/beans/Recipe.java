package fr.sug.springbatch.example.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bazoud
 * @version $Id$
 */
public class Recipe implements Serializable {
    String name;
    String version;
    String type;
    String brewer;
    String asstBrewer;
    String batchSize;
    String boilSize;
    String boilTime;
    String efficiency;

    String notes;
    String tasteNotes;
    String tasteRating;
    String og;
    String fg;
    String carbonation;
    String fermatationStages;
    String primaryAge;
    String primaryTemp;
    String secondaryAge;
    String secondaryTemp;
    String tertiaryAge;
    String age;
    String ageTemp;
    String carbonationUsed;
    String dateRecipe;
    String estOg;
    String estFg;
    String estColor;
    String ibu;
    String ibuMethod;
    String estAbv;
    String abv;
    String actualEfficiency;
    String calories;
    String displayBatchSize;
    String displayBoilSize;
    String displayOg;
    String displayFg;
    String displayPrimaryTemp;
    String displaySecondaryTemp;
    String displayTertiaryTemp;
    String displayAgeTemp;
    List<Hop> hops = new ArrayList<Hop>();
    List<Fermentable> fermentables = new ArrayList<Fermentable>();
    List<Misc> mics = new ArrayList<Misc>();
    List<Yeast> yeasts = new ArrayList<Yeast>();
    List<Water> waters = new ArrayList<Water>();
    List<Style> styles = new ArrayList<Style>();
    List<Equipment> equipments = new ArrayList<Equipment>();
    List<Mash> mashs = new ArrayList<Mash>();

    public Recipe() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrewer() {
        return brewer;
    }

    public void setBrewer(String brewer) {
        this.brewer = brewer;
    }

    public String getAsstBrewer() {
        return asstBrewer;
    }

    public void setAsstBrewer(String asstBrewer) {
        this.asstBrewer = asstBrewer;
    }

    public String getBatchSize() {
        return batchSize;
    }

    public void setBatchSize(String batchSize) {
        this.batchSize = batchSize;
    }

    public String getBoilSize() {
        return boilSize;
    }

    public void setBoilSize(String boilSize) {
        this.boilSize = boilSize;
    }

    public String getBoilTime() {
        return boilTime;
    }

    public void setBoilTime(String boilTime) {
        this.boilTime = boilTime;
    }

    public String getEfficiency() {
        return efficiency;
    }

    public void setEfficiency(String efficiency) {
        this.efficiency = efficiency;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getTasteNotes() {
        return tasteNotes;
    }

    public void setTasteNotes(String tasteNotes) {
        this.tasteNotes = tasteNotes;
    }

    public String getTasteRating() {
        return tasteRating;
    }

    public void setTasteRating(String tasteRating) {
        this.tasteRating = tasteRating;
    }

    public String getOg() {
        return og;
    }

    public void setOg(String og) {
        this.og = og;
    }

    public String getFg() {
        return fg;
    }

    public void setFg(String fg) {
        this.fg = fg;
    }

    public String getCarbonation() {
        return carbonation;
    }

    public void setCarbonation(String carbonation) {
        this.carbonation = carbonation;
    }

    public String getFermatationStages() {
        return fermatationStages;
    }

    public void setFermatationStages(String fermatationStages) {
        this.fermatationStages = fermatationStages;
    }

    public String getPrimaryAge() {
        return primaryAge;
    }

    public void setPrimaryAge(String primaryAge) {
        this.primaryAge = primaryAge;
    }

    public String getPrimaryTemp() {
        return primaryTemp;
    }

    public void setPrimaryTemp(String primaryTemp) {
        this.primaryTemp = primaryTemp;
    }

    public String getSecondaryAge() {
        return secondaryAge;
    }

    public void setSecondaryAge(String secondaryAge) {
        this.secondaryAge = secondaryAge;
    }

    public String getSecondaryTemp() {
        return secondaryTemp;
    }

    public void setSecondaryTemp(String secondaryTemp) {
        this.secondaryTemp = secondaryTemp;
    }

    public String getTertiaryAge() {
        return tertiaryAge;
    }

    public void setTertiaryAge(String tertiaryAge) {
        this.tertiaryAge = tertiaryAge;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAgeTemp() {
        return ageTemp;
    }

    public void setAgeTemp(String ageTemp) {
        this.ageTemp = ageTemp;
    }

    public String getCarbonationUsed() {
        return carbonationUsed;
    }

    public void setCarbonationUsed(String carbonationUsed) {
        this.carbonationUsed = carbonationUsed;
    }

    public String getDateRecipe() {
        return dateRecipe;
    }

    public void setDateRecipe(String dateRecipe) {
        this.dateRecipe = dateRecipe;
    }

    public String getEstOg() {
        return estOg;
    }

    public void setEstOg(String estOg) {
        this.estOg = estOg;
    }

    public String getEstFg() {
        return estFg;
    }

    public void setEstFg(String estFg) {
        this.estFg = estFg;
    }

    public String getEstColor() {
        return estColor;
    }

    public void setEstColor(String estColor) {
        this.estColor = estColor;
    }

    public String getIbu() {
        return ibu;
    }

    public void setIbu(String ibu) {
        this.ibu = ibu;
    }

    public String getIbuMethod() {
        return ibuMethod;
    }

    public void setIbuMethod(String ibuMethod) {
        this.ibuMethod = ibuMethod;
    }

    public String getEstAbv() {
        return estAbv;
    }

    public void setEstAbv(String estAbv) {
        this.estAbv = estAbv;
    }

    public String getAbv() {
        return abv;
    }

    public void setAbv(String abv) {
        this.abv = abv;
    }

    public String getActualEfficiency() {
        return actualEfficiency;
    }

    public void setActualEfficiency(String actualEfficiency) {
        this.actualEfficiency = actualEfficiency;
    }

    public String getCalories() {
        return calories;
    }

    public void setCalories(String calories) {
        this.calories = calories;
    }

    public String getDisplayBatchSize() {
        return displayBatchSize;
    }

    public void setDisplayBatchSize(String displayBatchSize) {
        this.displayBatchSize = displayBatchSize;
    }

    public String getDisplayBoilSize() {
        return displayBoilSize;
    }

    public void setDisplayBoilSize(String displayBoilSize) {
        this.displayBoilSize = displayBoilSize;
    }

    public String getDisplayOg() {
        return displayOg;
    }

    public void setDisplayOg(String displayOg) {
        this.displayOg = displayOg;
    }

    public String getDisplayFg() {
        return displayFg;
    }

    public void setDisplayFg(String displayFg) {
        this.displayFg = displayFg;
    }

    public String getDisplayPrimaryTemp() {
        return displayPrimaryTemp;
    }

    public void setDisplayPrimaryTemp(String displayPrimaryTemp) {
        this.displayPrimaryTemp = displayPrimaryTemp;
    }

    public String getDisplaySecondaryTemp() {
        return displaySecondaryTemp;
    }

    public void setDisplaySecondaryTemp(String displaySecondaryTemp) {
        this.displaySecondaryTemp = displaySecondaryTemp;
    }

    public String getDisplayTertiaryTemp() {
        return displayTertiaryTemp;
    }

    public void setDisplayTertiaryTemp(String displayTertiaryTemp) {
        this.displayTertiaryTemp = displayTertiaryTemp;
    }

    public String getDisplayAgeTemp() {
        return displayAgeTemp;
    }

    public void setDisplayAgeTemp(String displayAgeTemp) {
        this.displayAgeTemp = displayAgeTemp;
    }

    public List<Hop> getHops() {
        return hops;
    }

    public void setHops(List<Hop> hops) {
        this.hops = hops;
    }

    public List<Fermentable> getFermentables() {
        return fermentables;
    }

    public void setFermentables(List<Fermentable> fermentables) {
        this.fermentables = fermentables;
    }

    public List<Misc> getMics() {
        return mics;
    }

    public void setMics(List<Misc> mics) {
        this.mics = mics;
    }

    public List<Yeast> getYeasts() {
        return yeasts;
    }

    public void setYeasts(List<Yeast> yeasts) {
        this.yeasts = yeasts;
    }

    public List<Water> getWaters() {
        return waters;
    }

    public void setWaters(List<Water> waters) {
        this.waters = waters;
    }

    public List<Style> getStyles() {
        return styles;
    }

    public void setStyles(List<Style> styles) {
        this.styles = styles;
    }

    public List<Equipment> getEquipments() {
        return equipments;
    }

    public void setEquipments(List<Equipment> equipments) {
        this.equipments = equipments;
    }

    public List<Mash> getMashs() {
        return mashs;
    }

    public void setMashs(List<Mash> mashs) {
        this.mashs = mashs;
    }

}
