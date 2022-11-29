-- 任务配置

-- 父任务id

main_id = 1023

sub_ids =
{
    102301,
    102302,
    102303,
    102304,
    102305,
    102306,
    102307,
    102308,
}

rewind_data = {}

quest_data = {}
quest_data["102303"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102303Paimon",
            scene_id = 20101,
            room_id = 0 , 
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 20101,
            pos = "Q102303Born"
        },
    }
}
quest_data["102302"] = 
{
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102302XZFD",
            scene_id = 20101,
            room_id = 0 , 
            data_index = 0,
        },
    },
    gadgets =
    {
        {
            id = 70710079,
            pos = "Q102302XZFD",
            alias = "Q102302XZFD", 
            scene_id = 20101 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["102305"] = 
{
    npcs = {
        {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            pos = "Q102305GZ",
            scene_id = 20101,
            room_id = 0 , 
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 20101,
            pos = "Q102305Born"
        },
    }
}
quest_data["102304"] = 
{
    transmit_points = {
        {
            point_id = 1,
            scene_id = 20101,
            pos = "Q102302GZ"
        },
    }
}