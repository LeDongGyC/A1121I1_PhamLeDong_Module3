import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"", "/customer"})
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Mai Văn Hoàng","1983-08-20","Hà Nội","https://www.google.com.vn/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F12%2FUser_icon_2.svg%2F800px-User_icon_2.svg.png&imgrefurl=https%3A%2F%2Fvi.wikipedia.org%2Fwiki%2FNg%25C6%25B0%25E1%25BB%259Di_d%25C3%25B9ng_(%25C4%2591i%25E1%25BB%2587n_to%25C3%25A1n)&tbnid=f3iPe5pB9diemM&vet=12ahUKEwi-g6fY3PX3AhWHAKYKHW5-D34QMygAegUIARC8AQ..i&docid=6C4dhy3Wpjh_RM&w=800&h=800&q=user&hl=vi&authuser=0&ved=2ahUKEwi-g6fY3PX3AhWHAKYKHW5-D34QMygAegUIARC8AQ"));
        customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang","https://www.google.com.vn/imgres?imgurl=http%3A%2F%2Fativn.edu.vn%2Fwp-content%2Fuploads%2F2018%2F03%2Fuser.png&imgrefurl=http%3A%2F%2Fativn.edu.vn%2Ftrang-chu%2Fuser&tbnid=WolMlMwgLhr1JM&vet=12ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ..i&docid=ufAdPhxxMoiLNM&w=256&h=256&q=user&hl=vi&authuser=0&ved=2ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ"));
        customerList.add(new Customer("Nguyễn Thái Hoà","1983-08-22","Nam Định","https://www.google.com.vn/imgres?imgurl=http%3A%2F%2Fativn.edu.vn%2Fwp-content%2Fuploads%2F2018%2F03%2Fuser.png&imgrefurl=http%3A%2F%2Fativn.edu.vn%2Ftrang-chu%2Fuser&tbnid=WolMlMwgLhr1JM&vet=12ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ..i&docid=ufAdPhxxMoiLNM&w=256&h=256&q=user&hl=vi&authuser=0&ved=2ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ"));
        customerList.add(new Customer("Trần Đăng Khoa","1983-08-17","Hà Tây","https://www.google.com.vn/imgres?imgurl=http%3A%2F%2Fativn.edu.vn%2Fwp-content%2Fuploads%2F2018%2F03%2Fuser.png&imgrefurl=http%3A%2F%2Fativn.edu.vn%2Ftrang-chu%2Fuser&tbnid=WolMlMwgLhr1JM&vet=12ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ..i&docid=ufAdPhxxMoiLNM&w=256&h=256&q=user&hl=vi&authuser=0&ved=2ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygCegUIARDAAQ"));
        customerList.add(new Customer("Nguyễn Đình Thi","1983-08-19","Hà Nội","https://www.google.com.vn/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F7%2F7c%2FUser_font_awesome.svg%2F2048px-User_font_awesome.svg.png&imgrefurl=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AUser_font_awesome.svg&tbnid=bioz38Mge73kaM&vet=12ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygFegUIARDGAQ..i&docid=K3ULvZJhd8TEbM&w=2048&h=2048&q=user&hl=vi&authuser=0&ved=2ahUKEwig7f3v3fX3AhWNOZQKHYxTBQkQMygFegUIARDGAQ"));
        request.setAttribute("customerList",customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
        dispatcher.forward(request,response);
    }
}
