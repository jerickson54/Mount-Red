package PokemonDB;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Pokemon")
public class Pokemon {
	
	private int id;
	private String identifier;
	private int species_id;
	private int height;
	private int weight;
	private int hp;
	private int attack;
	private int defense;
	private int special_attack;
	private int special_defense;
	private int speed;
	private String type1;
	private String type2;
	private String ability1;
	private String ability2;
	private String hidden_ability;
	
	
	
	//stupid default contructor
	public Pokemon(){
		
		this.id = 1;
		this.identifier = "stupid";
		this.species_id = 4;
		this.height = 10;
		this.weight = 10;
		this.hp = 11;
		this.attack = 11;
		this.defense = 11;
		this.special_attack = 1;
		this.special_defense = 1;
		this.speed = 11;
		this.ability1 = "Dumb";
		this.ability2 = "why";
		this.hidden_ability = "help me";
		this.type1= "nerd";
		this.type2= "you say too much";
	}

	


	




	public Pokemon(int id, String identifier, int species_id, int height, int weight, int hp, int attack, int defense,
			int special_attack, int special_defense, int speed, String type1, String type2, String ability1,
			String ability2, String hidden_ability) {
		super();
		this.id = id;
		this.identifier = identifier;
		this.species_id = species_id;
		this.height = height;
		this.weight = weight;
		this.hp = hp;
		this.attack = attack;
		this.defense = defense;
		this.special_attack = special_attack;
		this.special_defense = special_defense;
		this.speed = speed;
		this.type1 = type1;
		this.type2 = type2;
		this.ability1 = ability1;
		this.ability2 = ability2;
		this.hidden_ability = hidden_ability;

	}









	@Id
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "identifier")
	public String getIdentifier() {
		return identifier;
	}


	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	@Column(name = "species_id")
	public int getSpecies_id() {
		return species_id;
	}


	public void setSpecies_id(int species_id) {
		this.species_id = species_id;
	}

	@Column(name = "height")
	public int getHeight() {
		return height;
	}


	public void setHeight(int height) {
		this.height = height;
	}

	@Column(name = "weight")
	public int getWeight() {
		return weight;
	}


	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Column(name = "hp")
	public int getHp() {
		return hp;
	}


	public void setHp(int hp) {
		this.hp = hp;
	}

	@Column(name = "attack")
	public int getAttack() {
		return attack;
	}


	public void setAttack(int attack) {
		this.attack = attack;
	}

	@Column(name = "defense")
	public int getDefense() {
		return defense;
	}


	public void setDefense(int defense) {
		this.defense = defense;
	}

	@Column(name = "special_attack")
	public int getSpecial_attack() {
		return special_attack;
	}


	public void setSpecial_attack(int special_attack) {
		this.special_attack = special_attack;
	}

	@Column(name = "special_defense")
	public int getSpecial_defense() {
		return special_defense;
	}


	public void setSpecial_defense(int special_defense) {
		this.special_defense = special_defense;
	}

	@Column(name = "speed")
	public int getSpeed() {
		return speed;
	}


	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	

	@Column(name="type1")
	public String getType1() {
		return type1;
	}




	public void setType1(String type1) {
		this.type1 = type1;
	}



	@Column(name = "type2")
	public String getType2() {
		return type2;
	}




	public void setType2(String type2) {
		this.type2 = type2;
	}




	@Column(name = "ability1")
	public String getAbility1() {
		return ability1;
	}


	public void setAbility1(String ability1) {
		this.ability1 = ability1;
	}

	@Column(name = "ability2")
	public String getAbility2() {
		return ability2;
	}


	public void setAbility2(String ability2) {
		this.ability2 = ability2;
	}


	@Column(name = "hidden_ability")
	public String getHidden_ability() {
		return hidden_ability;
	}


	public void setHidden_ability(String hidden_ability) {
		this.hidden_ability = hidden_ability;
	}

	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", identifier=" + identifier + ", species_id=" + species_id + ", height=" + height
				+ ", weight=" + weight + ", hp=" + hp + ", attack=" + attack + ", defense=" + defense
				+ ", special_attack=" + special_attack + ", special_defense=" + special_defense + ", speed=" + speed
				+ ", type1=" + type1 + ", type2=" + type2 + ", ability1=" + ability1 + ", ability2=" + ability2
				+ ", hidden_ability=" + hidden_ability;
	}

	
	

}
