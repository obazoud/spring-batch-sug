package fr.sug.springbatch.example.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bazoud
 * @version $Id$
 */
public class Mash implements Serializable {
    String name;
    String version;
    String type;
    String grainTemp;
    String notes;
    String tunTemp;
    String spargeTemp;
    String ph;
    String tunWeight;
    String tunSpecificHeat;
    String equipAdjust;
    String displayGrainTemp;
    String displayTunTemp;
    String displaySpargeTemp;
    String displayTunWeight;
    List<MashStep> mashSteps = new ArrayList<MashStep>();

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

    public String getGrainTemp() {
        return grainTemp;
    }

    public void setGrainTemp(String grainTemp) {
        this.grainTemp = grainTemp;
    }

    public String getTunTemp() {
        return tunTemp;
    }

    public void setTunTemp(String tunTemp) {
        this.tunTemp = tunTemp;
    }

    public String getSpargeTemp() {
        return spargeTemp;
    }

    public void setSpargeTemp(String spargeTemp) {
        this.spargeTemp = spargeTemp;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getTunWeight() {
        return tunWeight;
    }

    public void setTunWeight(String tunWeight) {
        this.tunWeight = tunWeight;
    }

    public String getTunSpecificHeat() {
        return tunSpecificHeat;
    }

    public void setTunSpecificHeat(String tunSpecificHeat) {
        this.tunSpecificHeat = tunSpecificHeat;
    }

    public String getEquipAdjust() {
        return equipAdjust;
    }

    public void setEquipAdjust(String equipAdjust) {
        this.equipAdjust = equipAdjust;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getDisplayGrainTemp() {
        return displayGrainTemp;
    }

    public void setDisplayGrainTemp(String displayGrainTemp) {
        this.displayGrainTemp = displayGrainTemp;
    }

    public String getDisplayTunTemp() {
        return displayTunTemp;
    }

    public void setDisplayTunTemp(String displayTunTemp) {
        this.displayTunTemp = displayTunTemp;
    }

    public String getDisplaySpargeTemp() {
        return displaySpargeTemp;
    }

    public void setDisplaySpargeTemp(String displaySpargeTemp) {
        this.displaySpargeTemp = displaySpargeTemp;
    }

    public String getDisplayTunWeight() {
        return displayTunWeight;
    }

    public void setDisplayTunWeight(String displayTunWeight) {
        this.displayTunWeight = displayTunWeight;
    }

    public List<MashStep> getMashSteps() {
        return mashSteps;
    }

    public void setMashSteps(List<MashStep> mashSteps) {
        this.mashSteps = mashSteps;
    }

}
