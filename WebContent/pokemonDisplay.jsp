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
    width: 1200px !important;
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
<img src = "https://www.serebii.net/sunmoon/pokemon/${currentPoke.id}.png" id = "img"/>
</c:if>

<c:if test = "${currentPoke.id < 10}">
<img src = "https://www.serebii.net/sunmoon/pokemon/00${currentPoke.id}.png" id = "img"/>
</c:if>

<c:if test = "${currentPoke.id <100 && currentPoke.id > 9}">
<img src = "https://www.serebii.net/sunmoon/pokemon/0${currentPoke.id}.png" id = "img"/>
</c:if>


<label> Pokemon
<input type = "text" name = "pokemonName" value = "${currentPoke.identifier}" id = "pokemonName"/>
</label>


<label> Nickname
<input type = "text" name = "nickname" id = "nickname" value = "${currentPoke.identifier}"/>
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
<select class="js-example-basic-single" name = "items" id = "items">
<c:forEach items = "${allItems}" var ="i">
<option value = "${i.name}"> ${i.name}</option>
</c:forEach>
</select>
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

<label> Level
<select class="js-example-basic-single" name = "level" id = "level" style = "width:100%">
<c:forEach begin = "0" end = "100" varStatus = "i">
<c:if test = "${i.index == 100}">
<option value = "${i.index}" selected = "selected"> ${i.index}</option>
</c:if>
<c:if test = "${i.index < 100}">
<option value = "${i.index}"> ${i.index}</option>
</c:if>

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

<label> Team
<input type = "text" name = "teamName" id = "teamName"/>
</label>

<label>
Remaining EV
<input type = "text" id = "totalStats" value = "508" style = "width:48px;background-color:#000000; color:#ffffff;" readonly/>
</label>

</div>




 
<label> EV
<div id="slidecontainer">
<label> HP
  <input type="range" min="0" max="252" value="0" class="slider" id="hpEv">
  <!--  <p>Value: <span id="hpDisplay"></span></p>-->
</label>
  <input type = "text" id = "hpDisplay" name = "hpEVS" value = "0" style ="width:48px;"/>
   <label> HP:
    <input type = "text" id = "hpStat" name = "hpStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>


<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.hp/255)*700}px"> ${currentPoke.hp}</div>
  <input type = "hidden" value = "${currentPoke.hp}" id = "baseHp"/>
</div>



<div id="slidecontainer">
<label> Attack
  <input type="range" min="0" max="252" value="0" class="slider" id="attackEv">
</label>
  <input type = "text" id = "attackDisplay" name = "attackDisplay" value = "0" style ="width:48px;"/>
  <label> Attack:
    <input type = "text" id = "attackStat" name = "attackStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.attack/255)*700}px"> ${currentPoke.attack}</div>
  <input type = "hidden" value = "${currentPoke.attack}" id = "baseAttack"/>
</div>

<div id="slidecontainer">
<label> Defense
  <input type="range" min="0" max="252" value="0" class="slider" id="defenseEv">
</label>
<input type = "text" id = "defenseDisplay" name = "defenseDisplay" value = "0" style ="width:48px;"/>
 <label> Defense:
    <input type = "text" id = "defenseStat" name = "defenseStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.defense/255)*700}px"> ${currentPoke.defense}</div>
  <input type = "hidden" value = "${currentPoke.defense}" id = "baseDefense"/>
</div>

<div id="slidecontainer">
<label> Special Attack
  <input type="range" min="0" max="252" value="0" class="slider" id="specialAttackEv">
</label>
 <input type = "text" id = "specialAttackDisplay" name = "specialAttackDisplay" value = "0" style ="width:48px;"/>
  <label> Special Attack:
    <input type = "text" id = "specialAttackStat" name = "specialAttackStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.special_attack/255)*700}px"> ${currentPoke.special_attack}</div>
  <input type = "hidden" value = "${currentPoke.special_attack}" id = "baseSpecialAttack"/>
</div>


<div id="slidecontainer">
<label> Special Defense
  <input type="range" min="0" max="252" value="0" class="slider" id="specialDefenseEv">
