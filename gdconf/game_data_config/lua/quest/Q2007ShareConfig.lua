-- 任务配置数据开始-----------------------------

main_id = 2007

sub_ids = 
{
	200701,
	200710,
	200702,
	200703,
	200704,
	200706,
	200705,
	200709,
	200707,
	200711,
	200708,
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
	SERVER = { },
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
	["200701"] = { },
	["200702"] = { },
	["200703"] = { },
	["200704"] = { },
	["200705"] = 
	{
		npcs = 
		{
			{
				id = 12012,
				alias = "Npc12012",
				script = "Actor/Npc/TempNPC",
				pos = "Q200707mass1",
				scene_id = 20111,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["200706"] = { },
	["200707"] = { },
	["200708"] = { },
	["200709"] = 
	{
		npcs = 
		{
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q200708xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["200710"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q2004paimon",
				scene_id = 1061,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["200711"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["200701"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q2004paimon",
				scene_id = 1061,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2004shenli",
				scene_id = 1061,
				room_id = 1,
				data_index = 2,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 1060,
				pos = "Q200709born",
			},
		},
	},
	["200702"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q200702paimon",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q200702xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12008,
				alias = "Npc12008",
				script = "Actor/Npc/TempNPC",
				pos = "Q200702mass2",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12009,
				alias = "Npc12009",
				script = "Actor/Npc/TempNPC",
				pos = "Q200702mass3",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12011,
				alias = "Npc12011",
				script = "Actor/Npc/TempNPC",
				pos = "Q200702mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q200708tuoma",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["200703"] = { },
	["200704"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q200704paimon",
				scene_id = 20111,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q200704xiaogong",
				scene_id = 20111,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["200705"] = { },
	["200706"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q200705paimon",
				scene_id = 20111,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q200705xiaogong",
				scene_id = 20111,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12009,
				alias = "Npc12009",
				script = "Actor/Npc/TempNPC",
				pos = "Q200705mass3",
				scene_id = 20111,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12012,
				alias = "Npc12012",
				script = "Actor/Npc/TempNPC",
				pos = "Q200707mass1",
				scene_id = 20111,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12010,
				alias = "Npc12010",
				script = "Actor/Npc/TempNPC",
				pos = "Q200705mass2",
				scene_id = 20111,
				room_id = 0,
				data_index = 5,
			},
		},
	},
	["200711"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q2003paimon",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 3,
			},
		},
	},
	["200708"] = { },
	["200709"] = 
	{
		npcs = 
		{
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q200708xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["200710"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
