package services.Impl;

import models.Facility;
import models.Facilitys.Villa;
import models.Persons.Customer;
import services.Interface.FacilityService;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;

public class FacilityServiceImpl implements FacilityService {
private static Map<Facility,Integer> facilityIntegerMap = new LinkedHashMap<>();
private static Scanner scanner = new Scanner(System.in);
    @Override
    public void display() {
        for (Map.Entry<Facility,Integer> element:facilityIntegerMap.entrySet()
        ) {
            System.out.println("Service "+ element.getKey()+" Số lần đã thuê"+ element.getValue());
        }
    }

    @Override
    public void displayMaintain() {

    }

    @Override
    public void addNewVilla() {

        System.out.println("Nhập mã dv: ");
        int idFacility=Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập tên dv: ");
        String nameService = scanner.nextLine();
        System.out.println("Nhập diện tích : ");
        double areaUse = Double.parseDouble(scanner.nextLine());
        System.out.println("Nhập giới giá tiền: ");
        int rentalPrice = Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập địa số lượng người tối đa: ");
        int rentalPeopleMax=Integer.parseInt(scanner.nextLine());
        System.out.println("Nhập kiểu thuê: ");
        String styleRental =scanner.nextLine();
        System.out.println("Nhập tiêu chuẩn phòng: ");
        String standardVilla = scanner.nextLine();
        System.out.println("Nhập diện tích hồ bơi: ");
        double areaPool = Double.parseDouble(scanner.nextLine());
        System.out.println("Nhập số tầng: ");
        int floor = Integer.parseInt(scanner.nextLine());
        Villa nv = new Villa(idFacility,nameService,areaUse,rentalPrice,rentalPeopleMax,styleRental,standardVilla,
                areaPool,floor);
        facilityIntegerMap.put(nv,0);

    }

    @Override
    public void addNewHouse() {

    }

    @Override
    public void addNewRoom() {

    }

}
