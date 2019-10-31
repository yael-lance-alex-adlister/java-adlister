package com.codeup.adlister.dao;

import javax.servlet.jsp.jstl.core.Config;
import java.sql.*;

public class MySQLCategoriesDao {
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
            throw new RuntimeException("Error connectiong to the database!", e);
        }
    }

}
