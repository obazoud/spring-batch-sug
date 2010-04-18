package fr.sug.springbatch.example.beans;

import java.io.Serializable;

/**
 * 
 * @author bazoud
 * @version $Id$
 */
public class Hop implements Serializable {
    String id;
    String recipeId;
    String name;
    String version;
    String alpha;
    String amount;
    String use1;
    String time;
    String notes;
    String type;
    String form;
    String beta;
    String hsi;
    String origin;
    String substitutes;
    String humulene;
    String caryophyllene;
    String cohumulone;
    String myrcene;

    String displayAmount;
    String inventory;
    String displayTime;

    public Hop() {
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

    public String getAlpha() {
        return alpha;
    }

    public void setAlpha(String alpha) {
        this.alpha = alpha;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getUse1() {
        return use1;
    }

    public void setUse1(String use1) {
        this.use1 = use1;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
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

    public String getBeta() {
        return beta;
    }

    public void setBeta(String beta) {
        this.beta = beta;
    }

    public String getHsi() {
        return hsi;
    }

    public void setHsi(String hsi) {
        this.hsi = hsi;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getSubstitutes() {
        return substitutes;
    }

    public void setSubstitutes(String substitutes) {
        this.substitutes = substitutes;
    }

    public String getHumulene() {
        return humulene;
    }

    public void setHumulene(String humulene) {
        this.humulene = humulene;
    }

    public String getCaryophyllene() {
        return caryophyllene;
    }

    public void setCaryophyllene(String caryophyllene) {
        this.caryophyllene = caryophyllene;
    }

    public String getCohumulone() {
        return cohumulone;
    }

    public void setCohumulone(String cohumulone) {
        this.cohumulone = cohumulone;
    }

    public String getMyrcene() {
        return myrcene;
    }

    public void setMyrcene(String myrcene) {
        this.myrcene = myrcene;
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

    public String getDisplayTime() {
        return displayTime;
    }

    public void setDisplayTime(String displayTime) {
        this.displayTime = displayTime;
    }
}
