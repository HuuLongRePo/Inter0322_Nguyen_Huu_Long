package controller;


import model.Customer;
import service.CustomerService;
import service.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/showCustomer")
public class CustomerServlet extends HttpServlet {
    //  Triển khai Dependence Injection
    private CustomerService customerService = new CustomerServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create" :
                registerNewCustomer(request,response);
                break;
            case "delete" :
                deleteCustomer(request,response);
                break;
            case "update":
                updateCustomer(request,response);
                break;
            default:
                getCustomerList(request,response);
                break;
        }
    }



    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action ==null) {
            action = "";
        }
        switch (action) {
            case "create":
                response.sendRedirect("customerhdl.jsp");
                break;
            case "update":
                goUpdate(request,response);
                break;
            default:
                getCustomerList(request,response);
                break;
        }
    }


    private void getCustomerList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("listp", customerService.getCustomerList());

        request.getRequestDispatcher("views/show-customer.jsp").forward(request, response);

    }

    private void registerNewCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = (int) (Math.random() * 1000);
        System.out.println(id);
        String name =request.getParameter("name");
        String sex =request.getParameter("sex");
        String idCard =request.getParameter("idCard");
        String email =request.getParameter("email");
        String dateOfBirth =request.getParameter("dateOfBirth");
        String sdt =request.getParameter("sdt");
        String typeCustomer =request.getParameter("typeCustomer");
        String address =request.getParameter("address");

        Customer customer = new Customer(id,name, dateOfBirth,idCard,sex,sdt,email,typeCustomer,address);
        customerService.addCustomerList(customer);
        request.setAttribute("message" , "Thêm thành công!");
//        tới trang list customer
        getCustomerList(request,response);

    }

    private void goUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int index = Integer.parseInt(request.getParameter("index"));

        request.setAttribute("customer", customerService.getIndexCustomer(index));
        request.setAttribute("index", index);
        request.getRequestDispatcher("/customerEdit.jsp").forward(request, response);
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int index = Integer.parseInt(request.getParameter("index"));
        String name =request.getParameter("name");
        String sex =request.getParameter("sex");
        String idCard =request.getParameter("idCard");
        String email =request.getParameter("email");
        String dateOfBirth =request.getParameter("dateOfBirth");
        String sdt =request.getParameter("sdt");
        String typeCustomer =request.getParameter("typeCustomer");
        String address =request.getParameter("address");

        Customer customer = new Customer(id,name, dateOfBirth,idCard,sex,sdt,email,typeCustomer,address);
        customerService.deleteCustomer(id);
        customerService.addCustomerIndex(index,customer);
        request.setAttribute("message" , "Sửa thành công!");
//        tới trang list customer
        getCustomerList(request,response);

    }


    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        customerService.deleteCustomer(id);
        response.sendRedirect("/showCustomer");

    }
}
