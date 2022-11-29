-- 任务配置数据开始-----------------------------

main_id = 22021

sub_ids = 
{
	2202101,
	2202102,
	2202103,
	2202104,
	2202105,
	2202106,
	2202107,
	2202108,
	2202109,
	2202110,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = {
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "101521,101522", },
		},
	 },
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
			{ "133220283", "", },
			{ "133220284", "", },
			{ "133220044", "", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "101521,101522", },
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
	["2202101"] = { },
	["2202102"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202103"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202104"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202105"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202106"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202107"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202109"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},

			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},

		},
	},
	["2202110"] = 
	{
		npcs = 
		{
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},

			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},

		},
	},
	["2202108"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
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
	["2202101"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2202102"] = { },
	["2202103"] = { },
	["2202104"] = 
	{
		gadgets = 
		{
			{
				id = 70710447,
				alias = "Gadget70710447",
				pos = "Q22021_Xudong_Fire01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2202105"] = 
	{
		gadgets = 
		{
			{
				id = 70710448,
				alias = "Gadget70710448",
				pos = "Q22021_Wushidashu_Fire01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2202106"] = { },
	["2202107"] = { },
	["2202108"] = { },
	["2202109"] = 
	{
		npcs = 
		{
			{
				id = 20268,
				alias = "Npc20268",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Xudong_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2202110"] = 
	{
		npcs = 
		{
			{
				id = 20271,
				alias = "Npc20271",
				script = "Actor/Npc/TempNPC",
				pos = "Q22021_Wushidashu_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
