package com.example.din;

import java.math.BigDecimal;
import java.sql.*;
import java.util.Base64;

public class Product {
    private int id;
    private String name;
    private String description;
    private String category;
    private BigDecimal price;
    private byte[] image;
    private String dimensions;
    private String weight;
    private String color;

    public Product(int id, String name, String description, String category, BigDecimal price, byte[] image, String dimensions, String weight, String color) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.category = category;
        this.price = price;
        this.image = image;
        this.dimensions = dimensions;
        this.weight = weight;
        this.color = color;
    }

    public String getImageBase64() {
        if (image == null) {
            return null;
        }
        return Base64.getEncoder().encodeToString(image);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }


    public static void closeResources(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            System.out.println("Error closing ResultSet: " + e.getMessage());
        }

        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException e) {
            System.out.println("Error closing Statement: " + e.getMessage());
        }

        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println("Error closing Connection: " + e.getMessage());
        }
    }




    public static Product getProductById(int productId) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Product product = null;
        try {
            conn = DBConnction.getConn();
            stmt = conn.prepareStatement("SELECT * FROM products WHERE id = ?");
            stmt.setInt(1, productId);
            rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String category = rs.getString("category");
                BigDecimal price = rs.getBigDecimal("price");
                byte[] image = rs.getBytes("image");

                String dimensions = rs.getString("dimensions");
                String weight = rs.getString("weight");
                String color = rs.getString("color");
//                int stock = rs.getInt("stock");
                product = new Product(id, name, description, category, price, image,  dimensions, weight, color);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(conn, stmt, rs);
        }
        return product;
    }



}

