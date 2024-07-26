
package Controller;

import static Controller.ManageDAO.conn;
import static Controller.ManageDAO.ps;
import Database.DBConnection;
import Model.SignUp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ManageDAO {

    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

public static int save(SignUp sg) {
    int status = 0;
    try {
        DBConnection db = new DBConnection();
        Connection conn = db.setConnection();
        String sql = "INSERT INTO webaseone.user (name, email, username, password "
                   + "name, email, username, password) values (?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, sg.getName());
        ps.setString(2, sg.getEmail());
        ps.setString(3, sg.getUsername());
        ps.setString(4, sg.getPassword());

        status = ps.executeUpdate();
    } catch (SQLException e) {
        System.out.println(e);
    }
    return status;
}
 public static int update(SignUp sg) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update webaseone.user set name=?, email=?, username=?, password=? where username=?");
            ps.setString(1, sg.getName());
            ps.setString(2, sg.getEmail());
            ps.setString(3, sg.getUsername());
            ps.setString(4, sg.getPassword());
            

            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<SignUp> getAllRecords() {
        List<SignUp> list = new ArrayList<>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from webaseone.user");
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                SignUp r = new SignUp();
                r.setName(rsu.getString("name"));
                r.setEmail(rsu.getString("email"));
                r.setUsername(rsu.getString("username"));
                r.setPassword(rsu.getString("password"));
                list.add(r);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static SignUp getRecordById(int id) {
        SignUp r = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from webaseone.user where username=?");
            ps.setInt(1, id);
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                r = new SignUp();
                r.setName(rsu.getString("name"));
                r.setEmail(rsu.getString("email"));
                r.setUsername(rsu.getString("phone"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return r;

}
       public static int delete(SignUp don) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from webaseone.user where username=?");
            ps.setString(1, don.getUsername());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }
}