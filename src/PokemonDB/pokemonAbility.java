package PokemonDB;

public class pokemonAbility {
	
	private int id;
	private int ability1;
	private int ability2;
	private int hiddenability;
	
	
	

	public pokemonAbility(int id, int ability1, int ability2, int hiddenability) {
		super();
		this.id = id;
		this.ability1 = ability1;
		this.ability2 = ability2;
		this.hiddenability = hiddenability;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public int getAbility1() {
		return ability1;
	}

	public void setAbility1(int ability1) {
		this.ability1 = ability1;
	}

	public int getAbility2() {
		return ability2;
	}

	public void setAbility2(int ability2) {
		this.ability2 = ability2;
	}

	public int getHiddenability() {
		return hiddenability;
	}

	public void setHiddenability(int hiddenability) {
		this.hiddenability = hiddenability;
	}

	@Override
	public String toString() {
		return "pokemonAbility [id=" + id + ", ability1=" + ability1 + ", ability2=" + ability2 + ", hiddenability="
				+ hiddenability + "]";
	}

	
	
	
	
	
	

}
