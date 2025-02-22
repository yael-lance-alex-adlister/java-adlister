package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;
import com.codeup.adlister.util.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(userId, title, description, username) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getUsername());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public Ad findAdById(long id) {
        System.out.println("findadbyid.id = " + id);
        try {
            String query = "SELECT * FROM ads WHERE id = ? LIMIT 1";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, String.valueOf(id));
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return new Ad(
                    rs.getLong("id"),
                    rs.getLong("userId"),
                    rs.getString("title"),
                    rs.getString("description"),
                    rs.getString("username")
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error finding individual ad with ad_id of " + id);
        }
    }

    // Used for the search field for finding ads. Takes in string of query and returns ad list
    @Override
    public List<Ad> adsTitleQuery(String q) {
        System.out.println("Searching for ad titles that begin with: " + q);
        try {
            String query = "SELECT * FROM ads WHERE title LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, "%" + q + "%");
            ResultSet rs = stmt.executeQuery();
            System.out.println("rs = " + rs.getFetchSize());
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ads from database, with title beginning with: " + q);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("userId"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("username")

        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public void delete(long id) {
        try {
            String deleteQuery = "DELETE FROM ads WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(deleteQuery);
            stmt.setLong(1, id);
            stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public Ad edit(long id){
        String editQuery = "SELECT * FROM ads WHERE id = ?";
        try{
            PreparedStatement editStmt = connection.prepareStatement(editQuery);
            editStmt.setLong(1, id);
            ResultSet resultSet = editStmt.executeQuery();
            resultSet.next();
            return extractAd(resultSet);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Ad ad) {
        String updateSql = "UPDATE ads SET title = ?, description = ? WHERE id = ?";
        try {
            PreparedStatement updateStmt = connection.prepareStatement(updateSql);
            updateStmt.setString(1, ad.getTitle());
            updateStmt.setString(2, ad.getDescription());
            updateStmt.setLong(3, ad.getId());
            updateStmt.executeUpdate();
            System.out.println("updated ad !");
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    };

    //finds adds by the id.
    public List<Ad> getAdsByUserId(Long id) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM ads WHERE userId = ?");
            statement.setLong(1, id);
            ResultSet rs = statement.executeQuery();
            return createAdsFromResults(rs);
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
