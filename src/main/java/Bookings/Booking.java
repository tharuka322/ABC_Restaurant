package Bookings;

public class Booking {
	private int id;
    private String name;
    private String email;
    private String date;
    private String time;
    private int numberOfPeople;
    private String restaurant;
    private String specialRequest;

	    // Constructor with id
	    public Booking(int id, String name, String email, String date, String time, int numberOfPeople, String restaurant, String specialRequest) {
	        this.id = id;
	        this.name = name;
	        this.email = email;
	        this.date = date;
	        this.time = time;
	        this.numberOfPeople = numberOfPeople;
	        this.restaurant = restaurant;
	        this.specialRequest = specialRequest;
	    }

	    public Booking(String name, String email, String date, String time, int numberOfPeople, String restaurant, String specialRequest) {
	        this.name = name;
	        this.email = email;
	        this.date = date;
	        this.time = time;
	        this.numberOfPeople = numberOfPeople;
	        this.restaurant = restaurant;
	        this.specialRequest = specialRequest;
		}

		public Booking() {
			// TODO Auto-generated constructor stub
		}

		// Getters and Setters
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getDate() {
	        return date;
	    }

	    public void setDate(String date) {
	        this.date = date;
	    }

	    public String getTime() {
	        return time;
	    }

	    public void setTime(String time) {
	        this.time = time;
	    }

	    public int getNumberOfPeople() {
	        return numberOfPeople;
	    }

	    public void setNumberOfPeople(int numberOfPeople) {
	        this.numberOfPeople = numberOfPeople;
	    }

	    public String getRestaurant() {
	        return restaurant;
	    }

	    public void setRestaurant(String restaurant) {
	        this.restaurant = restaurant;
	    }

	    public String getSpecialRequest() {
	        return specialRequest;
	    }

	    public void setSpecialRequest(String specialRequest) {
	        this.specialRequest = specialRequest;
	    }
	}

