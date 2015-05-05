package com.thiagoperrotta;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IFPageHandler {

    public String process(HttpServletRequest request, HttpServletResponse response);
}
