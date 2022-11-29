-- 任务配置

-- 父任务id

main_id = 10111

sub_ids =
{
    1011101,
}

rewind_data = {}
rewind_data["1011103"] = 
{
	npcs = 
	{
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011102Jack",
            scene_id = 20032,
            room_id = 1,
            data_index = 1,
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011102Stanly",
            scene_id = 20032,
            room_id = 1,
            data_index = 2,
        },
    },
}

rewind_data["1011104"] = 
{
	npcs = 
	{
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011102Jack",
            scene_id = 20032,
            room_id = 1,
            data_index = 1,
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011102Stanly",
            scene_id = 20032,
            room_id = 1,
            data_index = 2,
        },
    },
}


quest_data = {}

quest_data["1011101"] = 
{
	npcs = 
	{
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q465Diluc2",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
        },
    },
}

quest_data["1011102"] = 
{
	npcs = 
	{
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011102Jack",
            scene_id = 20032,
            room_id = 1,
            data_index = 1,
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011102Stanly",
            scene_id = 20032,
            room_id = 1,
            data_index = 2,
        },
    },
}

quest_data["1011106"] = 
{
	npcs = 
	{
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011106Wendy",
            scene_id = 20032,
            room_id = 1,
            data_index = 1,
        },
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011106Jack",
            scene_id = 20032,
            room_id = 1,
            data_index = 2,
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011106Stanly",
            scene_id = 20032,
            room_id = 1,
            data_index = 3,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 20032,
            pos = "Q1011106Player"
        },
    }
}