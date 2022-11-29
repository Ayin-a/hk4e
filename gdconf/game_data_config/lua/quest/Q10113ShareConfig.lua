-- 任务配置

-- 父任务id

main_id = 10113

sub_ids =
{
    1011301,
    1011302,
    1011303,
    1011304,
    1011305,
    1011306,
}

rewind_data = {}

rewind_data["1011304"] = 
{
    npcs = {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        }
    },

    quest_var = {
        2, -1, -1, -1, -1
    }
}

rewind_data["1011305"] = 
{
    npcs = {
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        }
    }
}


quest_data = {}

quest_data["1011301"] = 
{
    npcs = 
    {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
    },
}

quest_data["1011302"] = 
{
    npcs = 
    {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        }
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1009,
            pos = "Q1011303Player"
        },
    }
}

quest_data["1011303"] = 
{
    npcs = 
    {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0,
        },
    },
}

quest_data["1011305"] = 
{
    npcs = 
    {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}