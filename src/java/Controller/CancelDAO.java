package Controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Database.DBConnection;
import Model.Reservation;
import Model.Cancel;

public class CancelDAO {

    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
        
    // Method to move reservation to done table
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
                cancel.setName(rs.getString("name"));
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
                ps = conn.prepareStatement("delete from webaseone.reservations where id_reservation=?");
                ps.setInt(1, id);
                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }

    
        public static List<Cancel> getAllRecordsdone() {
        List<Cancel> list = new ArrayList<>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from webaseone.cancel");
            ResultSet rsu;
            rsu = ps.executeQuery();
            while (rsu.next()) {
                Cancel d = new Cancel();
                d.setId_reservation(rsu.getInt("id_reservation"));
                d.setName(rsu.getString("name"));
                d.setPhone(rsu.getString("phone"));
                d.setEmail(rsu.getString("email"));
                d.setPeople(rsu.getInt("people"));
                d.setReservation_date(rsu.getString("reservation_date"));
                list.add(d);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
        
        public static int delete(Cancel don) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from webaseone.cancel where id_reservation=?");
            ps.setInt(1, don.getId_reservation());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }
}

