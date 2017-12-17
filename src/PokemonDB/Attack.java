package PokemonDB;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Attack")
public class Attack {
	
	private int id;
	private String identifier;
	private int generation_id;
	private int type_id;
	private int power;
	private int pp;
	private int accuracy;
	private int priority;
	private int target_id;
	private int damage_class_id;
	private int effect_id;
	private int effect_chance;
	private int contest_type;
	private int contest_effect;
	private int super_contest_effect_id;
	
	
	
	public Attack(){
		this.id = 1;
		this.identifier = "stupid default wWHYYY";
		this.generation_id = 1;
		this.type_id = 1;
		this.power = 1;
		this.pp = 1;
		this.accuracy = 1;
		this.priority = 1;
		this.target_id = 1;
		this.damage_class_id = 1;
		this.effect_id = 1;
		this.effect_chance = 1;
		this.contest_type = 1;
		this.contest_effect = 1;
		this.super_contest_effect_id = 1;
	}

	public Attack(int id, String identifier, int generation_id, int type_id, int power, int pp, int accuracy,
			int priority, int target_id, int damage_class_id, int effect_id, int effect_chance, int contest_type,
			int contest_effect, int super_contest_effect_id) {
		super();
		this.id = id;
		this.identifier = identifier;
		this.generation_id = generation_id;
		this.type_id = type_id;
		this.power = power;
		this.pp = pp;
		this.accuracy = accuracy;
		this.priority = priority;
		this.target_id = target_id;
		this.damage_class_id = damage_class_id;
		this.effect_id = effect_id;
		this.effect_chance = effect_chance;
		this.contest_type = contest_type;
		this.contest_effect = contest_effect;
		this.super_contest_effect_id = super_contest_effect_id;
	}


	@Id
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	@Column(name="identifier")
	public String getIdentifier() {
		return identifier;
	}


	public void setIdentifier(String identifier) {
		this.identifier = identifier;
	}

	@Column(name="generation_id")
	public int getGeneration_id() {
		return generation_id;
	}


	public void setGeneration_id(int generation_id) {
		this.generation_id = generation_id;
	}

	@Column(name="type_id")
	public int getType_id() {
		return type_id;
	}


	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	@Column(name="power")
	public int getPower() {
		return power;
	}


	public void setPower(int power) {
		this.power = power;
	}

	@Column(name="pp")
	public int getPp() {
		return pp;
	}


	public void setPp(int pp) {
		this.pp = pp;
	}

	@Column(name="accuracy")
	public int getAccuracy() {
		return accuracy;
	}


	public void setAccuracy(int accuracy) {
		this.accuracy = accuracy;
	}

	@Column(name="priority")
	public int getPriority() {
		return priority;
	}


	public void setPriority(int priority) {
		this.priority = priority;
	}

	@Column(name="target_id")
	public int getTarget_id() {
		return target_id;
	}


	public void setTarget_id(int target_id) {
		this.target_id = target_id;
	}

	@Column(name="damage_class")
	public int getDamage_class_id() {
		return damage_class_id;
	}


	public void setDamage_class_id(int damage_class_id) {
		this.damage_class_id = damage_class_id;
	}

	@Column(name="effect_id")
	public int getEffect_id() {
		return effect_id;
	}


	public void setEffect_id(int effect_id) {
		this.effect_id = effect_id;
	}

	@Column(name="effect_chance")
	public int getEffect_chance() {
		return effect_chance;
	}


	public void setEffect_chance(int effect_chance) {
		this.effect_chance = effect_chance;
	}

	@Column(name="contest_type")
	public int getContest_type() {
		return contest_type;
	}


	public void setContest_type(int contest_type) {
		this.contest_type = contest_type;
	}

	@Column(name = "contest_effect")
	public int getContest_effect() {
		return contest_effect;
	}


	public void setContest_effect(int contest_effect) {
		this.contest_effect = contest_effect;
	}

	@Column(name = "contest_effect_id")
	public int getSuper_contest_effect_id() {
		return super_contest_effect_id;
	}


	public void setSuper_contest_effect_id(int super_contest_effect_id) {
		this.super_contest_effect_id = super_contest_effect_id;
	}

	@Override
	public String toString() {
		return "Attack [id=" + id + ", identifier=" + identifier + ", generation_id=" + generation_id + ", type_id="
				+ type_id + ", power=" + power + ", pp=" + pp + ", accuracy=" + accuracy + ", priority=" + priority
				+ ", target_id=" + target_id + ", damage_class_id=" + damage_class_id + ", effect_id=" + effect_id
				+ ", effect_chance=" + effect_chance + ", contest_type=" + contest_type + ", contest_effect="
				+ contest_effect + ", super_contest_effect_id=" + super_contest_effect_id + "]";
	}
	
	
	
	
	
	
	
	
	
	

}
