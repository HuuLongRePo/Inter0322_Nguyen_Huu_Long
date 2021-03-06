package models;

public abstract class Facility {
    private int idFacility;
    private String nameService;
    private double areaUse;
    private int rentalPrice;
    private int rentalPeopleMax;
    private String styleRental;

    public Facility(int idFacility, String nameService, double areaUse, int rentalPrice, int rentalPeopleMax, String styleRental) {
        this.idFacility = idFacility;
        this.nameService = nameService;
        this.areaUse = areaUse;
        this.rentalPrice = rentalPrice;
        this.rentalPeopleMax = rentalPeopleMax;
        this.styleRental = styleRental;
    }

    public Facility() {
    }

    @Override
    public String toString() {
        return
                "idFacility=" + idFacility +
                        ", nameService='" + nameService + '\'' +
                        ", areaUse=" + areaUse +
                        ", rentalPrice=" + rentalPrice +
                        ", rentalPeopleMax=" + rentalPeopleMax +
                        ", styleRental='" + styleRental + '\''
                ;
    }

    public int getIdFacility() {
        return idFacility;
    }

    public void setIdFacility(int idFacility) {
        this.idFacility = idFacility;
    }

    public String getNameService() {
        return nameService;
    }

    public void setNameService(String nameService) {
        this.nameService = nameService;
    }

    public double getAreaUse() {
        return areaUse;
    }

    public void setAreaUse(double areaUse) {
        this.areaUse = areaUse;
    }

    public int getRentalPrice() {
        return rentalPrice;
    }

    public void setRentalPrice(int rentalPrice) {
        this.rentalPrice = rentalPrice;
    }

    public int getRentalPeopleMax() {
        return rentalPeopleMax;
    }

    public void setRentalPeopleMax(int rentalPeopleMax) {
        this.rentalPeopleMax = rentalPeopleMax;
    }

    public String getStyleRental() {
        return styleRental;
    }

    public void setStyleRental(String styleRental) {
        this.styleRental = styleRental;
    }
}
