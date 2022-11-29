-- 任务配置数据开始-----------------------------

main_id = 41341

sub_ids = 
{
	4134101,
	4134102,
	4134103,
	4134104,
	4134105,
	4134106,
	4134107,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = { },
}

fail_action = 
{
	CLIENT = { },
	SERVER = { },
}

cancel_action = 
{
	CLIENT = { },
	SERVER = { 
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133102917", },
			{ "133102918", },
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
	["4134101"] = { },
	["4134102"] = 
	{
		npcs = 
		{
			{
				id = 211801,
				alias = "Npc211801",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Mengmeng",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134103"] = 
	{
		npcs = 
		{
			{
				id = 211801,
				alias = "Npc211801",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Mengmeng",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 211901,
				alias = "Npc211901",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Xiaoyu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4134104"] = 
	{
		npcs = 
		{
			{
				id = 211801,
				alias = "Npc211801",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Mengmeng",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 211901,
				alias = "Npc211901",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Xiaoyu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4134105"] = { },
	["4134106"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4134101"] = 
	{
		npcs = 
		{
			{
				id = 211801,
				alias = "Npc211801",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134101Mengmeng",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134102"] = 
	{
		npcs = 
		{
			{
				id = 211901,
				alias = "Npc211901",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134102Xiaoyu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134103"] = 
	{
		gadgets = 
		{
			{
				id = 71700184,
				alias = "Gadget71700184",
				pos = "Q4134103Light",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134104"] = { },
	["4134105"] = { },
	["4134106"] = 
	{
		npcs = 
		{
			{
				id = 211801,
				alias = "Npc211801",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134106Mengmeng",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 211901,
				alias = "Npc211901",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134106Xiaoyu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4134107"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

