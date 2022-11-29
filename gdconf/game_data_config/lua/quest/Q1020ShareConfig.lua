-- 任务配置

-- 父任务id

main_id = 1020

sub_ids =
{
    102001,
    102002,
    102003,
    102004,
    102005,
    102006,
    102007,
    102008,
}

rewind_data = {}

quest_data = {}
quest_data["102001"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102001Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102001Born"
        },
    }
}
quest_data["102002"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102002Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102002Born"
        },
    }
}
quest_data["102003"] = 
{
    gadgets =
    {
        {
            id = 71700097,
            pos = "Q102003test",
            alias = "Q102003test", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }
}
quest_data["102004"] = 
{
    npcs = {
        {
            id = 10262,
            alias = "Npc10262",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army1",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 10263,
            alias = "Npc10263",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army2",
            scene_id = 3,
            data_index = 1,
        },
        {
            id = 10264,
            alias = "Npc10264",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army4",
            scene_id = 3,
            data_index = 2,
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102004Born"
        },
    }
}

quest_data["102006"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102006Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102006born"
        },
    }
}
quest_data["102007"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102007Paimon",
            scene_id = 3,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q102007born"
        },
    }
}