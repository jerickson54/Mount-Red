package PokemonDB;

public class type {
	
	private int id; //represents the pokemon
	
	private String type1;
	private String type2;
	
	
	
	


	public type(int id, String type1, String type2) {
		super();
		this.id = id;
		this.type1 = type1;
		this.type2 = type2;
	}

	




	public int getId() {
		return id;
	}






	public void setId(int id) {
		this.id = id;
	}






	public String getType1() {
		return type1;
	}






	public void setType1(String type1) {
		this.type1 = type1;
	}






	public String getType2() {
		return type2;
	}






	public void setType2(String type2) {
		this.type2 = type2;
	}






	public static String determineType(int id){
		switch(id){
		case 1:
			return "Normal";
		case 2:
			return "Fighting";
		case 3:
			return "Flying";
		case 4:
			return "Poison";
		case 5:
			return "Ground";
		case 6:
			return "Rock";
		case 7:
			return "Bug";
		case 8:
			return "Ghost";
		case 9:
			return "Steel";
		case 10:
			return "Fire";
		case 11:
			return "Water";
		case 12:
			return "Grass";
		case 13:
			return "Electric";
		case 14:
			return "Psychic";
		case 15:
			return "Ice";
		case 16:
			return "Dragon";
		case 17:
			return "Dark";
		case 18:
			return "Fairy";
		case 10001:
			return "unknown";
		case 10002:
			return "Shadow";
		default:
			return "Not a type";
		}
	}






	@Override
	public String toString() {
		return "type [id=" + id + ", type1=" + type1 + ", type2=" + type2 + "]";
	}

	
	
	
	
	
	
	

}
