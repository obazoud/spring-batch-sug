package fr.sug.springbatch.example.beans;

import java.io.Serializable;

/**
 *
 * @author bazoud
 * @version $Id$
 */
public class Water implements Serializable {
    String name;
    String version;
    String amount;
    String calcium;
    String bicarbonate;
    String sulfate;
    String chloride;
    String sodium;
    String magnesium;
    String ph;
    String notes;
    String displayAmount;

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

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCalcium() {
        return calcium;
    }

    public void setCalcium(String calcium) {
        this.calcium = calcium;
    }

    public String getBicarbonate() {
        return bicarbonate;
    }

    public void setBicarbonate(String bicarbonate) {
        this.bicarbonate = bicarbonate;
    }

    public String getSulfate() {
        return sulfate;
    }

    public void setSulfate(String sulfate) {
        this.sulfate = sulfate;
    }

    public String getChloride() {
        return chloride;
    }

    public void setChloride(String chloride) {
        this.chloride = chloride;
    }

    public String getSodium() {
        return sodium;
    }

    public void setSodium(String sodium) {
        this.sodium = sodium;
    }

    public String getMagnesium() {
        return magnesium;
    }

    public void setMagnesium(String magnesium) {
        this.magnesium = magnesium;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getDisplayAmount() {
        return displayAmount;
    }

    public void setDisplayAmount(String displayAmount) {
        this.displayAmount = displayAmount;
    }

}
