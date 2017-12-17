<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Team Builder!</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

</head>
<jsp:include page="/header.jsp" />

<style>

#slidecontainer {
    width: 850px !important;
}

.slider {
    -webkit-appearance: none;
    width: 750px !important;
    height: 25px;
    background: #000000;
    outline: none;
    opacity: 1;
    -webkit-transition: .2s;
    transition: opacity .2s;
}

.slider:hover {
    opacity: 0.8;
}

.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    background: #00ff00;
    cursor: pointer;
}

.slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    background: #00ff00;
    cursor: pointer;
}

</style>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

<div class = "container-fluid">

<c:if test = "${currentPoke.id >99}">
<img src = "https://www.serebii.net/sunmoon/pokemon/${currentPoke.id}.png"/>
</c:if>

<c:if test = "${currentPoke.id < 10}">
<img src = "https://www.serebii.net/sunmoon/pokemon/00${currentPoke.id}.png"/>
</c:if>

<c:if test = "${currentPoke.id <100 && currentPoke.id > 9}">
<img src = "https://www.serebii.net/sunmoon/pokemon/0${currentPoke.id}.png"/>
</c:if>


<label> Pokemon
<input type = "text" name = "pokemonName" value = "${currentPoke.identifier}"/>
</label>


<label> Nickname
<input type = "text" name = "nickname" />
</label>

<label> Abilities
<select id = "ability" name = ability>
<option> ${currentPoke.ability1}</option>
<c:if test = "${currentPoke.ability2 != 'null'}">
<option> ${currentPoke.ability2}</option>
</c:if>
<c:if test = "${currentPoke.hidden_ability != 'null'}">
<option> ${currentPoke.hidden_ability}</option>
</c:if>

</select>
</label>

<label> Item
<input type = "text" name = "item"/>
</label>


<label> Moves

<select class="js-example-basic-single" name = "attackOne" id = "attackOne">
	<c:forEach items="${currentAttacks}" var="a">
	<option value = "${a.identifier}"> ${a.identifier}</option>
	</c:forEach>
</select>

<select class="js-example-basic-single" name = "attackTwo" id = "attackTwo">
	<c:forEach items="${currentAttacks}" var="a">
	<option value = "${a.identifier}"> ${a.identifier}</option>
	</c:forEach>
</select>

<select class="js-example-basic-single" name = "attackThree" id = "attackThree">
	<c:forEach items="${currentAttacks}" var="a">
	<option value = "${a.identifier}"> ${a.identifier}</option>
	</c:forEach>
</select>

<select class="js-example-basic-single" name = "attackFour" id = "attackFour">
	<c:forEach items="${currentAttacks}" var="a">
	<option value = "${a.identifier}"> ${a.identifier}</option>
	</c:forEach>
</select>

</label>

<label> IVs:
<label>HP
<input type = "text" name = "hpIv" value = "31" style="width:30px;" id = "hpIv"/>
</label>
<label>Attack
<input type = "text" name = "attackIv" value = "31" style="width:30px;" id = "attackIv"/>
</label>
<label>Defense
<input type = "text" name = "defenseIv" value = "31" style="width:30px;" id = "defenseIv"/>
</label>
<label>Sp Attack
<input type = "text" name = "specialAttackIv" value = "31" style="width:30px;" id = "specialAttackIv"/>
</label>
<label>Sp Defense
<input type = "text" name = "specialDefenseIv" value = "31" style="width:30px;" id = "specialDefenseIv"/>
</label>
<label>Speed
<input type = "text" name = "speedIv" value = "31" style="width:30px;" id = "speedIv"/>
</label>
</label>


</div>

<label> EV
<div id="slidecontainer">
<label> HP
  <input type="range" min="0" max="252" value="0" class="slider" id="hpEv">
  <!--  <p>Value: <span id="hpDisplay"></span></p>-->
</label>
  <input type = "text" id = "hpDisplay" name = "hpEVS" value = "0" style ="width:48px;"/>
</div>


<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.hp/255)*700}px"> ${currentPoke.hp}</div>
</div>


<div id="slidecontainer">
<label> Attack
  <input type="range" min="0" max="252" value="0" class="slider" id="attackEv">
</label>
  <input type = "text" id = "attackDisplay" name = "attackDisplay" value = "0" style ="width:48px;"/>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.attack/255)*700}px"> ${currentPoke.attack}</div>
</div>

<div id="slidecontainer">
<label> Defense
  <input type="range" min="0" max="252" value="0" class="slider" id="defenseEv">
</label>
<input type = "text" id = "defenseDisplay" name = "defenseDisplay" value = "0" style ="width:48px;"/>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.defense/255)*700}px"> ${currentPoke.defense}</div>
</div>

