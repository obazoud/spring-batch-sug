package fr.sug.springbatch.example.beans;

import java.io.Serializable;

public class MashStep implements Serializable {
    String id;
    String mashId;
    String name;
    String version;
    String type;
    String infuseAmount;
    String stepTemp;
    String stepTime;
    String rampTime;
    String endTemp;
    String description;
    String waterGrainRatio;
    String decoctionAmt;
    String infuseTemp;
    String displayStepTemp;
    String displayInfuseAmt;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMashId() {
        return mashId;
    }

    public void setMashId(String mashId) {
        this.mashId = mashId;
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

    public String getInfuseAmount() {
        return infuseAmount;
    }

    public void setInfuseAmount(String infuseAmount) {
        this.infuseAmount = infuseAmount;
    }

    public String getStepTime() {
        return stepTime;
    }

    public void setStepTime(String stepTime) {
        this.stepTime = stepTime;
    }

    public String getStepTemp() {
        return stepTemp;
    }

    public void setStepTemp(String stepTemp) {
        this.stepTemp = stepTemp;
    }

    public String getRampTime() {
        return rampTime;
    }

    public void setRampTime(String rampTime) {
        this.rampTime = rampTime;
    }

    public String getEndTemp() {
        return endTemp;
    }

    public void setEndTemp(String endTemp) {
        this.endTemp = endTemp;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWaterGrainRatio() {
        return waterGrainRatio;
    }

    public void setWaterGrainRatio(String waterGrainRatio) {
        this.waterGrainRatio = waterGrainRatio;
    }

    public String getDecoctionAmt() {
        return decoctionAmt;
    }

    public void setDecoctionAmt(String decoctionAmt) {
        this.decoctionAmt = decoctionAmt;
    }

    public String getInfuseTemp() {
        return infuseTemp;
    }

    public void setInfuseTemp(String infuseTemp) {
        this.infuseTemp = infuseTemp;
    }

    public String getDisplayStepTemp() {
        return displayStepTemp;
    }

    public void setDisplayStepTemp(String displayStepTemp) {
        this.displayStepTemp = displayStepTemp;
    }

    public String getDisplayInfuseAmt() {
        return displayInfuseAmt;
    }

    public void setDisplayInfuseAmt(String displayInfuseAmt) {
        this.displayInfuseAmt = displayInfuseAmt;
    }

}
