extends Node

const axes := {
	"hand_axe": {
		"price": 4,
		"size": "small",
		"dmg": "1d6" ,
		"name":"hand_axe"
	},
	"battle_axe":{
		"price": 7,
		"size": "medium",
		"dmg": "1d8",
		"name":"battle_axe"
	},
	"great_axe":{
		"price":14,
		"size":"large",
		"dmg":"1d10",
		"name":"great_axe"
	}
}

const swords := {
    "short_sword": {
        "name":"short sword",
        "price": 6,
        "size":"small",
        "weight": 3,
        "dmg":"1d6",
    },
    "long_sword": {
        "name":"long sword",
        "price": 10,
        "size":"medium",
        "weight": 4,
        "dmg":"1d8",
    },
    "two_handed_sword": {
        "name":"two-handed sword",
        "price": 18,
        "size":"large",
        "weight": 10,
        "dmg":"1d10",
    },
}

const empty := {
    "hand": {
        "name":"hand",
        "price": 0,
        "size":"",
        "weight": 0,
        "dmg":"1d2",
    },
}


const armor:={
    "no_armor": {
        "price":0,
        "weight": 0,
        "ac":11,
		"name":"no_armor"
    },
    "leather_armor":{
        "price":20,
        "wight":15,
        "ac":13,
		"name":"leather_armor"
    },
    "chain_mail":{
        "price":60,
        "weight":40,
        "ac":15,
		"name":"chain_mail"
    },
    "plate_mail":{
        "price":300,
        "weight":50,
        "ac":17,
		"name":"plate_mail"
    },
    "shield":{
        "price":7,
        "weight":5,
        "ac": +1,
		"name":"shield"
    }
}

const placeholder_text := {
    "key": {
        "name":"",
        "price": 0,
        "size":"",
        "weight": 0,
        "dmg":"",
    },
}