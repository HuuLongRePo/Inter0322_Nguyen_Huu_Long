package dao;

import java.sql.PreparedStatement;


public class CustomerDAO {
    String queryInsert = " insert into users (first_name, last_name, date_created, is_admin, num_points)"
            + " values (?, ?, ?, ?, ?)";
`
}
