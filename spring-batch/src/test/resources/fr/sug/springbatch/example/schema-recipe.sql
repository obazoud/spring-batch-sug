-- Ctastenotreate tables
CREATE TABLE Recipe (
	id VARCHAR(36) NOT NULL,
	abv VARCHAR(50),
	actualEfficiency VARCHAR(50),
	age VARCHAR(50),
	ageTemp VARCHAR(50),
	asstBrewer VARCHAR(50),
	batchSize VARCHAR(50),
	boilSize VARCHAR(50),
	boilTime VARCHAR(50),
	brewer VARCHAR(50),
	calories VARCHAR(50),
	carbonation VARCHAR(50),
	carbonationTemp VARCHAR(50),
	carbonationUsed VARCHAR(50),
	date VARCHAR(50),
	displayAgeTemp VARCHAR(50),
	displayBatchSize VARCHAR(50),
	displayBoilSize VARCHAR(50),
	displayCarbTemp VARCHAR(50),
	displayFg VARCHAR(50),
	displayOg VARCHAR(50),
	displayPrimaryTemp VARCHAR(50),
	displaySecondaryTemp VARCHAR(50),
	displayTertiaryTemp VARCHAR(50),
	efficiency VARCHAR(50),
	estAbv VARCHAR(50),
	estColor VARCHAR(50),
	estFg VARCHAR(50),
	estOg VARCHAR(50),
	fermentationStages VARCHAR(50),
	fg VARCHAR(50),
	forceCarbonation VARCHAR(50),
	ibu VARCHAR(50),
	ibuMethod VARCHAR(50),
	kegPrimingFactor VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	og VARCHAR(50),
	primaryAge VARCHAR(50),
	primaryTemp VARCHAR(50),
	primingSugarEquiv VARCHAR(50),
	primingSugarName VARCHAR(50),
	secondaryAge VARCHAR(50),
	secondaryTemp VARCHAR(50),
	tasteNotes VARCHAR(250),
	tasteRating VARCHAR(50),
	tertiaryAge VARCHAR(50),
	tertiaryTmp VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE Hop (
	id VARCHAR(36) NOT NULL,
	alpha VARCHAR(50),
	amount VARCHAR(50),
	beta VARCHAR(50),
	caryophyllene VARCHAR(50),
	cohumulone VARCHAR(50),
	displayAmount VARCHAR(50),
	displayTime VARCHAR(50),
	form VARCHAR(50),
	hsi VARCHAR(50),
	humulene VARCHAR(50),
	inventory VARCHAR(50),
	myrcene VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	origin VARCHAR(50),
	recipeId VARCHAR(36) NOT NULL,
	substitutes VARCHAR(50),
	time VARCHAR(50),
	type VARCHAR(50),
	use VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id, recipeId)
);

CREATE TABLE Fermentable (
	id VARCHAR(36) NOT NULL,
	addAfterBoil VARCHAR(50),
	amount VARCHAR(50),
	coarseFineDiff VARCHAR(50),
	color VARCHAR(50),
	diastaticPower VARCHAR(50),
	displayAmount VARCHAR(50),
	displayColor VARCHAR(50),
	ibuGalPerLb VARCHAR(50),
	inventory VARCHAR(50),
	maxInBatch VARCHAR(50),
	moisture VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	origin VARCHAR(50),
	potential VARCHAR(50),
	protein VARCHAR(50),
	recipeId VARCHAR(36) NOT NULL,
	recommendMash VARCHAR(50),
	supplier VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	yield VARCHAR(50),
	PRIMARY KEY (id, recipeId)
);

CREATE TABLE Misc (
	id VARCHAR(36) NOT NULL,
	amount VARCHAR(50),
	amountIsWeight VARCHAR(50),
	batchSize VARCHAR(50),
	displayAmount VARCHAR(50),
	displayTime VARCHAR(50),
	inventory VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	recipeId VARCHAR(36) NOT NULL,
	time VARCHAR(50),
	type VARCHAR(50),
	use VARCHAR(50),
	useFor VARCHAR(50),
	version VARCHAR(50),	
	PRIMARY KEY (id, recipeId)
);

CREATE TABLE Yeast (
	id VARCHAR(36) NOT NULL,
	addToSecondary VARCHAR(50),
	amount VARCHAR(50),
	amountIsWeight VARCHAR(50),
	attenuation VARCHAR(50),
	bestFor VARCHAR(250),
	cultureDate VARCHAR(50),
	displayAmount VARCHAR(50),
	dispMaxTemp VARCHAR(50),
	dispMinTemp VARCHAR(50),
	flocculation VARCHAR(50),
	form VARCHAR(50),
	inventory VARCHAR(50),
	laboratory VARCHAR(50),
	maxReuse VARCHAR(50),
	maxTemperature VARCHAR(50),
	minTemperature VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	productId VARCHAR(50),
	recipeId VARCHAR(36) NOT NULL,
	timesCultured VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id, recipeId)
);