<div id="slidecontainer">
<label> Special Attack
  <input type="range" min="0" max="252" value="0" class="slider" id="specialAttackEv">
</label>
 <input type = "text" id = "specialAttackDisplay" name = "specialAttackDisplay" value = "0" style ="width:48px;"/>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.special_attack/255)*700}px"> ${currentPoke.special_attack}</div>
</div>


<div id="slidecontainer">
<label> Special Defense
  <input type="range" min="0" max="252" value="0" class="slider" id="specialDefenseEv">
</label>
 <input type = "text" id = "specialDefenseDisplay" name = "specialDefenseDisplay" value = "0" style ="width:48px;"/>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.special_defense/255)*700}px"> ${currentPoke.special_defense}</div>
</div>

<div id="slidecontainer">
<label> Speed
  <input type="range" min="0" max="252" value="0" class="slider" id="speedEv">
</label>
 <input type = "text" id = "speedDisplay" name = "speedDisplay" value = "0" style ="width:48px;"/>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.speed/255)*700}px"> ${currentPoke.speed}</div>
</div>

</label>

<label> Nature

<select id = "nature" name = "nature">

<option value = "adamant"> Adamant </option>
<option value = "hardy"> Hardy </option>
<option value = "lonely"> Lonely </option>
<option value = "brave"> Brave </option>
<option value = "naughty"> Naughty </option>
<option value = "bold"> Bold </option>
<option value = "docile"> Relaxed </option>
<option value = "impish"> Impish </option>
<option value = "lax"> Lax </option>
<option value = "timid"> Timid </option>
<option value = "hasty"> Hasty </option>
<option value = "serious"> Serious </option>
<option value = "jolly"> Jolly </option>
<option value = "naive"> Naive </option>
<option value = "modest"> Modest </option>
<option value = "mild"> Mild </option>
<option value = "quiet"> Quiet </option>
<option value = "bashful"> Bashful </option>
<option value = "rash"> Rash </option>
<option value = "calm"> Calm </option>
<option value = "gentle"> Gentle </option>
<option value = "sassy"> Sassy </option>
<option value = "careful"> Careful </option>
<option value = "quirky"> Quirky </option>
<option value = "relaxed"> Relaxed </option>

</select>

</label>

<script>

$(document).ready(function() {
    $('.js-example-basic-single').select2();
    //templateResult: formatPokemon
});


var isPositiveAttack = false;
var isPositiveDefense = false;
var isPositiveSpecialAttack = false;
var isPositiveSpecialDefense = false;
var isPositiveSpeed = false;

var isNegativeAttack = false;
var isNegativeDefense = false;
var isNegativeSpecialAttack = false;
var isNegativeSpecialDefense = false;
var isNegativeSpeed = false;


var sliderHp = document.getElementById("hpEv");
var outputHp = document.getElementById("hpDisplay");
outputHp.innerHTML = sliderHp.value;

sliderHp.oninput = function() {
  outputHp.value = this.value;
}

outputHp.oninput = function(){
	sliderHp.value = outputHp.value;
}


var sliderAttack = document.getElementById("attackEv");
var outputAttack = document.getElementById("attackDisplay");
outputAttack.innerHTML = sliderAttack.value;

sliderAttack.oninput = function() {
	outputAttack.value = this.value;
}

outputAttack.oninput = function(){
	sliderAttack.value = outputAttack.value;
	isPositiveAttack = outputAttack.value.includes("+");
	isNegativeAttack = outputAttack.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
}


var sliderDefense = document.getElementById("defenseEv");
var outputDefense = document.getElementById("defenseDisplay");
outputDefense.innerHTML = sliderDefense.value;

sliderDefense.oninput = function() {
	outputDefense.value = this.value;
}

outputDefense.oninput = function(){
	sliderDefense.value = outputDefense.value;
	isPositiveDefense = outputDefense.value.includes("+");
	isNegativeDefense = outputDefense.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
}

var sliderSpecialAttack = document.getElementById("specialAttackEv");
var outSpecialAttack = document.getElementById("specialAttackDisplay");
outSpecialAttack.innerHTML = sliderSpecialAttack.value;

sliderSpecialAttack.oninput = function() {
	outSpecialAttack.value = this.value;
}

outSpecialAttack.oninput = function(){
	sliderSpecialAttack.value = outSpecialAttack.value;
	
	isPositiveSpecialAttack = outSpecialAttack.value.includes("+");
	isNegativeSpecialAttack = outSpecialAttack.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
}

