-- 任务配置

-- 父任务id

main_id = 11101

sub_ids =
{
	1110101,
    1110102,
    1110103,
    1110104,
    1110105,
    1110106,
    1110107,
    1110108,

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
rewind_data = {}
rewind_data["1110101"] = 
{
	npcs = 
	{
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110102Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	}	
}
rewind_data["1110103"] = 
{

}
rewind_data["1110104"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "Q1110104Paimon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	}	
}
rewind_data["1110105"] = 
{
	npcs = 
	{
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
		},
	
        {
			alias = "Npc10222",
			script = "Actor/Npc/TempNPC",
			id = 10222,
			pos = "Q1110105Qiuqiu1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10223",
			script = "Actor/Npc/TempNPC",
			id = 10223,
			pos = "Q1110105Qiuqiu2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
rewind_data["1110107"] = 
{
	npcs = 
	{
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110010Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}


quest_data = {}
quest_data["1110101"] = 
{
	npcs = 
	{
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110010Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
        {
			alias = "Npc10217",
			script = "Actor/Npc/TempNPC",
			id = 10217,
			pos = "Q1110010Crowd1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10218",
			script = "Actor/Npc/TempNPC",
			id = 10218,
			pos = "Q1110010Crowd2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10219",
			script = "Actor/Npc/TempNPC",
			id = 10219,
			pos = "Q1110010Crowd3",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	}	
}

quest_data["1110108"] = 
{
	npcs = 
	{
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110102Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	}	
}
quest_data["1110103"] = 
{

}
quest_data["1110104"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "Q1110104Paimon",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
	},
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1110104Born"
        },
    }
}
quest_data["1110105"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "Q1110003Paimon",
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
		},
	
        {
			alias = "Npc10222",
			script = "Actor/Npc/TempNPC",
			id = 10222,
			pos = "Q1110105Qiuqiu1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc10223",
			script = "Actor/Npc/TempNPC",
			id = 10223,
			pos = "Q1110105Qiuqiu2",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
    {
        {
            id = 70710284,
            pos = "Q1110105gadget",
            alias = "Q70710284", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
		},
		{
            id = 70710288,
            pos = "Q1110003Qiuqiu1",
            alias = "effect1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            data_index = 0, 

		},
		{
            id = 70710288,
            pos = "Q1110003Qiuqiu2",
            alias = "effect2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            data_index = 0, 

        },
    }
}
quest_data["1110107"] = 
{
	npcs = 
	{
		{
			alias = "Npc10202",
			script = "Actor/Npc/TempNPC",
			id = 10202,
			pos = "Q1110105Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1110107Born"
        },
    }
}
