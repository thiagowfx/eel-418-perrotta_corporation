package br.ufrj.lpc.mvc_many_handlers_maven.pagehandlers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.ufrj.lpc.mvc_many_handlers_maven.IFTratadorDePaginas;

public class Tratador_pagina2_jsp implements IFTratadorDePaginas{
    @Override
    public String processar(HttpServletRequest request, HttpServletResponse response){
        
        return "pagina1.jsp";
    }
}
