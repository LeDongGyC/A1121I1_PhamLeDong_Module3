package model.repository.impl;

import model.bean.Product;
import model.repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    public static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Coca", 10000, "nước ngọt"));
        productList.add(new Product(2, "Pepsi", 10000, "nước ngọt"));
        productList.add(new Product(3, "TH True Milk", 35000, "sữa có đường"));
        productList.add(new Product(4, "Larue", 10000, "nước uống có cồn"));
        productList.add(new Product(5, "vitamin các loại", 15000, "thực phẩm bổ sung"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                return productList.get(i);
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                productList.set(i, product);
            }
        }
    }

    @Override
    public void remove(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (id == productList.get(i).getId()) {
                productList.remove(i);
            }
        }
    }
}