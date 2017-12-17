package PokemonDB;

public class ability {

	private int id;
	private String name;
	private int mainSeries;
	
	public ability(int id, String name, int mainSeries) {
		super();
		this.id = id;
		this.name = name;
		this.mainSeries = mainSeries;
	}

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

	public int getMainSeries() {
		return mainSeries;
	}

	public void setMainSeries(int mainSeries) {
		this.mainSeries = mainSeries;
	}

	@Override
	public String toString() {
		return "ability [id=" + id + ", name=" + name + ", mainSeries=" + mainSeries + "]";
	}
	
	
	
	
	
	
}
