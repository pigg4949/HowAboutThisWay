package com.howaboutthisway.controller;

import com.howaboutthisway.service.MapService;
import com.howaboutthisway.service.MapServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("*.map")
public class MapController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MapService service = new MapServiceImpl();

    public MapController() {}

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doAction(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doAction(req, resp);
    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // CORS preflight 요청 처리
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
        resp.setHeader("Access-Control-Allow-Headers", "Content-Type");
        resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
    }

    protected void doAction(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String uri = req.getRequestURI();
        String context = req.getContextPath();
        String command = uri.substring(context.length());

        switch (command) {
            case "/view.map":
                req.getRequestDispatcher("/WEB-INF/views/map.jsp").forward(req, resp);
                break;
            case "/saveLocation.map":
                // CORS 설정
                resp.setHeader("Access-Control-Allow-Origin", "*");
                resp.setContentType("application/json; charset=UTF-8");
                service.saveLocation(req, resp);
                break;
            case "/searchLocation.map":
                // CORS 설정
                resp.setHeader("Access-Control-Allow-Origin", "*");
                resp.setContentType("application/json; charset=UTF-8");
                service.searchLocation(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
