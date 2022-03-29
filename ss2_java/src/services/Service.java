package services;

import java.io.FileNotFoundException;

public abstract interface Service {
    public abstract void display();

    public abstract void addNew() throws FileNotFoundException;

    public abstract void edit();

    public abstract void delete();
}
