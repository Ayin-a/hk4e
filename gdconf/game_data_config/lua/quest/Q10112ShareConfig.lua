-- 任务配置

-- 父任务id

main_id = 10112

sub_ids =
{
    1011201,
    1011202,
    1011203,
    1011204,
    1011205,
    1011206,
    1011207,
    1011208,
    1011209,
    1011210,
    1011211,
}

rewind_data = {}

rewind_data["1011206"] = 
{
	npcs = 
	{
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

rewind_data["1011209"] = 
{
	npcs = 
	{
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

rewind_data["1011210"] = 
{
	npcs = 
	{
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

rewind_data["1011211"] = 
{
	npcs = 
	{
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011205Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        },
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011204Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

quest_data = {}

quest_data["1011203"] = 
{
	gadgets =
	{
        {
            id = 70710043,
            pos = "Q1011203Target",
            alias = "Q1011203Search", 
            scene_id = 3, 
            room_id = 0, 
        }
	}
}

quest_data["1011204"] = 
{
	npcs = 
	{
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011204Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

quest_data["1011205"] = 
{
	npcs = 
	{
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        }
    },
}

quest_data["1011210"] = 
{
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1011205Player"
        },
    }
}