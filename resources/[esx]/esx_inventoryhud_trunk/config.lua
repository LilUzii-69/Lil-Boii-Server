local Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["-"] = 84,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

Config = {}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = false -- If true, police will be able to search players' trunks.

Config.Locale = "en"

Config.OpenKey = Keys["L"]

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 10

Config.localWeight = {
   raw_ore = 100,
	stone = 100,
	copper_nugget = 200,
	copper_bar = 500,
	iron = 300,
	metal_scrap = 300,
	steel_bar = 300,
	gold_nugget = 500,
	gold_bar = 500,
	rough_diamond = 500,
	diamond = 500,
	alive_chicken = 300,
	slaughtered_chicken = 300,
	packaged_chicken = 300,
	gazbottle = 200,
	essence = 200,
	petrol = 200,
	petrol_raffin = 200, 
	weed = 500,
    weed_pooch = 500,    
	fish = 300,
	fish2 = 300,
	clothe = 200,
	wool = 200,
	fabric = 200,
	cannabis = 250,
	marijuana = 750,
	grass = 30,
	grass_pack = 30,
	pro_wood = 3000,
	wood = 1000,
	sand = 500,
	glass = 1000,
	catfish = 1000,
	catfishfood = 5000,
	snakefishfood = 7500,
	snakeheadfish = 1500,
	bikersuit = 3750,
	meat = 750,
	leather = 750,
	milk = 750,
	meatfood = 1500,
}

Config.VehicleLimit = {
    [0]=30000,
    [1]=30000,
    [2]=30000,
    [3]=30000,
    [4]=30000,
    [5]=30000,
    [6]=30000,
    [7]=30000,
    [8]=0,
    [9]=30000,
    [10]=30000,
    [11]=30000,
    [12]=30000,
    [13]=0,
    [14]=30000,
    [15]=30000,
    [16]=30000,
    [17]=30000,
    [18]=30000,
    [19]=30000,
    [20]=30000,
	[21]=0,
}

Config.VehiclePlate = {
    taxi = "TAXI",
    cop = "LSPD",
    ambulance = "EMS0",
    mecano = "MECA"
}
