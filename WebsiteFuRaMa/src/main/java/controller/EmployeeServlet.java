package controller;
import model.Employee;
import service.EmployeeService;
import service.EmployeeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet" , urlPatterns = "/showEmployee")
public class EmployeeServlet extends HttpServlet {
    EmployeeService employeeService = new EmployeeServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action){
            case "create":
                createNewEmployee(request,response);
                break;
            case "delete":
                deleteEmployeeList(request,response);
                break;

            default:
                getEmployeeList(request,response);
                break;
        }
    }

    private void deleteEmployeeList(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        employeeService.deleteEmployee(id);
        response.sendRedirect("/showEmployee");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action){
            case "create":
                response.sendRedirect(".jsp");
                break;
            case "update":
                response.sendRedirect(".jsp");
            default:
                getEmployeeList(request,response);
                break;
        }
    }
    private void getEmployeeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("liste", employeeService.getEmployeeList());
        // Forward (Chuyển tiếp) yêu cầu, để hiển thị dữ liệu trên trang JSP.
        request.getRequestDispatcher("/").forward(request, response);
    }

    private void createNewEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = (int) (Math.random()*100);
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String idCard = request.getParameter("idCard");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");

        int edu = Integer.parseInt(request.getParameter("edu"));
        int position = Integer.parseInt(request.getParameter("position"));
        Double price = Double.parseDouble(request.getParameter("price"));

        Employee employee = new Employee(id,name,dateOfBirth,idCard,sdt,email,edu,position,price);
        employeeService.addNewEmployee(employee);
        response.sendRedirect("/showEmployee");

    }
}
