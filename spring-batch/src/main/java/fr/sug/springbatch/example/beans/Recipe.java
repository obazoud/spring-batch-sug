package fr.sug.springbatch.example.beans;

/**
 *
 * @author bazoud
 * @version $Id$
 */
public class Recipe {
    String name;
    String version;
    String type;
    String brewer;
    String asstBrewer;
    String batchSize;
    String boilSize;
    String boilTime;
    String efficiency;

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

}
