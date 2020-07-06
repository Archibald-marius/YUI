package app.controllers.Models.dto;

public class Analysis {
    private Double eruthr;
    private Double leu;
    private Double tromb;
    private String anemyConclusion;
    private String trombConclusion;
    private String leuConclusion;
    private Double reticulosytes;
    private Double soe;
    private String soeConslusion;

    public Analysis(){

    }

    public Analysis(Double eruthr, Double leu, Double tromb, Double reticulosytes, Double soe) {
        this.eruthr = eruthr;
        this.leu = leu;
        this.tromb = tromb;
        this.reticulosytes = reticulosytes;
        this.soe = soe;
    }

    public Double getEruthr() {
        return eruthr;
    }

    public void setEruthr(Double eruthr) {
        this.eruthr = eruthr;
    }

    public Double getLeu() {
        return leu;
    }

    public void setLeu(Double leu) {
        this.leu = leu;
    }

    public Double getTromb() {
        return tromb;
    }

    public void setTromb(Double tromb) {
        this.tromb = tromb;
    }

    public String getAnemyConclusion() {
        return anemyConclusion;
    }

    public void setAnemyConclusion(String anemyConclusion) {
        this.anemyConclusion = anemyConclusion;
    }

    public String getTrombConclusion() {
        return trombConclusion;
    }

    public void setTrombConclusion(String trombConclusion) {
        this.trombConclusion = trombConclusion;
    }

    public String getLeuConclusion() {
        return leuConclusion;
    }

    public void setLeuConclusion(String leuConclusion) {
        this.leuConclusion = leuConclusion;
    }

    public Double getReticulosytes() {
        return reticulosytes;
    }

    public void setReticulosytes(Double reticulosytes) {
        this.reticulosytes = reticulosytes;
    }

    public Double getSoe() {
        return soe;
    }

    public void setSoe(Double soe) {
        soe = soe;
    }

    public String getSoeConslusion() {
        return soeConslusion;
    }

    public void setSoeConslusion(String soeConslusion) {
        this.soeConslusion = soeConslusion;
    }
}
