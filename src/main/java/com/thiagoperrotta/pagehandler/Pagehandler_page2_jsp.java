package com.thiagoperrotta.pagehandler;

import com.thiagoperrotta.IFPageHandler;
import com.thiagoperrotta.model.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pagehandler_page2_jsp implements IFPageHandler {
    
    private Product PRODUCT_H;

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        String quantityStr = request.getParameter("QUANTITY");
        Integer quantity;
        if (quantityStr == null || quantityStr.isEmpty()) {
            quantity = 0;
        } else {
            quantity = Integer.parseInt(quantityStr);
        }

        String submitButton = (String) request.getParameter("SUBMIT_BUTTON2");

        if (!submitButton.isEmpty()) {
            switch (submitButton) {
                case "VOLTAR":
                    return "page1.jsp";
                case "COMPRAR":
                    return "page3.jsp";
            }
        }

        return "page2.jsp";
    }
}