</label>
 <input type = "text" id = "specialDefenseDisplay" name = "specialDefenseDisplay" value = "0" style ="width:48px;"/>
 <label> Special Defense:
    <input type = "text" id = "specialDefenseStat" name = "specialDefenseStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.special_defense/255)*700}px"> ${currentPoke.special_defense}</div>
  <input type = "hidden" value = "${currentPoke.special_defense}" id = "baseSpecialDefense"/>
</div>

<div id="slidecontainer">
<label> Speed
  <input type="range" min="0" max="252" value="0" class="slider" id="speedEv">
</label>
 <input type = "text" id = "speedDisplay" name = "speedDisplay" value = "0" style ="width:48px;"/>
 <label> Speed:
    <input type = "text" id = "speedStat" name = "speedStat" value = "" style ="width:48px; background-color : #000000; color:#00ff00;" readonly/>
    </label>
</div>

<div class="w3-light-grey" style = "width:750px">
  <div class="w3-aqua" style="height:25px;width:${(currentPoke.speed/255)*700}px"> ${currentPoke.speed}</div>
  <input type = "hidden" value = "${currentPoke.speed}" id = "baseSpeed"/>
</div>

</label>

<!--  this is temp
May actually want to call js function 
<form action = 'controller?action=addToTeam' method = 'post'>
 <input type = "submit" value = "Add To Team" />

</form>
-->

<button class="w3-btn w3-aqua w3-border" id = "save" style = "width:100px;">SAVE</button>


<!-- 

Hit Points:
           ( (IV + 2 * BaseStat + (EV/4) ) * Level/100 ) + 10 + Level

Attack, Defense, Speed, Sp. Attack, Sp. Defense:
           (((IV + 2 * BaseStat + (EV/4) ) * Level/100 ) + 5) * Nature Value
 -->

<script>

$(document).ready(function() {
    $('.js-example-basic-single').select2();
    //templateResult: formatPokemon
});



var totalStats = document.getElementById("totalStats");
var canChange = true;
var overFlow = 0;


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

var finalHp = document.getElementById("hpStat");
var baseHp = document.getElementById("baseHp").value;

var finalAttack = document.getElementById("attackStat");
var baseAttack = document.getElementById("baseAttack").value;

var finalDefense = document.getElementById("defenseStat");
var baseDefense = document.getElementById("baseDefense").value;

var finalSpecialAttack = document.getElementById("specialAttackStat");
var baseSpecialAttack = document.getElementById("baseSpecialAttack").value;

var finalSpecialDefense = document.getElementById("specialDefenseStat");
var baseSpecialDefense = document.getElementById("baseSpecialDefense").value;

var finalSpeed = document.getElementById("speedStat");
var baseSpeed = document.getElementById("baseSpeed").value;

var attackNatureValue = 1;
var defenseNatureValue = 1;
var specialAttackNatureValue = 1;
var specialDefenseNatureValue = 1;
var speedNatureValue = 1;


var sliderHp = document.getElementById("hpEv");
var outputHp = document.getElementById("hpDisplay");
outputHp.innerHTML = sliderHp.value;
finalHp.value = calcHpStat(baseHp,document.getElementById("hpDisplay").value,document.getElementById("hpIv").value,document.getElementById("level").value);

var sliderAttack = document.getElementById("attackEv");
var outputAttack = document.getElementById("attackDisplay");
outputAttack.innerHTML = sliderAttack.value;
finalAttack.value = calcStat(baseAttack,document.getElementById("attackDisplay").value,document.getElementById("attackIv").value,document.getElementById("level").value,attackNatureValue);

var sliderDefense = document.getElementById("defenseEv");
var outputDefense = document.getElementById("defenseDisplay");
outputDefense.innerHTML = sliderDefense.value;
finalDefense.value = calcStat(baseDefense,document.getElementById("defenseDisplay").value,document.getElementById("defenseIv").value,document.getElementById("level").value,defenseNatureValue);

var sliderSpecialAttack = document.getElementById("specialAttackEv");
var outSpecialAttack = document.getElementById("specialAttackDisplay");
outSpecialAttack.innerHTML = sliderSpecialAttack.value;
finalSpecialAttack.value = calcStat(baseSpecialAttack,document.getElementById("specialAttackDisplay").value,document.getElementById("specialAttackIv").value,document.getElementById("level").value,specialAttackNatureValue);

