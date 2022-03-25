package models.Persons;

import models.Person;

public class Customer extends Person {
    String numberPhone;
    String customeType;

    @Override
    public String toString() {
        return "Customer{" +   super.toString() +
                "numberPhone='" + numberPhone + '\'' +
                ", customeType='" + customeType + '\'' +
                "}";
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getCustomeType() {
        return customeType;
    }

    public void setCustomeType(String customeType) {
        this.customeType = customeType;
    }

    public Customer(String numberPhone, String customeType) {
        this.numberPhone = numberPhone;
        this.customeType = customeType;
    }

    public Customer(int id, String name, int age, boolean sex, String adress, String idCard, String email, String numberPhone, String customeType) {
        super(id, name, age, sex, adress, idCard, email);
        this.numberPhone = numberPhone;
        this.customeType = customeType;
    }
}
