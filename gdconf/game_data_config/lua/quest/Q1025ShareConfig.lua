-- 任务配置

-- 父任务id

main_id = 1025

sub_ids =
{
    102501,
    102502,
    102503,
    102504,
    102505,
    102506,
    102507,
    102508,
    102509,
    102510,
    102511,
    102512,
    102513,
    102514,
    102515,
    102516,
    102517,
    102518,
    102519,
    102520,
    102521,
}

rewind_data = {}

quest_data = {}
quest_data["102501"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102501Born"
        },
    }
}
quest_data["102516"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Paimon",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 2025,
            alias = "Npc2025",
            script = "Actor/Npc/TempNPC",
            pos = "Q102501Chang",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102502"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102502Paimon",
            scene_id = 1033,
            room_id = 1,
            data_index = 0,
        }
    },
    gadgets =
	{
		{
            id = 70710203,
            pos = "Q102502Gnosis",
			alias = "Gnosis", -- optional default : ""
            scene_id = 1033,
            room_id = 1,
            data_index = 0, 
        }
	},
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1033,
            pos = "Q102502Born"
        },
    }
}
quest_data["102503"] = 
{
    npcs = {
        {
            id = 205501,
            alias = "Npc205501",
            script = "Actor/Npc/TempNPC",
            pos = "Q102503DJ",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 203801,
            alias = "Npc203801",
            script = "Actor/Npc/TempNPC",
            pos = "Q102503WBZ",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102504"] = 
{
    npcs = {
        {
            id = 203401,
            alias = "Npc203401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102504LG",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 203501,
            alias = "Npc203501",
            script = "Actor/Npc/TempNPC",
            pos = "Q102504LS",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102510"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102510ZL",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102513"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102510ZL",
            scene_id = 3,
            data_index = 0,
        },  
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Pll",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 208301,
            alias = "Npc208301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Yinger",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Shitou",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 1016,
            alias = "Npc1016",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Keqing",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ningguang",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ganyu",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102515"] = 
{
    npcs = {
        {
            id = 208401,
            alias = "Npc208401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102515BDR",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102505"] = 
{
    npcs = {
        {
            id = 207101,
            alias = "Npc207101",
            script = "Actor/Npc/TempNPC",
            pos = "Q102505QYJ",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102505Born"
        },
    }
}
quest_data["102506"] = 
{
    npcs = {
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Pll",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 208301,
            alias = "Npc208301",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Yinger",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Shitou",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 1016,
            alias = "Npc1016",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Keqing",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ningguang",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            pos = "Q102506Ganyu",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102506Born"
        },
    }
}
quest_data["102517"] = 
{
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102517Born"
        },
    }
}