CREATE TABLE Style (
	id VARCHAR(36) NOT NULL,
	abvMax VARCHAR(50),
	abvMin VARCHAR(50),
	abvRange VARCHAR(50),
	carbMax VARCHAR(50),
	carbMin VARCHAR(50),
	carbRange VARCHAR(50),
	category VARCHAR(50),
	categoryNumber VARCHAR(50),
	colorMax VARCHAR(50),
	colorMin VARCHAR(50),
	colorRange VARCHAR(50),
	displayColorMax VARCHAR(50),
	displayColorMin VARCHAR(50),
	displayFgMax VARCHAR(50),
	displayFgMin VARCHAR(50),
	displayOgMax VARCHAR(50),
	displayOgMin VARCHAR(50),
	examples VARCHAR(50),
	fgMax VARCHAR(50),
	fgMin VARCHAR(50),
	fgRange VARCHAR(50),
	ibuMax VARCHAR(50),
	ibuMin VARCHAR(50),
	ibuRange VARCHAR(50),
	ingredients VARCHAR(250),
	name VARCHAR(50),
	notes VARCHAR(250),
	ogMax VARCHAR(50),
	ogMin VARCHAR(50),
	ogRange VARCHAR(50),
	profile VARCHAR(250),
	styleGuide VARCHAR(50),
	styleLetter VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE Equipment (
	id VARCHAR(36) NOT NULL,
	batchSize VARCHAR(50),
	boilSize VARCHAR(50),
	boilTime VARCHAR(50),
	calcBoilVolume VARCHAR(50),
	displayBatchSize VARCHAR(50),
	displayBoilSize VARCHAR(50),
	displayLauterDeadspace VARCHAR(50),
	displayTopUpKettle VARCHAR(50),
	displayTopUpWater VARCHAR(50),
	displayTrubChillerLoss VARCHAR(50),
	displayTunVolume VARCHAR(50),
	displayTunWeight VARCHAR(50),
	evapRate VARCHAR(50),
	hopUtilization VARCHAR(50),
	lauterDeadspace VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	topUpKettle VARCHAR(50),
	topUpWater VARCHAR(50),
	trubChillerLoss VARCHAR(50),
	tunSpecificHeat VARCHAR(50),
	tunVolume VARCHAR(50),
	tunWeight VARCHAR(50),
	version VARCHAR(50),	
	PRIMARY KEY (id)
);

CREATE TABLE Mash (
	id VARCHAR(36) NOT NULL,
	displayGrainTemp VARCHAR(50),
	displaySpargeTemp VARCHAR(50),
	displayTunTemp VARCHAR(50),
	displayTunWeight VARCHAR(50),
	equipAdjust VARCHAR(50),
	grainTemp VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	ph VARCHAR(50),
	spargeTemp VARCHAR(50),
	tunSpecificHeat VARCHAR(50),
	tunTemp VARCHAR(50),
	tunWeight VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE MashStep (
	id VARCHAR(36) NOT NULL,
	decoctionAmt VARCHAR(50),
	description VARCHAR(50),
	displayInfuseAmt VARCHAR(50),
	displayStepTemp VARCHAR(50),
	endTemp VARCHAR(50),
	infuseAmount VARCHAR(50),
	infuseTemp VARCHAR(50),
	mashId VARCHAR(36) NOT NULL,
	name VARCHAR(50),
	rampTime VARCHAR(50),
	stepTemp VARCHAR(50),
	stepTime VARCHAR(50),
	type VARCHAR(50),
	version VARCHAR(50),
	waterGrainRatio VARCHAR(50),
	PRIMARY KEY (id, mashId)
);

CREATE TABLE Water (
	id VARCHAR(36) NOT NULL,
	amount VARCHAR(50),
	bicarbonate VARCHAR(50),
	calcium VARCHAR(50),
	chloride VARCHAR(50),
	displayAmount VARCHAR(50),
	magnesium VARCHAR(50),
	name VARCHAR(50),
	notes VARCHAR(250),
	ph VARCHAR(50),
	recipeId VARCHAR(36) NOT NULL,
	sodium VARCHAR(50),
	sulfate VARCHAR(50),
	version VARCHAR(50),
	PRIMARY KEY (id, recipeId)
);

