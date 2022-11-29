-- 任务配置

-- 父任务id

main_id = 1022

sub_ids =
{
    102201,
    102202,
    102203,
    102204,
    102205,
    102206,
    102207,
    102208,
}

rewind_data = {}
rewind_data["102202"] = 
{
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0,
        },
    }
}


quest_data = {}
quest_data["102201"] = 
{
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102202"] = 
{
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102201Check",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102203"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q102203ZL",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102204"] = 
{
    npcs = {
        {
            id = 10273,
            alias = "Npc10273",
            script = "Actor/Npc/TempNPC",
            pos = "Q102204Lily",
            scene_id = 3,
            data_index = 0,
        },
    },
    gadgets =
    {
        {
            id = 71700108,
            pos = "Q102204Lily",
            alias = "Q102204Lily", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700108,
            pos = "Q102204Lily2",
            alias = "Q102204Lily2", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
        {
            id = 71700108,
            pos = "Q102204Lily3",
            alias = "Q102204Lily3", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        },
    }
}

quest_data["102206"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102206Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102206born"
        },
    }
}
quest_data["102207"] = 
{
    npcs = {
        {
            id = 10272,
            alias = "Npc10272",
            script = "Actor/Npc/TempNPC",
            pos = "Q102207YRZ",
            scene_id = 3,
            data_index = 0,
        },
    }
}
quest_data["102208"] = 
{
    npcs = {
        {
            id = 10272,
            alias = "Npc10272",
            script = "Actor/Npc/TempNPC",
            pos = "Q102207YRZ",
            scene_id = 3,
            data_index = 0,
        },
    }
}