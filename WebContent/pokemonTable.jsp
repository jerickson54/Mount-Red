<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<title>Team Builder!</title>
</head>

<jsp:include page="/header.jsp" />

<body>

<!--  
<input type = "text" name = "specialAttackIv" placeholder = "Search" style="width:700px;" id ="pokemonSearch"/>
-->

<select class="js-example-basic-single" name = "pokemon" style = "width:100%" id = "pokemon">
	<c:forEach items="${allPokemon}" var="pokes">
	
	<option value = "${pokes.id}"> ${pokes.identifier}</option>
	</c:forEach>
</select>



<table id = "infoTable" class = "table table-striped"> 
	<thead>
		<tr>
			
			<th> Number</th>
			<th> Name </th>
			<th> Picture </th>
			<th> Type </th>
			<th> HP </th>
			<th> Attack</th>
			<th> Defense</th>
			<th> Special Attack</th>
			<th> Special Defense</th>
			<th> Speed</th>
		</tr>
		
		</thead>
		
		<tbody>
		<c:forEach items="${allPokemon}" var="pokemon">
		<tr>
			<td>${pokemon.id}</td>
			<td>
			
			<a href = "controller?action=pokemonDisplay&id=${pokemon.id}">${pokemon.identifier}</a>
			
			</td>
			
			<td> 
			
			<c:if test = "${pokemon.id < 10}">
			<img src = "https://www.serebii.net/pokedex-sm/icon/00${pokemon.id}.png"/> 
			</c:if>
			<c:if test = "${pokemon.id < 100 && pokemon.id > 9}">
			<img src = "https://www.serebii.net/pokedex-sm/icon/0${pokemon.id}.png"/> 
			</c:if>
			<c:if test = "${pokemon.id > 99}">
			<img src = "https://www.serebii.net/pokedex-sm/icon/${pokemon.id}.png"/> 
			</c:if>
			
			</td>
			<td>
			
			<c:if test = "${pokemon.type1 == 'Fairy'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fairy.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Fairy'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fairy.gif"/>
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Grass'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/grass.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Grass'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/grass.gif"/>
			</c:if>
			
			
			<c:if test = "${pokemon.type1 == 'Poison'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/poison.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Poison'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/poison.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Bug'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/bug.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Bug'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/bug.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Dark'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/dark.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Dark'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/dark.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Dragon'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/dragon.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Dragon'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/dragon.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Electric'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/electric.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Electric'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/electric.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Fighting'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fighting.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Fighting'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fighting.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Fire'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fire.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Fire'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/fire.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Flying'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/flying.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Flying'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/flying.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Ghost'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ghost.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Ghost'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ghost.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Ground'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ground.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Ground'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ground.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Ice'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ice.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Ice'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/ice.gif"/>			
			</c:if>
			
			<c:if test = "${pokemon.type1 == 'Normal'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/normal.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Normal'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/normal.gif"/>			
			</c:if>
			
				<c:if test = "${pokemon.type1 == 'Psychic'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/psychic.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Psychic'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/psychic.gif"/>			
			</c:if>
			
				<c:if test = "${pokemon.type1 == 'Rock'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/rock.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Rock'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/rock.gif"/>			
			</c:if>
			
				<c:if test = "${pokemon.type1 == 'Steel'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/steel.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Steel'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/steel.gif"/>			
			</c:if>
			
				<c:if test = "${pokemon.type1 == 'Water'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/water.gif"/>
			</c:if>
			<c:if test = "${pokemon.type2 == 'Water'}">
			<img src = "https://www.serebii.net/pokedex-bw/type/water.gif"/>			
			</c:if>
			
			
			
			
			
			</td>
			<td>${pokemon.hp}</td>
			<td>${pokemon.attack}</td>
			<td>${pokemon.defense}</td>
			<td>${pokemon.special_attack}</td>
			<td>${pokemon.special_defense}</td>
			<td>${pokemon.speed}</td>
			
		</tr>
		
		</c:forEach>
		</tbody>
		
</table>

<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
    //templateResult: formatPokemon
});

$('#pokemon').on("select2:select", function(e) { 
	   // what you would like to happen
	   //console.log("Happen Please");
	   var id = $(this).select2('data')[0].id;
	   console.log(id);
	   
	   window.location.href = "controller?action=pokemonDisplay&id="+id;
	   
	});

//doesnt quite work
function formatPokemon (pokemon) {
	  if (!pokemon.id) {
		  console.log("Fail");
	    return pokemon.text;
	  }
	  var baseUrl = "https://www.serebii.net/pokedex-sm/icon/";
	  console.log(pokemon.element.value);
	  var $pokemon = $(
	    '<span><img src="' + baseUrl + "001" + '.png" class="img-flag" /> ' + pokemon.text + '</span>'
	  );
	  return $pokemon;
	};

	

</script>

		

</body>
</html>