var sliderSpecialDefense = document.getElementById("specialDefenseEv");
var outputSpecialDefense = document.getElementById("specialDefenseDisplay");
outputSpecialDefense.innerHTML = sliderSpecialDefense.value;
finalSpecialDefense.value = calcStat(baseSpecialDefense,document.getElementById("specialDefenseDisplay").value,document.getElementById("specialDefenseIv").value,document.getElementById("level").value,specialDefenseNatureValue);

var sliderSpeed = document.getElementById("speedEv");
var outputSpeed = document.getElementById("speedDisplay");
outputSpeed.innerHTML = sliderSpeed.value;
finalSpeed.value = calcStat(baseSpeed,document.getElementById("speedDisplay").value,document.getElementById("speedIv").value,document.getElementById("level").value,speedNatureValue);


sliderHp.oninput = function() {
  outputHp.value = this.value; 
  finalHp.value = calcHpStat(baseHp,document.getElementById("hpDisplay").value,document.getElementById("hpIv").value,document.getElementById("level").value);
  totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
 
  if(!canChange)
	  sliderHp.disabled=true;
	 
  
  else{
	  sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;
  }
 

  
}

outputHp.oninput = function(){
	sliderHp.value = outputHp.value;
	finalHp.value = calcHpStat(baseHp,document.getElementById("hpDisplay").value,document.getElementById("hpIv").value,document.getElementById("level").value);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 if(!canChange)
		  sliderHp.disabled=true;
	  else{
		  sliderHp.disabled = false;
		  sliderAttack.diabled=false;
		  sliderDefense.diabled=false;
		  sliderSpecialAttack.diabled=false;
		  sliderSpecialDefense.diabled=false;
		  sliderSpeed.diabled=false;
	  }
		  
	  
}




sliderAttack.oninput = function() {
	
	  
	outputAttack.value = this.value;
	finalAttack.value = calcStat(baseAttack,document.getElementById("attackDisplay").value,document.getElementById("attackIv").value,document.getElementById("level").value,attackNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);

	  if(!canChange)
		  sliderAttack.disabled=true;
	  else{
		  sliderHp.disabled = false;
		  sliderAttack.diabled=false;
		  sliderDefense.diabled=false;
		  sliderSpecialAttack.diabled=false;
		  sliderSpecialDefense.diabled=false;
		  sliderSpeed.diabled=false;
	  }
}

