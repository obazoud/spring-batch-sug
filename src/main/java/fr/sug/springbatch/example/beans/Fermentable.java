package fr.sug.springbatch.example.beans;

import java.io.Serializable;

/**
 * 
 * @author bazoud
 * @version $Id$
 */
public class Fermentable implements Serializable {
    String id;
    String recipeId;
    String name;
    String version;
    String type;
    String amount;
    String yield;
    String color;
    String addAfterBoil;
    String origin;
    String supplier;
    String notes;
    String coarseFineDiff;
    String moisture;
    String diastaticPower;
    String protein;
    String maxInBatch;
    String recommendMash;
    String ibuGalPerLb;
    String displayAmount;
    String potential;
    String inventory;
    String displayColor;

    public Fermentable() {
    }

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

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getYield() {
        return yield;
    }

    public void setYield(String yield) {
        this.yield = yield;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAddAfterBoil() {
        return addAfterBoil;
    }

    public void setAddAfterBoil(String addAfterBoil) {
        this.addAfterBoil = addAfterBoil;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getCoarseFineDiff() {
        return coarseFineDiff;
    }

    public void setCoarseFineDiff(String coarseFineDiff) {
        this.coarseFineDiff = coarseFineDiff;
    }

    public String getMoisture() {
        return moisture;
    }

    public void setMoisture(String moisture) {
        this.moisture = moisture;
    }

    public String getDiastaticPower() {
        return diastaticPower;
    }

    public void setDiastaticPower(String diastaticPower) {
        this.diastaticPower = diastaticPower;
    }

    public String getProtein() {
        return protein;
    }

    public void setProtein(String protein) {
        this.protein = protein;
    }

    public String getMaxInBatch() {
        return maxInBatch;
    }

    public void setMaxInBatch(String maxInBatch) {
        this.maxInBatch = maxInBatch;
    }

    public String getRecommendMash() {
        return recommendMash;
    }

    public void setRecommendMash(String recommendMash) {
        this.recommendMash = recommendMash;
    }

    public String getIbuGalPerLb() {
        return ibuGalPerLb;
    }

    public void setIbuGalPerLb(String ibuGalPerLb) {
        this.ibuGalPerLb = ibuGalPerLb;
    }

    public String getDisplayAmount() {
        return displayAmount;
    }

    public void setDisplayAmount(String displayAmount) {
        this.displayAmount = displayAmount;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getPotential() {
        return potential;
    }

    public void setPotential(String potential) {
        this.potential = potential;
    }

    public String getDisplayColor() {
        return displayColor;
    }

    public void setDisplayColor(String displayColor) {
        this.displayColor = displayColor;
    }

}
