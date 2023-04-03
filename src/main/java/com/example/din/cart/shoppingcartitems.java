package com.example.din.cart;



import com.example.din.Product;

import java.math.BigDecimal;

public class shoppingcartitems {
    private Product product;
    private int quantity;
    private BigDecimal price;

    public  shoppingcartitems(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public BigDecimal getSubtotal() {
        return price.multiply(BigDecimal.valueOf(quantity));
    }





    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}


