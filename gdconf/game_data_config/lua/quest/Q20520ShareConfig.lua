-- 任务配置数据开始-----------------------------

main_id = 20520

sub_ids = 
{
	2052001,
	2052002,
	2052003,
	2052004,
	2052005,
	2052006,
	2052007,
	2052009,
	2052010,
	2052011,
	2052008,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133001924", },
			{ "133002930", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100705", },
		},
	},
}

fail_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133001924", },
			{ "133002930", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100705", },
		},
	},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133001924", },
			{ "133002930", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100705", },
		},
	},
}
-- 父任务执行项数据结束-----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Actor模块数据开始--------------------------------
-- 空
-- Actor模块数据结束--------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- 文本模块数据开始---------------------------------
-- 空
-- 文本模块数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- 路点模块数据开始---------------------------------
-- 空
-- 路点模块数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


-- 断线重连生成内容 开始----------------------------
-- 和questdata配的存档点对应
rewind_data = 
{
	["2052001"] = { },
	["2052004"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20520tommy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052005"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20520tommy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052006"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20520tommy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052007"] = 
	{npcs = 
	{
		{
			id = 167201,
			alias = "Npc167201",
			script = "Actor/Npc/TempNPC",
			pos = "Q20520tommy",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		},
	},
 },
	["2052009"] = { },
	["2052010"] = {
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20521target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["2052001"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20520tommy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052002"] = { },
	["2052003"] = { },
	["2052004"] = { },
	["2052005"] = { },
	["2052006"] = { },
	["2052007"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20520tommy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052008"] = { },
	["2052009"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20521target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052010"] = 
	{
		npcs = 
		{
			{
				id = 167201,
				alias = "Npc167201",
				script = "Actor/Npc/TempNPC",
				pos = "Q20521target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2052011"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