outputAttack.oninput = function(){
	
	 
	 
	sliderAttack.value = outputAttack.value;
	isPositiveAttack = outputAttack.value.includes("+");
	isNegativeAttack = outputAttack.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
	finalAttack.value = calcStat(baseAttack,document.getElementById("attackDisplay").value,document.getElementById("attackIv").value,document.getElementById("level").value,attackNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 if(!canChange)
		  sliderAttack.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}



sliderDefense.oninput = function() {
	
	 
	 
	outputDefense.value = this.value;
	finalDefense.value = calcStat(baseDefense,document.getElementById("defenseDisplay").value,document.getElementById("defenseIv").value,document.getElementById("level").value,defenseNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);

	 if(!canChange)
		 sliderDefense.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}

outputDefense.oninput = function(){
	
	 
	sliderDefense.value = outputDefense.value;
	isPositiveDefense = outputDefense.value.includes("+");
	isNegativeDefense = outputDefense.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
	finalDefense.value = calcStat(baseDefense,document.getElementById("defenseDisplay").value,document.getElementById("defenseIv").value,document.getElementById("level").value,defenseNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);

	 if(!canChange)
		 sliderDefense.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}



sliderSpecialAttack.oninput = function() {
	
	 
	outSpecialAttack.value = this.value;
	finalSpecialAttack.value = calcStat(baseSpecialAttack,document.getElementById("specialAttackDisplay").value,document.getElementById("specialAttackIv").value,document.getElementById("level").value,specialAttackNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);

	 if(!canChange)
		 sliderSpecialAttack.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}

outSpecialAttack.oninput = function(){

	sliderSpecialAttack.value = outSpecialAttack.value;
	
	isPositiveSpecialAttack = outSpecialAttack.value.includes("+");
	isNegativeSpecialAttack = outSpecialAttack.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
	finalSpecialAttack.value = calcStat(baseSpecialAttack,document.getElementById("specialAttackDisplay").value,document.getElementById("specialAttackIv").value,document.getElementById("level").value,specialAttackNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 if(!canChange)
		 sliderSpecialAttack.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}



sliderSpecialDefense.oninput = function() {

	outputSpecialDefense.value = this.value;
	finalSpecialDefense.value = calcStat(baseSpecialDefense,document.getElementById("specialDefenseDisplay").value,document.getElementById("specialDefenseIv").value,document.getElementById("level").value,specialDefenseNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 
		
	 if(!canChange)
		 sliderSpecialDefense.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
	 
	 
}

outputSpecialDefense.oninput = function(){
sliderSpecialDefense.value = outputSpecialDefense.value;
	
	isPositiveSpecialDefense = outputSpecialDefense.value.includes("+");
	isNegativeSpecialDefense = outputSpecialDefense.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
	finalSpecialDefense.value = calcStat(baseSpecialDefense,document.getElementById("specialDefenseDisplay").value,document.getElementById("specialDefenseIv").value,document.getElementById("level").value,specialDefenseNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 if(!canChange)
		 sliderSpecialDefense.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}



sliderSpeed.oninput = function() {

	outputSpeed.value = this.value;
	finalSpeed.value = calcStat(baseSpeed,document.getElementById("speedDisplay").value,document.getElementById("speedIv").value,document.getElementById("level").value,speedNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 if(!canChange)
		 sliderSpeed.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}

outputSpeed.oninput = function(){
	
	 
	sliderSpeed.value = outputSpeed.value;
	
	isPositiveSpeed = outputSpeed.value.includes("+");
	isNegativeSpeed = outputSpeed.value.includes("-");
	determineNature(isPositiveAttack,isPositiveDefense,isPositiveSpecialAttack,isPositiveSpecialDefense,isPositiveSpeed,
			isNegativeAttack,isNegativeDefense,isNegativeSpecialAttack,isNegativeSpecialDefense,isNegativeSpeed);
	finalSpeed.value = calcStat(baseSpeed,document.getElementById("speedDisplay").value,document.getElementById("speedIv").value,document.getElementById("level").value,speedNatureValue);
	 totalStats.value = evTotal(totalStats,outputHp.value,outputAttack.value,outputDefense.value,outSpecialAttack.value,outputSpecialDefense.value,outputSpeed.value);
	 

	 if(!canChange)
		 sliderSpeed.disabled=true;
	  else{sliderHp.disabled = false;
	  sliderAttack.diabled=false;
	  sliderDefense.diabled=false;
	  sliderSpecialAttack.diabled=false;
	  sliderSpecialDefense.diabled=false;
	  sliderSpeed.diabled=false;}
}


document.getElementById("save").onclick = function(){
	//console.log("Yo");
	//time to decide what data i need when i actually battle
	
	//hp attk, def, spAttk, spDef, spe
	//ability
	//nickname
	//level
	//attacks
	
	var c = document.cookie.split(";");
	var allTeamNames = "";
	 
	 for(var i = 0; i < c.length; ++i)
		 allTeamNames+=c[i].substring(0,c[i].search("=")) + ";";
	
	
	//console.log(allTeamNames);
		
	//append cookie to existing team
	if(allTeamNames.includes(String(document.getElementById("teamName").value))){
		for(var i = 0; i < c.length; ++i){
			//this case only works for the first string
		//console.log(i + c[i]);
		//if(c[i].substring(0,c[i].search("=")) === document.getElementById("teamName").value){
			if(c[i].includes(document.getElementById("teamName").value)){
			
			console.log("inside");
			
			c[i] += "@" + String(document.getElementById("pokemonName").value) + "," + document.getElementById("img").src + " ," + String(document.getElementById("ability").value) + ","
			+ String($('#items').val()) + ","
			+ String(finalHp.value) + ","+String(finalAttack.value)+ ","+String(finalDefense.value) + ","+String(finalSpecialAttack.value)+","
			+String(finalSpecialDefense.value)+ ","+String(finalSpeed.value)+ ","+
			String($('#attackOne').val()) + "," + String($('#attackTwo').val()) +"," + String($('#attackThree').val()) +","  +
			String($('#attackFour').val());
			
			//console.log(c[i]);
			document.cookie = c[i];
		}
			
		
			
		
		}
		
	}
	
	//make a new cookie case
	else{

	
	var form = String(document.getElementById("teamName").value) + "=" 
	+ "@" + String(document.getElementById("pokemonName").value) + "," + document.getElementById("img").src+ " ," + String(document.getElementById("ability").value) + ","
	+ String($('#items').val()) + ","
	+ String(finalHp.value) + ","+String(finalAttack.value)+ ","+String(finalDefense.value) + ","+String(finalSpecialAttack.value)+","
	+String(finalSpecialDefense.value)+ ","+String(finalSpeed.value)+ ","+
	String($('#attackOne').val()) + "," + String($('#attackTwo').val()) +"," + String($('#attackThree').val()) +","  +
	String($('#attackFour').val()) +  ";";
	
	document.cookie = form;
	
	}
	
	//console.log(document.cookie);
	
	
	window.location.href = "teamDisplay.jsp";
	
}



var nature = document.getElementById("nature");
nature.oninput = function(){
	
	
	if(nature.value == "modest"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		specialAttackNatureValue = 1.1;
		outputAttack.value = outputAttack.value.concat("-");
		attackNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		
	}
	
	if(nature.value == "mild"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		specialAttackNatureValue = 1.1;
		outputDefense.value = outputDefense.value.concat("-");
		defenseNatureValue = .9;
		
		
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		
	}
	
	if(nature.value == "rash"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		specialAttackNatureValue = 1.1;
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
		specialDefenseNatureValue = .9;
		
		defenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		
	}
	
	if(nature.value == "quiet"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outSpecialAttack.value = outSpecialAttack.value.concat("+");
		specialAttackNatureValue = 1.1;
		outputSpeed.value = outputSpeed.value.concat("-");
		speedNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		attackNatureValue = 1;
	}
	
	if(nature.value == "lonely"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		attackNatureValue = 1.1;
		outputDefense.value = outputDefense.value.concat("-");
		defenseNatureValue = .9;
		

		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "brave"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		attackNatureValue = 1.1;
		outputSpeed.value = outputSpeed.value.concat("-");
		speedNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "adamant"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		attackNatureValue = 1.1;
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
		specialAttackNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
	}
	
	if(nature.value == "naughty"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputAttack.value = outputAttack.value.concat("+");
		attackNatureValue = 1.1;
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
		specialDefenseNatureValue = .9;
		
		defenseNatureValue = 1;
		speedNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "bold"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		defenseNatureValue = 1.1;
		outputAttack.value = outputAttack.value.concat("-");
		attackNatureValue = .9;
		

		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "relaxed"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		defenseNatureValue = 1.1;
		outputSpeed.value = outputSpeed.value.concat("-");
		speedNatureValue = .9;
		

		specialDefenseNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "impish"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		defenseNatureValue = 1.1;
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
		specialAttackNatureValue = .9;
		
		
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
	
	}
	
	if(nature.value == "lax"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputDefense.value = outputDefense.value.concat("+");
		defenseNatureValue = 1.1;
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
		specialDefenseNatureValue = .9;
		
		
		
		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "timid"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		speedNatureValue = 1.1;
		outputAttack.value = outputAttack.value.concat("-");
		attackNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "hasty"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		speedNatureValue = 1.1;
		outputDefense.value = outputDefense.value.concat("-");
		defenseNatureValue = .9;
		
		specialDefenseNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "jolly"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		speedNatureValue = 1.1;
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
		specialAttackNatureValue = .9;
		
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		attackNatureValue = 1;
	}
	
	if(nature.value == "naive"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpeed.value = outputSpeed.value.concat("+");
		speedNatureValue = 1.1;
		outputSpecialDefense.value = outputSpecialDefense.value.concat("-");
		specialDefenseNatureValue = .9;
		
		defenseNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "calm"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		specialDefenseNatureValue = 1.1;
		outputAttack.value = outputAttack.value.concat("-");
		attackNatureValue = .9;
		
		defenseNatureValue = 1;
		speedNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "gentle"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		specialDefenseNatureValue = 1.1;
		outputDefense.value = outputDefense.value.concat("-");
		defenseNatureValue = .9;
		


		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "sassy"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		specialDefenseNatureValue = 1.1;
		outputSpeed.value = outputSpeed.value.concat("-");
		speedNatureValue = .9;
		
		defenseNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
	}
	
	if(nature.value == "careful"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		outputSpecialDefense.value = outputSpecialDefense.value.concat("+");
		specialDefenseNatureValue = 1.1;
		outSpecialAttack.value = outSpecialAttack.value.concat("-");
		specialAttackNatureValue = .9;
		
		defenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		
	}
	
	if(nature.value == "hardy"){
	containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
	defenseNatureValue = 1;
	specialDefenseNatureValue = 1;
	speedNatureValue = 1;
	attackNatureValue = 1;
	specialAttackNatureValue = 1;
	}
	
	if(nature.value == "docile"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
		}
	
	if(nature.value == "serious"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
		}
	
	if(nature.value == "bashful"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
		}
	
	if(nature.value == "quirky"){
		containsPlusMinus(outputAttack,outputDefense,outSpecialAttack,outputSpecialDefense,outputSpeed);
		defenseNatureValue = 1;
		specialDefenseNatureValue = 1;
		speedNatureValue = 1;
		attackNatureValue = 1;
		specialAttackNatureValue = 1;
		}
	
	 finalHp.value = calcHpStat(baseHp,document.getElementById("hpDisplay").value,document.getElementById("hpIv").value,document.getElementById("level").value);
	finalAttack.value = calcStat(baseAttack,document.getElementById("attackDisplay").value,document.getElementById("attackIv").value,document.getElementById("level").value,attackNatureValue);
	finalDefense.value = calcStat(baseDefense,document.getElementById("defenseDisplay").value,document.getElementById("defenseIv").value,document.getElementById("level").value,defenseNatureValue);
	finalSpecialAttack.value = calcStat(baseSpecialAttack,document.getElementById("specialAttackDisplay").value,document.getElementById("specialAttackIv").value,document.getElementById("level").value,specialAttackNatureValue);
	finalSpecialDefense.value = calcStat(baseSpecialDefense,document.getElementById("specialDefenseDisplay").value,document.getElementById("specialDefenseIv").value,document.getElementById("level").value,specialDefenseNatureValue);
	finalSpeed.value = calcStat(baseSpeed,document.getElementById("speedDisplay").value,document.getElementById("speedIv").value,document.getElementById("level").value,speedNatureValue);

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

function calcStat(baseStat,ev,iv,level,nature){

	return Math.floor(((((parseInt(iv) + (2 * parseInt(baseStat)) + (parseInt(ev)/4))*parseInt(level)/100) + 5) *nature));;
}

function calcHpStat(baseStat,ev,iv,level){
	

	return Math.floor((((parseInt(iv)+(2 * parseInt(baseStat)) +(parseInt(ev)/4))*parseInt(level)/100) + 10 +parseInt(level)));
}

function evTotal(totalStats,hp,a,d,spA,spD,spe){
	var total = 508 - (parseInt(hp)+parseInt(a)+parseInt(d)+parseInt(spA)+parseInt(spD)+parseInt(spe));
	if(total < 0)
		var changeColor = document.getElementById("totalStats").style.color= "#ff0000";
		
	
	else if(total < 1){
		canChange = false;
		var changeColor = document.getElementById("totalStats").style.color= "#ffffff";
	}
	
	else{
		var changeColor = document.getElementById("totalStats").style.color= "#ffffff";
		canChange = true;
	}
	return total;

}


function changeSlider(c){
	if(c){
		var hp = document.getElementById("hpEv").disabled = true;
		var a = document.getElementById("attackEv").disabled = true;
		var d = document.getElementById("defenseEv").disabled = true;
		var spA = document.getElementById("specialAttackEv").disabled = true;
		var spD = document.getElementById("specialDefenseEv").disabled = true;
		var s = document.getElementById("speedEv").disabled = true;
	}
	else{
		var hp = document.getElementById("hpEv").disabled = false;
		var a = document.getElementById("attackEv").disabled = false;
		var d = document.getElementById("defenseEv").disabled = false;
		var spA = document.getElementById("specialAttackEv").disabled = false;
		var spD = document.getElementById("specialDefenseEv").disabled = false;
		var s = document.getElementById("speedEv").disabled = false;
	}
		
	
	
}

</script>


</body>
</html>