package PokemonDB;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "item")
public class item {
	
	private int id;
	private String name;
	private int itemType;
	
	
	public item(){
		id = 999;
		name = "Pokeman";
		itemType = 999;
	}
	
	public item(int id, String name, int itemType) {
		super();
		this.id = id;
		this.name = name;
		this.itemType = itemType;
	}

	@Id
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "itemType")
	public int getItemType() {
		return itemType;
	}

	public void setItemType(int itemType) {
		this.itemType = itemType;
	}
	
	

	
	
	
	
	
	

}
