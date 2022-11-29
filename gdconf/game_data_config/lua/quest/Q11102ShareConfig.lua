-- 任务配置

-- 父任务id

main_id = 11102

sub_ids =
{
	1110201,
    1110202,
    1110203,
    1110204,
    1110205,
    1110206,
    1110207,
    1110208,

}


PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

XiaoData =
{
    ID = 10204,
	Alias = "Xiao",  
}

CheatData =
{
    ID = 10202,
	Alias = "Npc10202",  
}

QQ1Data =
{
    ID = 10227,
	Alias = "Npc10227",  
}
QQ2Data =
{
    ID = 10227,
	Alias = "Npc10228",  
}
QQ3Data =
{
    ID = 10227,
	Alias = "Npc10229",  
}

rewind_data = {}

rewind_data["1110201"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			pos = "Q1110103track1",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Q10101Compass", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
        }
	},
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110202Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
    }
}
rewind_data["1110202"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110202Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
rewind_data["1110206"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110207Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}


quest_data = {}
quest_data["1110201"] = 
{
	gadgets =
	{
		{
			id = 70700006,
			--pos = "Q1110103track1",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Q10101Compass", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
        }
	},
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110202Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},			
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110105Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
        {
			alias = "Npc10217",
			script = "Actor/Npc/TempNPC",
			id = 10217,
			pos = "Q1110105Crowd1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10218",
			script = "Actor/Npc/TempNPC",
			id = 10218,
			pos = "Q1110105Crowd2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10219",
			script = "Actor/Npc/TempNPC",
			id = 10219,
			pos = "Q1110105Crowd3",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}

    }
}
quest_data["1110202"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110202Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
quest_data["1110204"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "Q1110204Paimon1",
			scene_id = 1032,
			room_id = 0,
			data_index = 0,
		}
    }
}


quest_data["1110205"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "Q1110206Paimon1",
			scene_id = 1032,
			room_id = 0,
			data_index = 0,
		}
    }
}
