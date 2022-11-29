-- 任务配置数据开始-----------------------------

main_id = 41411

sub_ids = 
{
	4141115,
	4141101,
	4141114,
	4141102,
	4141103,
	4141105,
	4141106,
	4141107,
	4141108,
	4141109,
	4141110,
	4141111,
	4141112,
	4141104,
	4141113,
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
			{ "133002942", },
			{ "133002943", },
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
	["4141115"] = { },
	["4141101"] = { },
	["4141114"] = {
		npcs = 
		{
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141101Kaeya",
				scene_id = 1004,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["4141102"] = 
	{
		npcs = 
		{
			{
				id = 146101,
				alias = "Npc146101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141114Ninglu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141101Kaeya",
				scene_id = 1004,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["4141103"] = 
	{
		npcs = 
		{
			{
				id = 146101,
				alias = "Npc146101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141114Ninglu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141101Kaeya",
				scene_id = 1004,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["4141105"] = { },
	["4141106"] = { },
	["4141107"] = 
	{
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141106Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1007,
				alias = "Lisa",
				script = "Actor/Quest/Q411/Lisa",
				pos = "Q4141106Lisa",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141108"] = { },
	["4141109"] = { },
	["4141110"] = { },
	["4141111"] = { },
	["4141104"] = { },
	["4141113"] = { },
	
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4141115"] = { },
	["4141101"] = 
	{
		npcs = 
		{
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141101Kaeya",
				scene_id = 1004,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141101Venti",
				scene_id = 1004,
				room_id = 100402,
				data_index = 2,
			},
		},
	},
	["4141102"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141114Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141103"] = {
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141114Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141104"] = {
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141113Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141113Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141105"] = 
	{
		npcs = 
		{
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141105Kaeya",
				scene_id = 1004,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141105Venti",
				scene_id = 1004,
				room_id = 100402,
				data_index = 2,
			},
		},
	},
	["4141106"] = 
	{
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141106Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1007,
				alias = "Lisa",
				script = "Actor/Quest/Q411/Lisa",
				pos = "Q4141106Lisa",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141106Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141107"] = {
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141106Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141108"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141108Barbara",
				scene_id = 1008,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141108Bennett",
				scene_id = 1008,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141108Venti",
				scene_id = 1008,
				room_id = 1,
				data_index = 3,
			},
		},
	},
	["4141109"] = {
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141109Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141109Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141110"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141109Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1020,
				alias = "Npc1020",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141109Rosaria",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141109Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141111"] = {
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141113Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141113Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141112"] = {
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141113Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141113Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141113"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141113Barbara",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141113Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141114"] = 
	{
		npcs = 
		{
			{
				id = 146101,
				alias = "Npc146101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141114Sit",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141114Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

