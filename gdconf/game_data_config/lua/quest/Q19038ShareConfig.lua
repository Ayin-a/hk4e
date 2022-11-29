-- 任务配置数据开始-----------------------------

main_id = 19038

sub_ids = 
{
	1903801,
	1903802,
	1903803,
	1903804,
	1903805,
	1903807,
	1903806,
	1903812,
	1903813,
	1903808,
	1903809,
	1903811,
	1903810,
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
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "101671", },
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
	["1903801"] = { },
	["1903806"] = { },
	["1903807"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903808"] = { },
	["1903809"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1903811"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903812"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1903801"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1903802"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1903803"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12413,
				alias = "Npc12413",
				script = "Actor/Npc/YunjinCoopSneakAI2",
				pos = "Q1903801_T1903801_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12412,
				alias = "Npc12412",
				script = "Actor/Npc/YunjinCoopSneakAI1",
				pos = "Q1903801_T1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1903804"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1903805"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_T1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1903806"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1903807"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903808"] = 
	{
		npcs = 
		{
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12319",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903806_C1903802_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1903809"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903810"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1903811"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903812"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12318,
				alias = "Npc12318",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903801_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1903813"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
