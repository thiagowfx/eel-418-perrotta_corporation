package br.ufrj.lpc.mvc_many_handlers_maven;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IFTratadorDePaginas {
    public String processar(HttpServletRequest request,
                            HttpServletResponse response);
}
