Config = {}
Config.loseitems = false -- lose items on failed minigame 
Config.itemdescription = false -- enable/disable item descriptions 
Config.minigame = true -- enable/disable minigame
Config.interactiondist = 2.0 -- distance to interact with location
Config.favoicon = "favobox" -- image name in your inventory section for favorite recipies section

Config.imagesize = 55 -- 55x55 px

Config.removepropcommand = "dcampfire"
-- items that place a prop when used 
Config.campfireitems = {
    ["campfire"] = {prop = "p_campfire02x", townlock = false}, -- item db name = {prop name ,  item usage in towns}
} 

-- list of towns that are banned from using items that place props, if you dont want this just leave it empty
Config.bannedtowns = {}--{'Annesburg', 'Armadillo', 'Blackwater', 'BeechersHope', 'Breaithwaite', 'Butcher', 'Caliga', 'Cornwall', 'Emerald', 'Lagras', 'Manzanita', 'Rhodes', 'Siska', 'StDenis', 'Strawberry', 'Tumbleweed', 'Valentine', 'Vanhorn', 'Wallace', 'Wapiti', 'AguasducesFarm', 'AguasdulcesRuins', 'AguasdulcesVilla', 'Manico'}


Config.openmenuitems = { -- items that open the crafting menu right away when used, these items wont show location locked recpies 
    --"itemname", -- this is an example, leave the table empty if you dont want to use 
}

-- this is where you add new catagories, you can add as many as you want and they will automatically be added to db, picture section is the name of the picture in the html folder of your inventory images, key is the key name of the catagory 
-- you can lock catagories to jobs by adding a job = {"job1","job2"}, if you dont add this the catagory will be visible to everyone. 
-- example:     {key = "medical",label = "Medical", description = "Craft Medical Supplies", picture = "bandages", job = {"police","doctor"}},

Config.catagories = {
    {key = "medical",label = "Medical", description = "Craft Medical Supplies", picture = "bandage"},
    {key = "blacksmith",label ="Blacksmith", description = "Craft Blacksmith items", picture = "weapon_melee_hammer"},
    {key = "basic",label ="Basic", description = "Craft Basic Supplies", picture = "cigar"},
    {key = "survival",label ="Survival", description = "Craft Survival Supplies", picture = "campfire"},
    {key = "brewing",label ="Brewing", description = "Brew Beavarage", picture = "whisky"},
    {key = "food",label ="Food", description = "Cook Food", picture = "bread"},
    {key = "furni",label ="Furniture", description = "Build Furniture", picture = "wood_chair"},

}
Config.bannedwords = { -- words not allowed to be used in descriptions 
 "example",
}
 -- list of all crafting locations (in the location list of each recipie you can add a table and insert the key of the location u want the recipie to be exclusive to )
-- example of recipie with location lock 
-- {
--    ['Text'] = "Boiled Egg",
--    ['Desc'] = "",
--    ['Param'] = {
--        ['Item'] = {
--            { name = "eggs",label = "Egg", count = 6},
--            { name = "water",label = "Water", count = 1},
--        },
--        ['Reward'] ={
--            { name = "boiledegg", count = 6},
--        },
--        ['Job'] = 0, -- keep 0 to allow crafting for any job 
--        ['prop'] = 0,  -- keep 0 to allow crafting from any prop
--        ['location'] = {"location1","location2"}, -- keep 0 to allow crafting from any marked location
--        ['catagory'] = "food",
--        ['expreq'] = 0,
--        ['expadd'] = 1,
--        ['diff'] = 2000,
--    }
--},
-- this recipie will only show up at location 1 and location 2 
-- you can do the same thing for props prop = {"p_campfire02x"} will mean the recipie will only show up at a crafting menu opened by interacting with the p_campfire02x prop 
Config.locations = {
    ["location1"] = {x = -1136.9,y = 270.47,z =42.9},

}

Config.craftingprops = {
    "p_campfire02x",
}


