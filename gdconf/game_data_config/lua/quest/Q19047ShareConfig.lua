-- 任务配置数据开始-----------------------------

main_id = 19047

sub_ids = 
{
	1904712,
	1904701,
	1904702,
	1904714,
	1904703,
	1904704,
	1904705,
	1904706,
	1904713,
	1904708,
	1904707,
	1904709,
	1904710,
	1904715,
	1904716,
	1904711,
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
			{ "133107234", "", },
			{ "133107235", "", },
			{ "133107236", "", },
		},
		QUEST_EXEC_UNLOCK_AVATAR_TEAM = {}
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
	["1904701"] = { },
	["1904703"] = { },
	["1904705"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904706"] = 
	{ 
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904707"] = { },
	["1904709"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		quest_var = { 1, -1, -1, -1, -1, },
	},
	["1904711"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904712"] = { },
	["1904713"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904708"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
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
	["1904701"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904702_C1904701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904702_C1904701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904702"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904702_C1904701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904702_C1904701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904703"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904704"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904705"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904704_C1904702_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1904706"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904707"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1904708"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904709"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904710"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904711"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904707_C1904704_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904712"] = { },
	["1904713"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904706_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904714"] = { },
	["1904715"] = { },
	["1904716"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
