-- 任务配置

-- 父任务id

main_id = 1024

sub_ids =
{
    102401,
    102402,
    102403,
    102404,
    102405,
    102406,
    102407,
    102408,
}

rewind_data = {}

quest_data = {}
quest_data["102401"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102401Paimon",
            scene_id = 1051,
            room_id = 0 , 
            data_index = 0,
        },
    }
}
quest_data["102402"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102401Paimon",
            scene_id = 1051,
            room_id = 0 , 
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1051,
            pos = "Q102404Start"
        },
    }
}

quest_data["102404"] = 
{
    npcs = {
        {
            id = 10211,
            alias = "Npc10211",
            script = "Actor/Npc/TempNPC",
            pos = "Q102404Ningguang",
            scene_id = 1051,
            room_id = 0 , 
            data_index = 0,
        },
    }
}