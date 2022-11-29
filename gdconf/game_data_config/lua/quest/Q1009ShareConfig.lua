--[[
    luaide  模板位置位于 Template/FunTemplate/NewFileTemplate.lua 其中 Template 为配置路径 与luaide.luaTemplatesDir
    luaide.luaTemplatesDir 配置 https://www.showdoc.cc/web/#/luaide?page_id=713062580213505
    author:{尤志林}
    time:2020-05-15 15:04:01
]]
main_id = 1009

sub_ids =
{
    100901,
    100915,
    100902,
    100903,
    100904,
    100905,
    100906,
	100907,
	100908,
	100909,
	100910,
	100911,
	100912,
	100913,
	100914,

}

rewind_data = {}
rewind_data["100906"] = 
{
	npcs = 
	{
        {
            id = 10276,
            alias = "Npc10276",
            script = "Actor/Npc/TempNPC",
            pos = "Q100902Clue",
            scene_id = 3,
            data_index = 0,
        },

        {
            id = 10277,
            alias = "Npc10277",
            script = "Actor/Npc/TempNPC",
            pos = "Q100903Clue",
            scene_id = 3,
            data_index = 0,
        },

        {
            id = 10278,
            alias = "Npc10278",
            script = "Actor/Npc/TempNPC",
            pos = "Q100904Clue",
            scene_id = 3,
            data_index = 0,
        },
    }
}


quest_data = {}

quest_data["100915"] = 
{
	npcs = 
	{
		{
			-- Paimon
			alias = "Paimon",
			script = "Actor/Quest/Q352/Paimon",
			id = 1005,
			pos = "Q100907Tribute",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		},
	}
}

quest_data["100902"] =
{
	npcs = {
        {
            id = 10276,
            alias = "Npc10276",
            script = "Actor/Npc/TempNPC",
            pos = "Q100902Clue",
            scene_id = 3,
            data_index = 0,
        },

    }

}

quest_data["100903"] =
{
    npcs = {
        {
            id = 10277,
            alias = "Npc10277",
            script = "Actor/Npc/TempNPC",
            pos = "Q100903Clue",
            scene_id = 3,
            data_index = 0,
        },

    }
}

quest_data["100904"] =
{
    npcs = {
        {
            id = 10278,
            alias = "Npc10278",
            script = "Actor/Npc/TempNPC",
            pos = "Q100904Clue",
            scene_id = 3,
            data_index = 0,
        },

    }

}

quest_data["100907"] =
{
	gadgets =
	{
		{
			id = 70710120,
			pos = "Q100907Tribute",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "1009Tribute01", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["100908"] =
{
	gadgets =
	{
		{
			id = 70710121,
			pos = "Q100908Tribute",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "1009Tribute02", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["100909"] =
{
	gadgets =
	{
		{
			id = 70710122,
			pos = "Q100909Tribute",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "1009Tribute03", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}
--地城前随便配的对话
quest_data["100913"] =
{
    npcs = {
        {
            id = 10258,
            alias = "Npc10258",
            script = "Actor/Npc/TempNPC",
            pos = "Q100904Fei",
            scene_id = 1052,
            room_id = 0,
            data_index = 0,
        },

    }
}

--阿肥对话，需要移入地城
quest_data["100914"] =
{
    npcs = {
        {
            id = 10258,
            alias = "Npc10258",
            script = "Actor/Npc/TempNPC",
            pos = "Q100904Fei",
            scene_id = 1052,
            room_id = 0,
            data_index = 0,
        },

    }
}
