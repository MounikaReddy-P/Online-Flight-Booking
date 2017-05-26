package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojoClasses.Flight;
import travelClouds.FlightDAO;

/**
 * Servlet implementation class BookFlightServlet
 */
@WebServlet("/BookFlightServlet")
public class BookFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookFlightServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Flight flight = new Flight();
		FlightDAO flightDAO = new FlightDAO();
		ArrayList<Flight> flightDetails = new ArrayList<>();
		
		String from_location = request.getParameter("from_location");
		String to_location = request.getParameter("to_location");
		String depart_date = request.getParameter("depart_date");
		String arrival_date = request.getParameter("arrival_date");
		String travel_class = request.getParameter("travel_class");
		int passengers = Integer.parseInt(request.getParameter("passengers"));
		

		
		flight.setFrom_location(from_location);
		flight.setTo_location(to_location);
		flight.setDepart_date(depart_date);
		flight.setArrival_date(arrival_date);
		flight.setTravel_class(travel_class);
		flight.setPassengers(passengers);
		
		flightDetails = flightDAO.fetchFlightInfo(from_location, to_location, travel_class);
		System.out.println("In Servlet"+flightDetails.size());
		for(Flight flightDetail:flightDetails){
			
			System.out.println(flightDetail.getDepart_date());
		}
		if(flightDetails.size()>0){
			request.setAttribute("flights", flightDetails);
			RequestDispatcher view = request.getRequestDispatcher("/web/viewFlightDetails.jsp");
			view.forward(request, response);
			
		}
		
		
	}

}
