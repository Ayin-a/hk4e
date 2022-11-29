-- 任务配置

-- 父任务id

main_id = 1014

sub_ids =
{
    101401,
    101402,
    101403,
    101404,
    101405,
    101406,
    101407,
    101408,
}

rewind_data = {}

rewind_data["101401"] = 
{
     npcs = {
         {
             id = 209301,
             alias = "Npc209301",
             script = "Actor/Npc/TempNPC",
             pos = "Q101401Pll",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101406"] = 
{
    npcs = {
        {
            id = 10245,
            alias = "Npc10245",
            script = "Actor/Npc/TempNPC",
            pos = "Q101402Pot",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 209301,
            alias = "Npc209301",
            script = "Actor/Npc/TempNPC",
            pos = "Q101401Pll",
            scene_id = 3,
            data_index = 0,
        },
   }
}
rewind_data["101403"] = 
{
     npcs = {
         {
             id = 209301,
             alias = "Npc209301",
             script = "Actor/Npc/TempNPC",
             pos = "Q101401Pll",
             scene_id = 3,
             data_index = 0,
         },
    }
}
rewind_data["101404"] = 
{
     npcs = {
         {
             id = 10232,
             alias = "Npc10232",
             script = "Actor/Npc/TempNPC",
             pos = "Q101404Stack1",
             scene_id = 3,
             data_index = 0,
         },
    }
}




quest_data = {}

quest_data["101401"] = 
{
     npcs = {
         {
             id = 209301,
             alias = "Npc209301",
             script = "Actor/Npc/TempNPC",
             pos = "Q101401Pll",
             scene_id = 3,
             data_index = 0,
         },
    },
    gadgets =
    {
        {
            id = 71700108,
            pos = "Q101401Lily1",
            alias = "Q101401Lily1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700108,
            pos = "Q101401Lily2",
            alias = "Q101401Lily2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }

}
quest_data["101406"] = 
{
    npcs = {
        {
            id = 10245,
            alias = "Npc10245",
            script = "Actor/Npc/TempNPC",
            pos = "Q101402Pot",
            scene_id = 3,
            data_index = 0,
        },
   }
}
quest_data["101403"] = 
{
     npcs = {
         {
             id = 209301,
             alias = "Npc209301",
             script = "Actor/Npc/TempNPC",
             pos = "Q101401Pll",
             scene_id = 3,
             data_index = 0,
         },
    },
    gadgets =
    {
        {
            id = 71700108,
            pos = "Q101401Lily1",
            alias = "Q101401Lily1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700108,
            pos = "Q101401Lily2",
            alias = "Q101401Lily2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["101404"] = 
{
     npcs = {
         {
             id = 10232,
             alias = "Npc10232",
             script = "Actor/Npc/TempNPC",
             pos = "Q101404Stack1",
             scene_id = 3,
             data_index = 0,
         },
    }
}
