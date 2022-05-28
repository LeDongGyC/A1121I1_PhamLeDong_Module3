package controller;

import model.bean.Product;
import model.service.IProductService;
import model.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action ==null){
            action = "";
        }
        switch (action){
            case "create":
                save(request,response);
                break;
            case "edit" :
                edit(request,response);
                break;
            case "delete" :
                detele(request,response);
                break;
        }
    }

    private void detele(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        productService.remove(id);
        response.sendRedirect("/product");

    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        String newName = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String type = request.getParameter("type");

        Product product = new Product(id,newName,price,type);
        productService.update(id,product);

        response.sendRedirect("/product");
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String type = request.getParameter("type");

        Product product = new Product(id,name,price,type);
        productService.save(product);
        response.sendRedirect("/product");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreate(request, response);
                break;
            case "edit" :
                showEditForm(request,response);
                break;
            case "delete" :
                showDeleteForm(request,response);
                break;
//            case "search" :
//                searchProduct(request,response);
//                break;
            default:
                showListProduct(request, response);
        }
    }

//    private void searchProduct(HttpServletRequest request, HttpServletResponse response) {
//
//    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        request.setAttribute("product",product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/delete.jsp");
        dispatcher.forward(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        request.setAttribute("product",product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/edit.jsp");
        dispatcher.forward(request,response);
    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.findAll();
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/list.jsp");
        dispatcher.forward(request,response);
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/create.jsp");
        dispatcher.forward(request,response);
    }
}
