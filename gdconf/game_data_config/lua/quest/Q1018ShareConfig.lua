--[[
    luaide  模板位置位于 Template/FunTemplate/NewFileTemplate.lua 其中 Template 为配置路径 与luaide.luaTemplatesDir
    luaide.luaTemplatesDir 配置 https://www.showdoc.cc/web/#/luaide?page_id=713062580213505
    author:{尤志林}
	time:2020-06-29 11:59:32
	affect：拆出璃月一最后与公子对话部分接到寻访三位仙人之后
]]
-- 任务配置

-- 父任务id

main_id = 1018

sub_ids =
{
	101801,
}

rewind_data = {}

quest_data = {}
quest_data["101801"] =
{
	npcs =
	{
		{
			alias = "Npc10200",
			script = "Actor/Npc/TempNPC",
			id = 10200,
			pos = "Q100318Gongzi",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}