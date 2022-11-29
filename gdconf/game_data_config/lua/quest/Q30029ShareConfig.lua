-- 任务配置

-- 父任务id

main_id = 30029

sub_ids =
{
    3002901,
    3002902,
}

rewind_data = {}

rewind_data["3002901"] = 
{
	npcs = 
    {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/TempNPC",
            pos = "{QuestRescuePos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    },
}

rewind_data["3002902"] = 
{
	npcs = 
    {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/TempNPC",
            pos = "{QuestRescuePos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    },
}

quest_data = {}

quest_data["3002901"] = 
{
	npcs = 
    {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/TempNPC",
            pos = "{QuestRescuePos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    },
}

quest_data["3002902"] = 
{
	npcs = 
    {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/TempNPC",
            pos = "{QuestRescuePos}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    },
}
