package com.thiagoperrotta.pagehandler;

import com.thiagoperrotta.IFPageHandler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pagehandler_page2_jsp implements IFPageHandler {
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) {
        String jspURL="page2.jsp";
        
        /*
        try{
            numerario = format.parse(valor).doubleValue();
        }catch(Exception e){
            request.setAttribute("MENSAGEM_DE_ERRO","Erro de formato...");
            request.setAttribute("VALOR_EM_REAIS",valorOriginal);
            jspURL = "pagina1.jsp";
            System.out.println("==== "+e);
            numerario = 0F;
            return jspURL;
        }
        */
        
        String quantityStr = request.getParameter("PRODUCT_QUANTITY");
        Integer quantity;
        if(quantityStr.isEmpty() || quantityStr == null)
            quantity = 0;
        else
            quantity = Integer.parseInt(quantityStr);
        
        
        String submitButton = (String)request.getParameter("SUBMIT_BUTTON");
        
        if(submitButton != null) {
            switch (submitButton) {
               case "VOLTAR":
                   return "page1.jsp";
               case "COMPRAR":
                   return "page3.jsp";
               default:
                   return jspURL;
            }   
        }
        
        return jspURL;
    }
}