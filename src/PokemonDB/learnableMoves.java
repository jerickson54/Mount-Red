package PokemonDB;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "learnableMoves")
public class learnableMoves {

	private int pokeId;
	private int moveid;
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 
	 public learnableMoves() {
			super();
			this.pokeId = 777;
			this.moveid = 777;
		}
	
	public learnableMoves(int pokeId, int moveid) {
		super();
		this.pokeId = pokeId;
		this.moveid = moveid;
	}

	@Column(name = "pokeId")
	public int getPokeId() {
		return pokeId;
	}

	public void setPokeId(int pokeId) {
		this.pokeId = pokeId;
	}
	
	@Column(name = "moveId")
	public int getMoveid() {
		return moveid;
	}

	public void setMoveid(int moveid) {
		this.moveid = moveid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 17;
		result = prime * result + moveid;
		result = prime * result + pokeId;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		
		if (obj == this) return true;
        if (!(obj instanceof learnableMoves)) {
            return false;
        }

        learnableMoves l = (learnableMoves) obj;

        return l.moveid ==(moveid) &&
                l.pokeId == pokeId;
	}
	
	
	
	
	
}
