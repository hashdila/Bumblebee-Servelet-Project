package com.example.din.cart;



import com.example.din.Product;



import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class shoppingcart {
    private static List<shoppingcartitems> items;

    public shoppingcart() {
        this.items = new ArrayList<>();
    }

    public static List<shoppingcartitems> getItems() {
        return items;
    }

    public static void addItem(Product product, int quantity) {
        BigDecimal price = product.getPrice().multiply(new BigDecimal(quantity));
        shoppingcartitems item = new shoppingcartitems(product, quantity);
        items.add(item);
    }

    public static BigDecimal getTotal(List<shoppingcartitems> items) {
        BigDecimal total = BigDecimal.ZERO;
        for (shoppingcartitems item : items) {
            total = total.add(item.getSubtotal());
        }
        return total;
    }

    public static void removeItem(Product product) {
        for (Iterator<shoppingcartitems> iterator = items.iterator(); iterator.hasNext();) {
            shoppingcartitems item = iterator.next();
            if (item.getProduct().equals(product)) {
                iterator.remove();
                break;
            }
        }
    }

    public static void clear() {
        items.clear();
        BigDecimal subtotal = BigDecimal.ZERO;
        BigDecimal total = BigDecimal.ZERO;
    }
}


