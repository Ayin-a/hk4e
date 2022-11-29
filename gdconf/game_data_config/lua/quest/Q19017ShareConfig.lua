-- 任务配置数据开始-----------------------------

main_id = 19017

sub_ids = 
{
	1901701,
	1901702,
	1901703,
	1901704,
	1901705,
	1901706,
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
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133107194", "", },
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
	["1901701"] = { },
	["1901702"] = 
	{
		npcs = 
		{
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901704"] = 
	{
		npcs = 
		{
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10227,
				alias = "Npc10227",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10227",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10228,
				alias = "Npc10228",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10228",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10229,
				alias = "Npc10229",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10229",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10230,
				alias = "Npc10230",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10230",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10231,
				alias = "Npc10231",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10231",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1901705"] = 
	{
		npcs = 
		{
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10227,
				alias = "Npc10227",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10227",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10228,
				alias = "Npc10228",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10228",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10229,
				alias = "Npc10229",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10229",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10230,
				alias = "Npc10230",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10230",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10231,
				alias = "Npc10231",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10231",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1901706"] = 
	{
		npcs = 
		{
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
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
	["1901701"] = 
	{
		npcs = 
		{
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901702"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10227,
				alias = "Npc10227",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10227",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10228,
				alias = "Npc10228",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10228",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10229,
				alias = "Npc10229",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10229",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10230,
				alias = "Npc10230",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10230",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10231,
				alias = "Npc10231",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10231",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12407,
				alias = "Npc12407",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N12407",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
	},
	["1901703"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901701_T1901701_N12318_310701434",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10227,
				alias = "Npc10227",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10227",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10228,
				alias = "Npc10228",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10228",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10229,
				alias = "Npc10229",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10229",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10230,
				alias = "Npc10230",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10230",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 10231,
				alias = "Npc10231",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10231",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 12407,
				alias = "Npc12407",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N12407",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 9,
			},
		},
	},
	["1901704"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_C1901701_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1901705"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901705_C1901702_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901705_C1901702_N509_310701437",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1901706"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901706_C1901703_N509_310701439",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10227,
				alias = "Npc10227",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10227",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10228,
				alias = "Npc10228",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10228",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10229,
				alias = "Npc10229",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10229",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10230,
				alias = "Npc10230",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10230",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10231,
				alias = "Npc10231",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901702_N10231",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1901706_C1901703_N509_310701439",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
