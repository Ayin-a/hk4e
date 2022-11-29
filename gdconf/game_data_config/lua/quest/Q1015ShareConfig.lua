-- 任务配置

-- 父任务id

main_id = 1015

sub_ids =
{
    101501,
    101502,
    101503,
    101504,
    101505,
    101506,
    101507,
    101508,
    101509,
    101510,
    101511,
    101512,
    101513,
    101514,
}

rewind_data = {}

rewind_data["101501"] = 
{
     npcs = {
         {
             id = 10233,
             alias = "Npc10233",
             script = "Actor/Quest/Q411/Qin",
             pos = "Q101501Qiqi",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101513"] = 
{

}

rewind_data["101509"] = 
{
     npcs = {
         {
             id = 10233,
             alias = "Npc10233",
             script = "Actor/Quest/Q411/Qin",
             pos = "Q101501Qiqi",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101508"] = 
{

}
rewind_data["101503"] = 
{

}

rewind_data["101505"] = 
{

}
rewind_data["101506"] = 
{

}
rewind_data["101507"] = 
{
     npcs = {
         {
             id = 10233,
             alias = "Npc10233",
             script = "Actor/Quest/Q411/Qin",
             pos = "Q101507Qiqi",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101511"] = 
{
     npcs = {
         {
             id = 10232,
             alias = "Npc10232",
             script = "Actor/Npc/TempNPC",
             pos = "Q101511stack",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101514"] = 
{

}




quest_data = {}

quest_data["101501"] = 
{
     npcs = {
         {
             id = 10233,
             alias = "Npc10233",
             script = "Actor/Quest/Q411/Qin",
             pos = "Q101501Qiqi",
             scene_id = 3,
             data_index = 0,
         },
    }
}
quest_data["101513"] = 
{
     npcs = {
         {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q101513paimon",
            scene_id = 3,
            data_index = 0,
         },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q101513born"
        },
    }
}
quest_data["101508"] = 
{
	gadgets =
	{
		{
			id = 71700100,
			pos = "Q101402Machine",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Machine", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
			room_id = 0,
		}
	}
}
quest_data["101503"] = 
{
     npcs = {
         {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q101503Paimon",
            scene_id = 3,
            data_index = 0,
         },
         {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101506Zl",
            scene_id = 3,
            data_index = 1,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q101503Born"
        },
    }
}

quest_data["101505"] = 
{
	gadgets =
	{
		{
			id = 71700107,
			pos = "Q101402Machine",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Machine", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
			room_id = 0,
		}
	}
}
quest_data["101506"] = 
{
     npcs = {
         {
             id = 1005,
             alias = "Paimon",
             script = "Actor/Quest/Q352/Paimon",
             pos = "Q101506Paimon",
             scene_id = 3,
             data_index = 0,
         },
         {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101506Zl",
            scene_id = 3,
            data_index = 1,
        },
         {
            id = 10247,
            alias = "Npc10237",
            script = "Actor/Npc/TempNPC",
            pos = "Q101506Monster1",
            scene_id = 3,
            data_index = 2,
        },
        {
            id = 10238,
            alias = "Npc10238",
            script = "Actor/Npc/TempNPC",
            pos = "Q101506Monster2",
            scene_id = 3,
            data_index = 3,
        },  
     },
     transmit_points = {
         {
             point_id = 1,
             scene_id = 3,
             pos = "Q101506Born"
         },
     }
     
}
quest_data["101504"] = 
{
    gadgets =
    {
        {
            id = 70300118,
            pos = "Q101504Pos",
            alias = "Q101504Guild", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["101507"] = 
{
     npcs = {
         {
             id = 10233,
             alias = "Npc10233",
             script = "Actor/Quest/Q411/Qin",
             pos = "Q101507Qiqi",
             scene_id = 3,
             data_index = 0,
         },
         {
            id = 10234,
            alias = "Npc10234",
            script = "Actor/Npc/TempNPC",
            pos = "Q101507BS",
            scene_id = 3,
            data_index = 1,
        },
    }
}
quest_data["101511"] = 
{
     npcs = {
         {
             id = 10232,
             alias = "Npc10232",
             script = "Actor/Npc/TempNPC",
             pos = "Q101511stack",
             scene_id = 3,
             data_index = 0,
         },
         {
            id = 10234,
            alias = "Npc10234",
            script = "Actor/Npc/TempNPC",
            pos = "Q101507BS",
            scene_id = 3,
            data_index = 1,
        },
    }
}
quest_data["101514"] = 
{
     npcs = {
         {
             id = 1005,
             alias = "Paimon",
             script = "Actor/Quest/Q352/Paimon",
             pos = "Q101514Paimon",
             scene_id = 3,
             data_index = 0,
         },
         {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101514ZL",
            scene_id = 3,
            data_index = 1,
        }, 
     },
     transmit_points = {
         {
             point_id = 1,
             scene_id = 3,
             pos = "Q101514Born"
         },
     }
}