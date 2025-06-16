package com.howaboutthisway.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface MapService {
    void saveLocation(HttpServletRequest request, HttpServletResponse response) throws IOException;
    void getLocation(HttpServletRequest req, HttpServletResponse resp) throws IOException;
    void searchLocation(HttpServletRequest request, HttpServletResponse response) throws IOException;
}
