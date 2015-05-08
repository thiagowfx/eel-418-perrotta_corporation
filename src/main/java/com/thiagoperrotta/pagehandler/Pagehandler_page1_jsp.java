package com.thiagoperrotta.pagehandler;

import com.thiagoperrotta.IFPageHandler;
import com.thiagoperrotta.model.Money;
import com.thiagoperrotta.model.Money.Currency;
import com.thiagoperrotta.model.Product;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pagehandler_page1_jsp implements IFPageHandler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        int i = Integer.parseInt(request.getParameter("PRODUCTS_INDEX"));
        
        ArrayList<Product> products = (ArrayList<Product>) request.getSession().getAttribute("PRODUCTS");
        if (products == null || products.isEmpty()) {
            return "page1.jsp";
        }
        
        request.getSession().setAttribute("PRODUCT", products.get(i));

        return "page2.jsp";
    }
}
