package fr.sug.springbatch.example.beans;

import java.io.Serializable;

/**
 * 
 * @author bazoud
 * @version $Id$
 */
public class Yeast implements Serializable {
    String id;
    String recipeId;
    String name;
    String version;
    String type;
    String form;
    String amount;
    String amountIsWeight;
    String laboratory;
    String productId;
    String minTemperature;
    String maxTemperature;
    String flocculation;
    String attenuation;
    String notes;
    String bestFor;
    String timesCultured;
    String maxReuse;
    String addToSecondary;
    String displayAmount;
    String dispMinTemp;
    String dispMaxTemp;
    String inventory;
    String cultureDate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(String recipeId) {
        this.recipeId = recipeId;
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

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getAmountIsWeight() {
        return amountIsWeight;
    }

    public void setAmountIsWeight(String amountIsWeight) {
        this.amountIsWeight = amountIsWeight;
    }

    public String getLaboratory() {
        return laboratory;
    }

    public void setLaboratory(String laboratory) {
        this.laboratory = laboratory;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getMinTemperature() {
        return minTemperature;
    }

    public void setMinTemperature(String minTemperature) {
        this.minTemperature = minTemperature;
    }

    public String getMaxTemperature() {
        return maxTemperature;
    }

    public void setMaxTemperature(String maxTemperature) {
        this.maxTemperature = maxTemperature;
    }

    public String getFlocculation() {
        return flocculation;
    }

    public void setFlocculation(String flocculation) {
        this.flocculation = flocculation;
    }

    public String getAttenuation() {
        return attenuation;
    }

    public void setAttenuation(String attenuation) {
        this.attenuation = attenuation;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getBestFor() {
        return bestFor;
    }

    public void setBestFor(String bestFor) {
        this.bestFor = bestFor;
    }

    public String getMaxReuse() {
        return maxReuse;
    }

    public void setMaxReuse(String maxReuse) {
        this.maxReuse = maxReuse;
    }

    public String getTimesCultured() {
        return timesCultured;
    }

    public void setTimesCultured(String timesCultured) {
        this.timesCultured = timesCultured;
    }

    public String getAddToSecondary() {
        return addToSecondary;
    }

    public void setAddToSecondary(String addToSecondary) {
        this.addToSecondary = addToSecondary;
    }

    public String getDisplayAmount() {
        return displayAmount;
    }

    public void setDisplayAmount(String displayAmount) {
        this.displayAmount = displayAmount;
    }

    public String getDispMinTemp() {
        return dispMinTemp;
    }

    public void setDispMinTemp(String dispMinTemp) {
        this.dispMinTemp = dispMinTemp;
    }

    public String getDispMaxTemp() {
        return dispMaxTemp;
    }

    public void setDispMaxTemp(String dispMaxTemp) {
        this.dispMaxTemp = dispMaxTemp;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getCultureDate() {
        return cultureDate;
    }

    public void setCultureDate(String cultureDate) {
        this.cultureDate = cultureDate;
    }

}
