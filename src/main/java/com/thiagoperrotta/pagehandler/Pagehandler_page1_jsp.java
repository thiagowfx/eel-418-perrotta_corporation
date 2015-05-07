package com.thiagoperrotta.pagehandler;

import com.thiagoperrotta.IFPageHandler;
import com.thiagoperrotta.model.Money;
import com.thiagoperrotta.model.Money.Currency;
import com.thiagoperrotta.model.Product;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pagehandler_page1_jsp implements IFPageHandler {
    
    private ArrayList<Product> products;

    void setUp() {
        products = new ArrayList<>();
        
        products.add(new Product(
                "Ultrabook Levelho Lazypad M42U",
                "Portátil. Leve. Ultrafino. Com o design e a qualidade que você já conhece.",
                new Money(2399.99),
                "assets/images/ultrabook.png"
        ));

        products.add(new Product(
                "Tablet Universe T4",
                "Prático. Divertido. Agora com processador quad core e 20 gramas mais leve.",
                new Money(649.99, Currency.USD),
                "assets/images/tablet.png"
        ));

        products.add(new Product(
                "Smartphone Nezzuxx Azure J1",
                "O novo smartphone da linha Nezzuxx. Dessa vez, você vai se surpreender ainda mais.",
                new Money(949.99),
                "assets/images/smartphone.png"
        ));
    }

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        setUp();
        
        int i = Integer.parseInt(request.getParameter("PRODUCTS_INDEX"));
        
        request.setAttribute("PRODUCT", products.get(i));

        return "page2.jsp";
    }
}
