-- 任务配置数据开始-----------------------------

main_id = 11112

sub_ids = 
{
	1111201,
	1111202,
	1111222,
	1111203,
	1111204,
	1111205,
	1111225,
	1111206,
	1111209,
	1111223,
	1111224,
	1111208,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100684", },
		},
	},
}

fail_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100683,100685,100682,100684", },
		},
	},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100683,100685,100682,100684", },
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
	["1111201"] = { },
	["1111202"] = { },
	["1111203"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111204"] = { },
	["1111205"] = { },
	["1111206"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111208"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111222"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111225"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1111201"] = 
	{
		npcs = 
		{
			{
				id = 10366,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Wangsheng_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Wangsheng_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Wangsheng_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10344,
				alias = "Npc10344",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Wangsheng_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111202"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111203"] = { },
	["1111204"] = 
	{
		npcs = 
		{
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111205"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111206"] = { },
	["1111208"] = { },
	["1111209"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111222"] = { },
	["1111223"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111224"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111225"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