var sliderSpecialDefense = document.getElementById("specialDefenseEv");
var outputSpecialDefense = document.getElementById("specialDefenseDisplay");
outputSpecialDefense.innerHTML = sliderSpecialDefense.value;

sliderSpecialDefense.oninput = function() {
	outputSpecialDefense.value = this.value;
}

outputSpecialDefense.oninput = function(){
	sliderSpecialDefense.value = outputSpecialDefense.value;
	
	isPositiveSpecialDefense = outputSpecialDefense.value.includes("+");
	isNegativeSpecialDefense = outputSpecialDefense.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
}

var sliderSpeed = document.getElementById("speedEv");
var outputSpeed = document.getElementById("speedDisplay");
outputSpeed.innerHTML = sliderSpeed.value;

sliderSpeed.oninput = function() {
	outputSpeed.value = this.value;
}

outputSpeed.oninput = function(){
	sliderSpeed.value = outputSpeed.value;
	
	isPositiveSpeed = outputSpeed.value.includes("+");
	isNegativeSpeed = outputSpeed.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
}

var nature = document.getElementById("nature");
nature.oninput = function(){
	
	if(nature.value == "modest"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		outputAttack.value = outputAttack.value.concat("-");
	}
	
	if(nature.value == "mild"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		outputDefense.value = outputDefense.value.concat("-");
	}
	
	if(nature.value == "rash"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
	}
	
	if(nature.value == "quiet"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		outputSpeed.value = outputSpeed.value.concat("-");
	}
	
	if(nature.value == "lonely"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		outputDefense.value = outputDefense.value.concat("-");
	}
	
	if(nature.value == "brave"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		outputSpeed.value = outputSpeed.value.concat("-");
	}
	
	if(nature.value == "adamant"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
	}
	
	if(nature.value == "naughty"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
	}
	
	if(nature.value == "bold"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		outputAttack.value = outputAttack.value.concat("-");
	}
	
	if(nature.value == "relaxed"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		outputSpeed.value = outputSpeed.value.concat("-");
	}
	
	if(nature.value == "impish"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
	}
	
	if(nature.value == "lax"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
	}
	
	if(nature.value == "timid"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		outputAttack.value = outputAttack.value.concat("-");
	}
	
	if(nature.value == "hasty"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		outputDefense.value = outputDefense.value.concat("-");
	}
	
	if(nature.value == "jolly"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
	}
	
	if(nature.value == "naive"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
	}
	
	if(nature.value == "calm"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		outputAttack.value = outputAttack.value.concat("-");
	}
	
	if(nature.value == "gentle"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		outputDefense.value = outputDefense.value.concat("-");
	}
	
	if(nature.value == "sassy"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		outputSpeed.value = outputSpeed.value.concat("-");
	}
	
	if(nature.value == "careful"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
	}
}

function containsPlusMinus(a,d,spA,spD,spe){
	spD.value = spD.value.replace("+","");
	spD.value = spD.value.replace("-","");
	
	spA.value = spA.value.replace("+","");
	spA.value = spA.value.replace("-","");
	
	spe.value = spe.value.replace("+","");
	spe.value = spe.value.replace("-","");
	
	d.value = d.value.replace("+","");
	d.value = d.value.replace("-","");
	
	a.value = a.value.replace("+","");
	a.value = a.value.replace("-","");
}
function determineNature(a,d,spA,spD,spe,na,nd,nspA,nspD,nspe){
var natureBox = document.getElementById("nature");
//attack
if(a && nd)
	natureBox.value = "lonely";
if(a && nspe)
	natureBox.value = "brave";
if(a && nspA)
	natureBox.value = "adamant";
if(a && nspD)
	natureBox.value = "naughty";

//defense
if(d && na)
	natureBox.value = "bold";
if(d && nspe)
	natureBox.value = "relaxed";
if(d && nspA)
	natureBox.value = "impish";
if(d && nspD)
	natureBox.value = "lax";
	
//special attack
if(spA && na)
	natureBox.value = "modest";
if(spA && nd)
	natureBox.value = "mild";
if(spA && nspe)
	natureBox.value = "quiet";
if(spA && nspD)
	natureBox.value = "rash";
	
//special defense
if(spD && na)
	natureBox.value = "calm";
if(spD && nd)
	natureBox.value = "gentle";
if(spD && nspe)
	natureBox.value = "sassy";
if(spD && nspA)
	natureBox.value = "careful";
	
//speed
if(spe && na)
	natureBox.value = "timid";
if(spe && nd)
	natureBox.value = "hasty";
if(spe && nspA)
	natureBox.value = "jolly";
if(spe && nspD)
	natureBox.value = "naive";
	
}



</script>


</body>
</html>