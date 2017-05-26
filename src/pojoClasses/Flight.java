package pojoClasses;

public class Flight {
	
	
	
	private String from_location;
	private String to_location;
	private String travel_class;
	private int passengers;
	private String depart_date;
	private String arrival_date;
	private String depart_time;
	private String arrival_time;	
	private String leg;	
	private String return_depart_time;
	private String return_arrival_time;	
	private String duration;
	private String stops;
	private int price;	

	public String getStops() {
		return stops;
	}
	public void setStops(String stops) {
		this.stops = stops;
	}


	
	public String getDepart_time() {
		return depart_time;
	}
	public void setDepart_time(String depart_time) {
		this.depart_time = depart_time;
	}
	public String getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}
	public String getLeg() {
		return leg;
	}
	public void setLeg(String leg) {
		this.leg = leg;
	}
	public String getReturn_depart_time() {
		return return_depart_time;
	}
	public void setReturn_depart_time(String return_depart_time) {
		this.return_depart_time = return_depart_time;
	}
	public String getReturn_arrival_time() {
		return return_arrival_time;
	}
	public void setReturn_arrival_time(String return_arrival_time) {
		this.return_arrival_time = return_arrival_time;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getFrom_location() {
		return from_location;
	}
	public void setFrom_location(String from_location) {
		this.from_location = from_location;
	}
	public String getTo_location() {
		return to_location;
	}
	public void setTo_location(String to_location) {
		this.to_location = to_location;
	}
	public String getDepart_date() {
		return depart_date;
	}
	public void setDepart_date(String depart_date) {
		this.depart_date = depart_date;
	}
	public String getArrival_date() {
		return arrival_date;
	}
	public void setArrival_date(String arrival_date) {
		this.arrival_date = arrival_date;
	}
	public String getTravel_class() {
		return travel_class;
	}
	public void setTravel_class(String travel_class) {
		this.travel_class = travel_class;
	}
	public int getPassengers() {
		return passengers;
	}
	public void setPassengers(int passengers) {
		this.passengers = passengers;
	}
	

}
