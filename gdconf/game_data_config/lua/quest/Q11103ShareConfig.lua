-- 任务配置

-- 父任务id

main_id = 11103

sub_ids =
{
	1110301,
    1110302,
    1110303,
    1110304,
    1110305,
    1110306,
    1110307,
    1110308,
    1110309,
    1110310,
    1110311,
	1110312,
	1110313,
    1110314,
    1110315,
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

TongqueData =
{
    ID = 10201,
	Alias = "Npc10201",  
}
CenserData =
{
    ID = 10225,
	Alias = "Npc10225",  
}

StatueData =
{
    ID = 10221,
	Alias = "Npc10221",  
}
GhostData =
{
    ID = 10203,
	Alias = "Npc10203",  
}

rewind_data = {}

rewind_data["1110313"] = 
{
	npcs = 
	{
		{
			alias = "Npc10201",
			script = "Actor/Npc/TempNPC",
			id = 10201,
			pos = "Q1110313TQ",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70710063,
			pos = "Q1110301Censer",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Censer01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}
rewind_data["1110314"] = 
{
	npcs = 
	{
		{
			alias = "Npc10201",
			script = "Actor/Npc/TempNPC",
			id = 10201,
			pos = "Q1110313TQ",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70710063,
			pos = "Q1110301Censer",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Censer01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}
rewind_data["1110301"] = 
{
	npcs = 
	{
		{
			alias = "Npc10225",
			script = "Actor/Npc/TempNPC",
			id = 10225,
			pos = "Q1110301Censer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70710063,
			pos = "Q1110301Censer",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Censer01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}
rewind_data["1110303"] = 
{
	npcs = 
	{
		{
			alias = "Npc10221",
			script = "Actor/Npc/TempNPC",
			id = 10221,
			pos = "Q1110303Statue",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	}
}

rewind_data["1110305"] = ----生成仪式物品
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
rewind_data["1110315"] = ----生成仪式物品
{
	
}
rewind_data["1110306"] = 
{

	npcs = 
	{
		{
			alias = "Npc10226",
			script = "Actor/Npc/TempNPC",
			id = 10226,
			pos = "Q1110305Censer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

	}
}
rewind_data["1110307"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc10203",
			script = "Actor/Npc/TempNPC",
			id = 10203,
			pos = "Q1110307Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
	}
}

rewind_data["1110312"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
rewind_data["1110309"] = ----生成仪式物品
{
	
}
rewind_data["1110311"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110311Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}



quest_data = {}
quest_data["1110313"] = 
{
	npcs = 
	{
		{
			alias = "Npc10201",
			script = "Actor/Npc/TempNPC",
			id = 10201,
			pos = "Q1110313TQ",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70710063,
			pos = "Q1110301Censer",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Censer01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["1110301"] = 
{
	npcs = 
	{
		{
			alias = "Npc10225",
			script = "Actor/Npc/TempNPC",
			id = 10225,
			pos = "Q1110301Censer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	},
	gadgets =
	{
		{
			id = 70710063,
			pos = "Q1110301Censer",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Censer01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}
quest_data["1110303"] = 
{
	npcs = 
	{
		{
			alias = "Npc10221",
			script = "Actor/Npc/TempNPC",
			id = 10221,
			pos = "Q1110303Statue",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
	}
}

quest_data["1110305"] = ----生成仪式物品
{
	
}

quest_data["1110306"] = 
{

	npcs = 
	{
		{
			alias = "Npc10226",
			script = "Actor/Npc/TempNPC",
			id = 10226,
			pos = "Q1110305Censer",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},

    }
}
quest_data["1110307"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc10203",
			script = "Actor/Npc/TempNPC",
			id = 10203,
			pos = "Q1110307Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1110305Born"
        },
    }
}
quest_data["1110309"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc10203",
			script = "Actor/Npc/TempNPC",
			id = 10203,
			pos = "Q1110307Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1110305Born"
        },
    }
}
quest_data["1110308"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
		{
			alias = "Npc10203",
			script = "Actor/Npc/TempNPC",
			id = 10203,
			pos = "Q1110307Cheat",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        }
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1110305Born"
        },
    }
}
quest_data["1110312"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110309Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}
quest_data["1110311"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10204,
			pos = "Q1110311Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}