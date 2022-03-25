package models;



public abstract class Person {

    private  int id;
    private  String name;
    private  int age;
    private boolean sex;
    private  String adress;
    private  String idCard;
    private  String email;


    public Person() {
    }

    @Override
    public String toString() {
        return
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", adress='" + adress + '\'' +
                ", idCard='" + idCard + '\'' +
                ", email='" + email + '\'';
    }

    public Person(int id, String name, int age, boolean sex, String adress, String idCard, String email) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.adress = adress;
        this.idCard = idCard;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
