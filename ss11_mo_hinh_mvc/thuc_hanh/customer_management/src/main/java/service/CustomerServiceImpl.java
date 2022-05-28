package service;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements ICustomerService {
    private static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer(1,"Pham Le Dong", "dongpham@gmail.com","Quang Nam"));
        customerList.add(new Customer(2,"Nguyen Van Huy", "huynguyen@gmail.com","Nghe An"));
        customerList.add(new Customer(3,"Nguyen Thanh Hai", "hainguyen@gmail.com","Quang Tri"));
        customerList.add(new Customer(4,"Vo Quoc Thai", "thaivo@gmail.com","Quang Nam"));
        customerList.add(new Customer(5,"Pham Van Xuan", "xuanpham@gmail.com","Da Nang"));
    }
    @Override
    public List<Customer> findAll() {
        return customerList;
    }

    @Override
    public void save(Customer customer) {
        customerList.add(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerList.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customerList.set(id,customer);
    }

    @Override
    public void remove(int id) {
        customerList.remove(id);
    }
}
