-- 任务配置

-- 父任务id

main_id = 30033

sub_ids =
{
    3003301,
    3003302,
}

rewind_data = {}

rewind_data["3003301"] = 
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

rewind_data["3003302"] = 
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

quest_data["3003301"] = 
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

quest_data["3003302"] = 
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