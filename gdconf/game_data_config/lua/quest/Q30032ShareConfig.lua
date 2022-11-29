-- 任务配置

-- 父任务id

main_id = 30032

sub_ids =
{
    3003201,
    3003202,
    3003203,
    3003204,
    3003205
}

rewind_data = {}

rewind_data["3003202"] = 
{
	npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos1}",
            data_index = 0,
            scene_id  = 3,
        }
    },
}

rewind_data["3003204"] = 
{
	npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos1}",
            data_index = 0,
            scene_id  = 3,
        }
    },
}

quest_data = {}

quest_data["3003201"] = 
{
    npcs = {
        {
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos1}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["3003203"] = 
{
    npcs = {
        {
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos1}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}

quest_data["3003205"] = 
{
    npcs = {
        {
            alias = "{QuestNpcID}", --会自动调用接口QuestActorProxy:GetRandomNpcAlias(alias)生成
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos2}",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    },
}