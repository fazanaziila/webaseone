package Controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Database.DBConnection;
import Model.Reservation;
import Model.Cancel;

public class ReservationDAO {
    
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    // Other methods...

    public static int save(Reservation rs) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("insert into webaseone.reservations (name, phone, email, people, reservation_date) values(?,?,?,?,?)");
            ps.setString(1, rs.getName());
            ps.setString(2, rs.getPhone());
            ps.setString(3, rs.getEmail());
            ps.setInt(4, rs.getPeople());
            ps.setString(5, rs.getReservation_date());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Reservation rs) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update webaseone.reservations set name=?, phone=?, email=?, people=?, reservation_date=? where id_reservation=?");
            ps.setString(1, rs.getName());
            ps.setString(2, rs.getPhone());
            ps.setString(3, rs.getEmail());
            ps.setInt(4, rs.getPeople());
            ps.setString(5, rs.getReservation_date());
            ps.setInt(6, rs.getId_reservation());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<Reservation> getAllRecords() {
        List<Reservation> list = new ArrayList<>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from webaseone.reservations");
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                Reservation r = new Reservation();
                r.setId_reservation(rsu.getInt("id_reservation"));
                r.setName(rsu.getString("first_name"));
                r.setPhone(rsu.getString("phone"));
                r.setEmail(rsu.getString("email"));
                r.setPeople(rsu.getInt("people"));
                r.setReservation_date(rsu.getString("reservation_date"));
                list.add(r);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static Reservation getRecordById(int id) {
        Reservation r = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from webaseone.reservations where id_reservation=?");
            ps.setInt(1, id);
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                r = new Reservation();
                r.setId_reservation(rsu.getInt("id_reservation"));
                r.setName(rsu.getString("first_name"));
                r.setPhone(rsu.getString("phone"));
                r.setEmail(rsu.getString("email"));
                r.setPeople(rsu.getInt("people"));
                r.setReservation_date(rsu.getString("reservation_date"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return r;
    }
    
    // Method to move reservation to cancel table
    public static int moveToCancel(int id) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();

            // Fetch the reservation by ID
            ps = conn.prepareStatement("select * from webaseone.reservations where id_reservation=?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            if (rs.next()) {
                Cancel cancel = new Cancel();
                cancel.setId_reservation(rs.getInt("id_reservation"));
                cancel.setName(rs.getString("first_name"));
                cancel.setPhone(rs.getString("phone"));
                cancel.setEmail(rs.getString("email"));
                cancel.setPeople(rs.getInt("people"));
                cancel.setReservation_date(rs.getString("reservation_date"));
                
                // Insert the reservation into done table
                ps = conn.prepareStatement("insert into webaseone.cancel (id_reservation, name, phone, email, people, reservation_date) values(?,?,?,?,?,?)");
                ps.setInt(1, cancel.getId_reservation());
                ps.setString(2, cancel.getName());
                ps.setString(3, cancel.getPhone());
                ps.setString(4, cancel.getEmail());
                ps.setInt(5, cancel.getPeople());
                ps.setString(6, cancel.getReservation_date());
                ps.executeUpdate();
                
                // Delete the reservation from the reservations table
                ps = conn.prepareStatement("delete from restoku_db.reservations where id_reservation=?");
                ps.setInt(1, id);
                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<Reservation> searchRecords(String keyword) {
        List<Reservation> list = new ArrayList<>();
        try {
            conn = new DBConnection().setConnection();
            sql = "SELECT * FROM webaseone.reservations where name LIKE ? OR phone LIKE ? OR email LIKE ?";
            ps = conn.prepareStatement(sql);
            String searchPattern = "%" + keyword + "%";
            ps.setString(1, searchPattern);
            ps.setString(2, searchPattern);
            ps.setString(3, searchPattern);
            ps.setString(4, searchPattern);
            rs = ps.executeQuery();
            while (rs.next()) {
                Reservation r = new Reservation();
                r.setId_reservation(rs.getInt("id_reservation"));
                r.setName(rs.getString("name"));
                r.setPhone(rs.getString("phone"));
                r.setEmail(rs.getString("email"));
                r.setPeople(rs.getInt("people"));
                r.setReservation_date(rs.getString("reservation_date"));
                list.add(r);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
