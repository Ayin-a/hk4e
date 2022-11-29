-- 任务配置数据开始-----------------------------

main_id = 19037

sub_ids = 
{
	1903701,
	1903702,
	1903703,
	1903704,
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
			{ "133107232", "", },
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
	["1903701"] = { },
	["1903702"] = { },
	["1903703"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1903701"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_N12319_C1903702",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_C1903702_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1903702"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_N12319_C1903702",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_C1903702_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1626,
				alias = "Npc1626",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N1626",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2444,
				alias = "Npc2444",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N2444",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1903703"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_N12319_C1903702",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_C1903702_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1626,
				alias = "Npc1626",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N1626",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2444,
				alias = "Npc2444",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N2444",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1903704"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12319,
				alias = "Npc12319",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_N12319_C1903702",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12320,
				alias = "Npc12320",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903703_C1903702_N12320",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1626,
				alias = "Npc1626",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N1626",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2444,
				alias = "Npc2444",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_C1903701_N2444",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903701_C1903701_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