-- always add new items in the end not in the middle ! otherwise you will mess up your players favorites ! 
Config.crafting = {
    {
        ['Text'] = "Boiled Egg",
        ['Desc'] = "Eggs that were boiled in water.",
        ['Param'] = {
            ['Item'] = {
                { name = "eggs",label = "Egg", count = 6},
                { name = "water",label = "Water", count = 1},
            },
            ['Reward'] ={
                { name = "boiledegg", count = 6},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "food",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },




    -------- Medical ----------
    {
        ['Text'] = "Bandages x5",
        ['Desc'] = "Something to heal you.",
        ['Param'] = {
            ['Item'] = {
                { name = "wool",label = "Wool", count = 2},
                { name = "isopropyl",label = "Isopropyl Alcohol", count = 1},
            },
            ['Reward'] ={
                { name = "bandage", count = 5},-- you can add multipule reward items
            },
            ['Job'] = "doctor",
            ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "medical",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },

    {
        ['Text'] = "Anti Snake Poison",
        ['Desc'] = "Helps with snake bites.",
        ['Param'] = {
            ['Item'] = {
                { name = "Snake_Poison",label = "Snake Poison", count = 1},
                { name = "isopropyl",label = "Isopropyl Alcohol", count = 1},
            },
            ['Reward'] ={
                { name = "antipoison2", count = 3},-- you can add multipule reward items
            },
            ['Job'] = "doctor",
            ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "medical",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },

    {
        ['Text'] = "Antibiotics",
        ['Desc'] = "Helps with colds.",
        ['Param'] = {
            ['Item'] = {
                { name = "salt",label = "Salt", count = 1},
                { name = "yeast",label = "Yeast", count = 1},
                { name = "nitrite",label = "Nitirte", count = 1},
            },
            ['Reward'] ={
                { name = "antibiotics", count = 3},-- you can add multipule reward items
            },
            ['Job'] = "doctor",
            ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "medical",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },

    {
        ['Text'] = "Activated Charcoal",
        ['Desc'] = "Helps cure pigs desease.",
        ['Param'] = {
            ['Item'] = {
                { name = "alcohol",label = "Alcohol", count = 1},
                { name = "coal",label = "Coal", count = 1},
            },
            ['Reward'] ={
                { name = "consumable_charcoala", count = 20},-- you can add multipule reward items
            },
            ['Job'] = "doctor",
            ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "medical",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
--------- Shaman


--------- Blacksmith

    {
        ['Text'] = "3x Iron Bars",
        ['Desc'] = "Bars of Iron.",
        ['Param'] = {
            ['Item'] = {
                { name = "iron",label = "Iron", count = 5},
            },
            ['Reward'] ={
                { name = "ironbar", count = 3},-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },

    {
        ['Text'] = "Wedding Ring",
        ['Desc'] = "Something to signify that you are married",
        ['Param'] = {
            ['Item'] = {
                { name = "goldbar",label = "Gold Bar", count = 1},
                 { name = "diamond",label = "Diamond", count = 1},
            },
            ['Reward'] ={
                { name = "Wedding Ring", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
     {
    ['Text'] = "5x Lockpicks",
        ['Desc'] = "Use this to open things that are locked",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 1 },

            },
            ['Reward'] ={
                { name = "lockpick", count = 5 },-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Handcuffs",
        ['Desc'] = "also known as shackels",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 2},
                { name = "copper",label = "copperore", count = 1},
            },
            ['Reward'] ={
                { name = "handcuff", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "2x Animal Traps",
        ['Desc'] = "Traps to catch animals",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 4},

            },
            ['Reward'] ={
                { name = "Beartrap", count = 2 },-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Specialty Pickaxes",
        ['Desc'] = "A very Special Pickaxe",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 4 },
                { name = "hwood",label = "Hard Wood", count = 2},
            },
            ['Reward'] ={
                { name = "specialtypickaxe", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "2x Gold Pan",
        ['Desc'] = "Gold Pans",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 2},

            },
            ['Reward'] ={
                { name = "goldpan", count = 2 },-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Farming Tools",
        ['Desc'] = "Tools for farming",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 3 },
                { name = "hardwood",label = "Hard Wood", count = 2 },
            },
            ['Reward'] ={
                { name = "hoe", count = 1 },-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "10x Nails",
        ['Desc'] = "Nails",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 1 },

            },
            ['Reward'] ={
                { name = "nails", count = 10},-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "5x Iron Hammer",
        ['Desc'] = "Iron Hammer",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 3},
                { name = "hwood",label = "Hard Wood", count = 5},
            },
            ['Reward'] ={
                { name = "ironhammer", count = 5},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "2x Stone Hammer",
        ['Desc'] = "Stone Hammer",
        ['Param'] = {
            ['Item'] = {
                { name = "rock",label = "Rock", count = 2},
                { name = "fibers",label = "Fibers", count = 4},
                { name = "hwood",label = "Hard Wood", count =1 },
            },
            ['Reward'] ={
                { name = "stonehammer", count = 2},-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Butcher Cleaver",
        ['Desc'] = "Cleavers Used by Butchers",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 3},
                { name = "hwood",label = "Hard Wood", count = 1},
            },
            ['Reward'] ={
                { name = "WEAPON_MELEE_CLEAVER", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
           -- ['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Knife",
        ['Desc'] = "A Knife",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 2},
                { name = "hwood",label = "Hard Wood", count = 1},
            },
            ['Reward'] ={
                { name = "WEAPON_MELEE_KNIFE", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] = "blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },
    {
        ['Text'] = "Machete",
        ['Desc'] = "A Machete",
        ['Param'] = {
            ['Item'] = {
                { name = "ironbar",label = "Iron Bar", count = 4},
                { name = "hardwood",label = "Hard Wood", count = 1},
            },
            ['Reward'] ={
                { name = "WEAPON_MELEE_MACHETE", count = 1},-- you can add multipule reward items
            },
            ['Job'] = 0,
            --['gradelock'] = 3,
             ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
            ['location'] = 0, -- keep 0 to allow crafting from any marked location
            ['catagory'] ="Blacksmith",
            ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
            ['expadd'] = 1, -- exp added when recipie is used successfully
            ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
        }
    },

---- Food
{
    ['Text'] = "Steak and Veggies",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "beef",label = "beef", count = 1},
            { name = "salt",label = "salt", count = 1},
            { name = "carrot",label = "carrot", count = 1 },
            { name = "garlic",label = "garlic", count =1 },
            },
        ['Reward'] ={
            { name = "Steakandveggies", count = 1 },-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Noodles",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "Plate",label = "Plate", count = 1},
            { name = "wheat",label = "wheat", count =2 },
            { name = "flour",label = "flour", count = 1 },
        },
        ['Reward'] ={
            { name = "noodles", count = 1},-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Shepard pie",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "mutton",label = "mutton", count = 1 },
            { name = "potatoes",label = "potatoes", count = 2},
            { name = "carrots",label = "carrots", count = 2 },
            { name = "salt",label = "salt", count = 1},
        },
        ['Reward'] ={
            { name = "Shepard pie", count = 1 },-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Steak and eggs",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "eggs",label = "eggs", count = 2 },
            { name = "Beef",label = "Beef", count = 1},
            { name = "salt",label = "salt", count = 1 },
        },
        ['Reward'] ={
            { name = "Steakandeggs", count = 1},-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Johnny cakes",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "corn",label = "corn", count = 3 },
            { name = "flour",label = "flour", count = 1 },
            { name = "sugar",label = "sugar", count = 2 }
        },
        ['Reward'] ={
            { name = "Johnny cakes", count = 1 },-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Deer Jerky",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "venison",label = "venison", count = 1 },

        },
        ['Reward'] ={
            { name = "deerjerky", count = 1},-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "cheese",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "milkcream",label = "milkcream", count = 2},
            { name = "milk",label = "milk", count = 2 },
            { name = "salt",label = "salt", count = 1 },
        },
        ['Reward'] ={
            { name = "cheese", count = 1},-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
{
    ['Text'] = "Dried sockeye salmon",
    ['Desc'] = "",
    ['Param'] = {
        ['Item'] = {
            { name = "sockeyesalmon",label = "sockeyesalmon", count = 1},
            { name = "salt",label = "salt", count = 1},
        },
        ['Reward'] ={
            { name = "Driedsockeyesalmon", count = 1},-- you can add multipule reward items
        },
        ['Job'] = 0,
        --['gradelock'] = 3,
         ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
        ['location'] = 0, -- keep 0 to allow crafting from any marked location
        ['catagory'] = "food",
        ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
        ['expadd'] = 1, -- exp added when recipie is used successfully
        ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
    }
},
-- {
--     ['Text'] = "",
--     ['Desc'] = "",
--     ['Param'] = {
--         ['Item'] = {
--             { name = "",label = "", count = },
--             { name = "",label = "", count = },
--             { name = "",label = "", count = },
--         },
--         ['Reward'] ={
--             { name = "", count = 1},-- you can add multipule reward items
--         },
--         ['Job'] = 0,
--         --['gradelock'] = 3,
--          ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
--         ['location'] = 0, -- keep 0 to allow crafting from any marked location
--         ['catagory'] = "",
--         ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
--         ['expadd'] = 1, -- exp added when recipie is used successfully
--         ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
--     }
-- },
-- {
--     ['Text'] = "",
--     ['Desc'] = "",
--     ['Param'] = {
--         ['Item'] = {
--             { name = "",label = "", count = },
--             { name = "",label = "", count = },
--         },
--         ['Reward'] ={
--             { name = "", count = },-- you can add multipule reward items
--         },
--         ['Job'] = 0,
--         --['gradelock'] = 3,
--          ['prop'] = 0 ,  -- keep 0 to allow crafting from any prop
--         ['location'] = 0, -- keep 0 to allow crafting from any marked location
--         ['catagory'] = "",
--         ['expreq'] = 0, -- exp needed for this recipie to appear on players crafting menu
--         ['expadd'] = 1, -- exp added when recipie is used successfully
--         ['diff'] = 2000, -- difficulty of mini game, the lower the harder, between 1000 to 5000 is ideal
--     }
-- },
-- ---- SOmthing else
--     {
--         ['Text'] = "Smoke Bomb",
--         ['Desc'] = "",
--         ['Param'] = {
--             ['Item'] = {
--                 { name = "fibers",label = "Fibers", count = 1},
--                 { name = "acid",label = "Acid", count = 1},
--                 { name = "coal",label = "Coal", count = 1},
--                 { name = "nitrite",label = "Nitrite", count = 1},
--             },
--             ['gradelock'] = 3, -- add this entry to grade lock this rank and above can craft
--             ['Reward'] ={
--                 { name = "smokebomb", count = 1},
--             },
--             ['Job'] = {
--                 "sdtheater",
--             },
--              ['prop'] = 0 ,
--             ['location'] = 0,
--             ['catagory'] = "basic",
--             ['expreq'] = 0,
--             ['expadd'] = 1,
--             ['diff'] = 2500,
--         }
--     },

--     {
--         ['Text'] = "Fish Stew",
--         ['Desc'] = "",
--         ['Param'] = {
--             ['uinuqesteam'] = {  -- add this to steam lock specific recipies
--                 "steam:xxxxxxx",
--             },
--             ['Item'] = {
--                 { name = "a_c_fishlargemouthbass_01_ms",label = "Lardgemouth Bass", count = 1},
--                 { name = "a_c_fishrainbowtrout_01_ms",label = "Rainbow Trout", count = 1},
--                 { name = "a_c_fishbluegil_01_sm",label = "Small Bluegil", count = 1},
--                 { name = "Wild_Carrot",label = "Carrot", count = 1},
--                 {name = "Wild_Mint", label = "Wild Mint", count = 1},
--                 { name = "wateringcan",label = "Water Bucket", count = 1},

--             },
--             ['Reward'] ={
--                 { name = "unique_fishsteeww", count = 1},
--             },
--             ['Job'] = {"fightclub"},
--              ['prop'] = 0 ,
--             ['location'] = {"fightclub"},
--             ['catagory'] = "food",
--             ['expreq'] = 0,
--             ['expadd'] = 1,
--             ['diff'] = 3000,
--         }
--     },

}