package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;

// https://itphutran.com/cach-khac-phuc-loi-java-io-notserializableexception-trong-java/
// fixx

public class ReadWriteFile {
    public static void write(Collection collection, String fileAddress) {
        File file = new File(fileAddress);
        if(!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {

                e.printStackTrace();
            }
        }

        FileOutputStream fileOutputStream = null;
        ObjectOutputStream objectOutputStream = null;

        try {
            fileOutputStream = new FileOutputStream(file);
            objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(collection);
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                fileOutputStream.close();
                objectOutputStream.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    public static Object read(String fileAddress) {
        FileInputStream fileInputStream = null;
        ObjectInputStream objectInputStream = null;

        Object object = null;

        try {
            fileInputStream = new FileInputStream(fileAddress);
            objectInputStream = new ObjectInputStream(fileInputStream);

            object = objectInputStream.readObject();
            return object;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }
}
/*
package utils;



import java.io.*;
import java.util.Collection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ReadAndWrite
{
    public static void write(Collection collection, String diaChi)
    {

        File file = new File(diaChi);
        if(!file.exists()){
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        FileOutputStream fileOutputStream = null;
        ObjectOutputStream objectOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            objectOutputStream = new ObjectOutputStream(fileOutputStream);
            objectOutputStream.writeObject(collection);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                fileOutputStream.close();
                objectOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }
public static Object read(String diaChi){

    FileInputStream fileInputStream = null;
    ObjectInputStream objectInputStream = null;
    Object object = null;
    try {
        fileInputStream = new FileInputStream(diaChi);
        objectInputStream = new ObjectInputStream(fileInputStream);
        object = objectInputStream.readObject();
        return object;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}
}
*/
