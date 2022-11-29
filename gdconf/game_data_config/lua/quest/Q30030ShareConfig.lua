-- 任务配置

-- 父任务id

main_id = 30030

sub_ids =
{
    3003001,
    3003002,
}

rewind_data = {}

rewind_data["3003001"] = 
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

rewind_data["3003002"] = 
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

quest_data["3003001"] = 
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

quest_data["3003002"] = 
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