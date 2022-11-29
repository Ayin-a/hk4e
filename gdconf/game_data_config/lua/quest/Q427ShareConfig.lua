-- 任务配置

-- 父任务id

main_id = 427

sub_ids =
{
    42709,
    42701,
    42702,
    42703,
    42704,
    42705,
    42706,
    42707,
    42708,
}

rewind_data = {}

rewind_data["42701"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

rewind_data["42703"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}


rewind_data["42704"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

rewind_data["42706"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

rewind_data["42707"] = 
{

}

rewind_data["42708"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "42708AmborHidden",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
	},
	avatar = {
        scene_id = 3,
        pos = "Q42707Player"
    },
}

quest_data = {}
quest_data["42702"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    },
    gadgets = {
        {
            id = 70710005,
            pos = "Q427Wind1",
            alias = "Wind1", 
            scene_id = 3, 
            room_id = 0,  
		},
		{
            id = 70690001,
            pos = "Q427Wind1",
            alias = "Wind1", 
            scene_id = 3, 
            room_id = 0,  
        },
	},
	transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q375RunStart"
        },
    }
}

quest_data["42709"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

quest_data["42701"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

quest_data["42703"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Ambor_FlyBegin",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}


quest_data["42704"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

quest_data["42705"] = 
{
	npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    },
    gadgets = {
        {
            id = 70710005,
            pos = "Q427Wind1",
            alias = "Wind1", 
            scene_id = 3, 
            room_id = 0,  
		},
		{
            id = 70690001,
            pos = "Q427Wind1",
            alias = "Wind1", 
            scene_id = 3, 
            room_id = 0,  
        },
	},
	transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Knight_Roof"
        },
    }
}

quest_data["42706"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "Knight_Roof_Ambor",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

quest_data["42707"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "42708AmborHidden",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		}
    }
}

quest_data["42708"] = 
{
    npcs = 
	{
		{
			alias = "Ambor",
			script = "Actor/Quest/Q301/Ambor301",
			id = 1002,
			pos = "42708AmborHidden",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
		{
			alias = "Npc1483",
			script = "Actor/Npc/TempNPC",
			id = 1483,
			pos = "Q427Soilder2",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
		},
    }
}
