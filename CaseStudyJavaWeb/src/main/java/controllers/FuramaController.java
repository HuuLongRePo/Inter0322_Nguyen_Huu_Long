package controllers;

import models.Facility;
import models.Persons.Employee;
import services.Impl.CustomerServiceImpl;
import services.Impl.EmployeeServiceImpl;
import services.Impl.FacilityServiceImpl;

import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.Scanner;

public class FuramaController {
    public static void menuzero() {
        System.out.println("1. Employee Management\n" +
                "2. Customer Management\n" +
                "3. Facility Management\n" +
                "4. Booking Managerment\n" +
                "5. Promotion Management\n" +
                "6. Exit");
    }
    public static void menuone() {
        System.out.println("1 Display list employees\n" +
                "2. Add new employee\n" +
                "3. Edit employee\n" +
                "4. Remove employee\n" +
                "5. Return main menu");
    }
    public static void menutwo() {
        System.out.println("1. Display list customers\n" +
                "2. Add new customer\n" +
                "3. Edit customer\n" +
                "4. Remove customer\n" +
                "5. Return main menu");
    }
    public static void menuthree() {
        System.out.println("1 Display list facility\n" +
                "2 Add new facility\n" +
                "3 Display list facility maintenance\n" +
                "4 Return main menu");
    }
    public static void menufour() {
        System.out.println("1. Add new booking\n" +
                "2. Display list booking\n" +
                "3. Create new constracts\n" +
                "4. Display list contracts\n" +
                "5. Edit contracts\n" +
                "6. Remove contracts\n" +
                "7. Return main menu");
    }
    public static void menufive() {
        System.out.println("1. Display list customers use service\n" +
                "2. Display list customers get voucher\n" +
                "3. Return main menu");
    }
    public static void menuDisplayAddFacility() {
        System.out.println("1. Add New Villa\n" +
                "2. Add New House\n" +
                "3. Add New Room\n" +
                "4. Back to menu");
    }
    public static void exit() {
        System.out.println("Kết thúc!!");
        System.exit(0);
    }
    public static int v;
    public static EmployeeServiceImpl ne = new EmployeeServiceImpl();
    public static CustomerServiceImpl nc = new CustomerServiceImpl();
    public static FacilityServiceImpl nf = new FacilityServiceImpl() ;

    public static < e > void displayMainMenu() {
        boolean check = true;
        while (check) {
            menuzero();


            System.out.println("Vui lòng nhập: ");
            try {
                Scanner n = new Scanner(System.in);
                v = Integer.parseInt(String.valueOf(n.nextInt()));
            } catch (Exception e) {
                System.out.println("Nhập Lỗi!!");
            }


            switch (v) {
                case 1:
                {

                    EmployeeMn();
                    break;
                }
                case 2:
                {
                    menutwo();
                    System.out.println("Vui lòng nhập: ");
                    try {
                        Scanner n1 = new Scanner(System.in);
                        v = Integer.parseInt(String.valueOf(n1.nextInt()));
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                    switch (v) {
                        case 1:
                        {
                            nc.display();
                            break;
                        }
                        case 2:
                        {
                            try {
                                nc.addNew();
                            } catch (Exception e) {
                                System.out.println(e);
                            }

                            break;
                        }
                        case 3:
                        {
                            nc.display();
                            System.out.println("enter để tiếp tục");
                            nc.edit();
                            break;
                        }
                        case 4:
                        {
                            try {
                                nc.delete();

                            }catch (Exception e){
                            System.out.println("Xóa không thành công");
                        }

                            break;
                        }
                        case 5:
                        {
                            System.out.println("Màn hình chính!!!");
                            break;
                        }
                    }
                    break;
                }
                case 3:
                {
                    menuthree();
                    System.out.println("Vui lòng nhập: ");
                    try {
                        Scanner n1 = new Scanner(System.in);
                        v = Integer.parseInt(String.valueOf(n1.nextInt()));
                    } catch (Exception e) {
                        System.out.println("Nhập Lỗi !!");
                    }
                    switch (v) {
                        case 1:
                        {
                            nf.display();
                            break;
                        }
                        case 2:
                        {
                            menuDisplayAddFacility();
                            System.out.println("Vui lòng nhập: ");
                            try {
                                Scanner n1 = new Scanner(System.in);
                                v = Integer.parseInt(String.valueOf(n1.nextInt()));
                            } catch (Exception e) {
                                System.out.println("Nhập Lỗi !!");
                            }
                            switch (v)
                            {
                                case 1:{
                                    try {
                                        nf.addNewVilla();
                                    }catch (NumberFormatException e){
                                        System.out.println(e);
                                    }
                                    break;
                                }
                                case 4:{
                                    System.out.println("Màn hình chính!!");
                                    break;
                                }
                            }
                            break;
                        }
                        case 4:
                        {
                            System.out.println("Màn hình chính!!!");
                            break;
                        }
                    }
                    break;
                }
                case 4:
                {
                    menufour();
                    System.out.println("Vui lòng nhập: ");
                    try {
                        Scanner n1 = new Scanner(System.in);
                        v = Integer.parseInt(String.valueOf(n1.nextInt()));
                    } catch (Exception e) {
                        System.out.println("Nhập Lỗi !!");
                    }
                    switch (v) {
                        case 6:
                        {
                            System.out.println("Màn hình chính!!!");
                            break;
                        }
                    }
                    break;
                }
                case 5:
                {
                    menufive();
                    System.out.println("Vui lòng nhập: ");
                    try {
                        Scanner n1 = new Scanner(System.in);
                        v = Integer.parseInt(String.valueOf(n1.nextInt()));
                    } catch (Exception e) {
                        System.out.println("Nhập Lỗi !!");
                    }
                    switch (v) {
                        case 3:
                        {
                            System.out.println("Màn hình chính!!!");
                            break;
                        }
                    }
                    break;
                }
                case 6:
                {
                    exit();
                    break;
                }
            }
        }
    }

    private static void EmployeeMn() {
        menuone();
        System.out.println("Vui lòng nhập: ");
        try {
            Scanner n1 = new Scanner(System.in);
            v = Integer.parseInt(String.valueOf(n1.nextInt()));
        } catch (Exception e) {
            System.out.println("Nhập Lỗi !!");
        }

        switch (v) {

            case 1:
            {
                try{
                    ne.display();
                }catch (NullPointerException e){
                    System.out.println(e);
                }catch (Exception e) {
                    e.printStackTrace();
                }
                EmployeeMn();
                break;
            }
            case 2:
            {

                try {
                    ne.addNew();
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                }

                EmployeeMn();
                break;
            }
            case 3:
            {
                ne.display();
                ne.edit();
                EmployeeMn();
                break;
            }
            case 4:
            {
                try {
                    ne.delete();
                    EmployeeMn();
                }catch (Exception e){
                    System.out.println(e);
                }

                break;}
            case 5:
            {
                displayMainMenu();
                System.out.println("Màn hình chính!!!");
                break;
            }
        }
    }

    public static void main(String[] args) {
        displayMainMenu();
    }
}