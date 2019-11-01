package com.codeup.adlister.dao;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;
import com.codeup.adlister.util.Config;

import java.sql.*;
import java.util.List;
import java.util.Locale;

public class MySQLCategoriesDao implements Categories{
    private Connection connection;

    public MySQLCategoriesDao(Config config) {
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
    private Categories extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
//        return new Categories(
//                rs.getLong("id"),
//                rs.getString("username")
//        );
    }



//    @Override
//    public Locale.Category getCategoriesByName(String name) {
//        String query = "SELECT * FROM categories WHERE category = ? LIMIT 1";
//        try {
//            PreparedStatement statement = connection.prepareStatement("");
//            statement.setLong(1, Long.parseLong(name));
////            return extract



    @Override
    public List<String> getCategoriesById(long id) {
        return null;
    }

    @Override
    public void insert(Ad ad) {

    }

    @Override
    public long getCategory(String category) {
        return 0;
    }

}
