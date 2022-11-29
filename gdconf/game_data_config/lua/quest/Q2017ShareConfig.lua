-- 任务配置数据开始-----------------------------

main_id = 2017

sub_ids = 
{
	201701,
	201702,
	201712,
	201703,
	201704,
	201710,
	201705,
	201706,
	201707,
	201708,
	201714,
	201711,
	201713,
	201709,
	201715,
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
	["201701"] = { },
	["201702"] = 
	{
		npcs = 
		{
			{
				id = 1040,
				alias = "Npc1040",
				script = "Actor/Npc/TempNPC",
				pos = "Q201701Zaoyou",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12240,
				alias = "Npc12240",
				script = "Actor/Npc/TempNPC",
				pos = "Q201701Zaoyou",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201703"] = { },
	["201704"] = { },
	["201705"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017TuomaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017LinghuaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201706"] = 
	{
		npcs = 
		{
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017TuomaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017LinghuaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["201707"] = 
	{ 
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017TuomaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017LinghuaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201708"] =
	{ 
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017TuomaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017LinghuaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1040,
				alias = "Npc1040",
				script = "Actor/Npc/TempNPC",
				pos = "Q201707_Sara",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201709"] =
	{ 
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["201710"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017TuomaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2017LinghuaRewind",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["201712"] = { },
	["201714"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201703Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
		avatar = 
		{
			offline_dungeon_id = 0,
			scene_id = 3,
			pos = "Q201708Yanhua",
		},
	},
	["201715"] =
	{ 
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201703Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
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
	["201701"] = 
	{
		npcs = 
		{
			{
				id = 1040,
				alias = "Npc1040",
				script = "Actor/Npc/TempNPC",
				pos = "Q201701Zaoyou",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12240,
				alias = "Npc12240",
				script = "Actor/Npc/TempNPC",
				pos = "Q201701Zaoyou",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201702"] = { },
	["201703"] = { },
	["201704"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201703Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1031,
				alias = "Npc1031",
				script = "Actor/Npc/TempNPC",
				pos = "Q201703Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["201705"] = 
	{
		npcs = 
		{
			{
				id = 3035,
				alias = "Npc3035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201706"] = 
	{
		npcs = 
		{
			{
				id = 3035,
				alias = "Npc3035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200801yayi",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201707"] = 
	{
		npcs = 
		{
			{
				id = 1040,
				alias = "Npc1040",
				script = "Actor/Npc/TempNPC",
				pos = "Q201706Target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200801yayi",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201708"] = 
	{
		npcs = 
		{
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200801yayi",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1040,
				alias = "Npc1040",
				script = "Actor/Npc/TempNPC",
				pos = "Q201707_Sara",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
		gadgets = 
		{
			{
				id = 71700316,
				alias = "Gadget71700316",
				pos = "Q201708Yanhua",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201709"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["201710"] = 
	{
		npcs = 
		{
			{
				id = 1035,
				alias = "Npc1035",
				script = "Actor/Npc/TempNPC",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3035,
				alias = "Npc3035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201710Xiaogong",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201711"] = 
	{
		npcs = 
		{
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200801yayi",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12259,
				alias = "Npc12259",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder1Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12260,
				alias = "Npc12260",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder2Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12261,
				alias = "Npc12261",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder3Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12262,
				alias = "Npc12262",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder4Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12263,
				alias = "Npc12263",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder5Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12264,
				alias = "Npc12264",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder6Rout4",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12265,
				alias = "Npc12265",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder6Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
		gadgets = 
		{
			{
				id = 71700322,
				alias = "Gadget71700322",
				pos = "Q201708Yanhua",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = 
		{
			{
				point_id = 2,
				scene_id = 1060,
				pos = "Q2003born",
				room_id = 1,
			},
		},
	},
	["201712"] = { },
	["201713"] = 
	{
		npcs = 
		{
			{
				id = 12259,
				alias = "Npc12259",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder1Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12260,
				alias = "Npc12260",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder2Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12261,
				alias = "Npc12261",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder3Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12262,
				alias = "Npc12262",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder4Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12263,
				alias = "Npc12263",
				script = "Actor/Npc/SneakAIRun",
				pos = "Q201711_Soilder5Rout1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q201708Yanhua",
			},
		},
	},
	["201714"] = { },
	["201715"] = 
	{ 
		transmit_points = 
		{
			{
				point_id = 2,
				scene_id = 1060,
				pos = "Q2003born",
				room_id = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
