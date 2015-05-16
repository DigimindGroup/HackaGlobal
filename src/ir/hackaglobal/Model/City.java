package ir.hackaglobal.Model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class City {
	private int id;
	private String name;
	private User admin;
	private String bannerUrl;
	private String logoUrl;
	private String description;
	private String facebookUrl;
	private String twitterUrl;
	
	private List<Organizer> organizers;
	private List<Event> events;

	@Id
	@GeneratedValue
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
	
	@OneToOne(fetch = FetchType.EAGER)
	public User getAdmin() {
		return admin;
	}

	public void setAdmin(User admin) {
		this.admin = admin;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	@OneToMany(mappedBy="city",targetEntity=Event.class,fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	@OneToMany(mappedBy="city",targetEntity=Organizer.class,fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	public List<Organizer> getOrganizers() {
		return organizers;
	}

	public void setOrganizers(List<Organizer> organizers) {
		this.organizers = organizers;
	}

	public String getBannerUrl() {
		return bannerUrl;
	}

	public void setBannerUrl(String bannerUrl) {
		this.bannerUrl = bannerUrl;
	}

	public String getLogoUrl() {
		return logoUrl;
	}

	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	public String getFacebookUrl() {
		return facebookUrl;
	}

	public void setFacebookUrl(String facebookUrl) {
		this.facebookUrl = facebookUrl;
	}

	public String getTwitterUrl() {
		return twitterUrl;
	}

	public void setTwitterUrl(String twitterUrl) {
		this.twitterUrl = twitterUrl;
	}

	
	
	

}
