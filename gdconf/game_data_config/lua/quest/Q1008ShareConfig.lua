--[[
    luaide  模板位置位于 Template/FunTemplate/NewFileTemplate.lua 其中 Template 为配置路径 与luaide.luaTemplatesDir
    luaide.luaTemplatesDir 配置 https://www.showdoc.cc/web/#/luaide?page_id=713062580213505
    author:{尤志林}
    time:2020-05-15 11:32:13
]]
-- 任务配置

-- 父任务id

main_id = 1008

sub_ids =
{
    100808,
    100801,
    100802,
    100803,
    100804,
    100805,
    100806,
    100807,
}

rewind_data = {}


quest_data = {}

--求饶的李丁
quest_data["100801"] = 
{
    npcs = {
        {
            id = 10259,
            alias = "Npc10259",
            script = "Actor/Npc/TempNPC",
            pos = "Q100802DaoBorn01",
            scene_id = 3,
            data_index = 0,
        },

    }
}

--盗宝团团聚
quest_data["100805"] =
{
    npcs = {
        {
            id = 10259,
            alias = "Npc10259",
            script = "Actor/Npc/TempNPC",
            pos = "Q100802DaoTalk01",
            scene_id = 3,
            data_index = 0,
		},

		{
            id = 10260,
            alias = "Npc10260",
            script = "Actor/Npc/TempNPC",
            pos = "Q100806DaoTalk02",
            scene_id = 3,
            data_index = 0,
        },

    }
}

quest_data["100806"] =
{
    npcs = {
        {
            id = 10259,
            alias = "Npc10259",
            script = "Actor/Npc/TempNPC",
            pos = "Q100802DaoTalk01",
            scene_id = 3,
            data_index = 0,
		},

		{
            id = 10260,
            alias = "Npc10260",
            script = "Actor/Npc/TempNPC",
            pos = "Q100806DaoTalk02",
            scene_id = 3,
            data_index = 0,
        },

    }
}

--阿鸟现身
quest_data["100807"] =
{
    npcs = {
        {
            id = 10257,
            alias = "Npc10257",
            script = "Actor/Npc/TempNPC",
            pos = "Q100807Aniao",
            scene_id = 3,
            data_index = 0,
		},

    }
}