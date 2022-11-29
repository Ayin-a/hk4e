-- 任务配置数据开始-----------------------------

main_id = 11113

sub_ids = 
{
	1111301,
	1111302,
	1111306,
	1111308,
	1111303,
	1111304,
	1111305,
	1111307,
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
			{ "100683,100685,100682", },
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
			{ "100683,100685,100682", },
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
			{ "100683,100685,100682", },
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
	["1111301"] = { },
	["1111302"] = { },
	["1111303"] = 
	{
		gadgets = 
		{
			{
				id = 70230031,
				alias = "Gadget70230031",
				pos = "Q11113VisualPuzzle01",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230032,
				alias = "Gadget70230032",
				pos = "Q11113VisualPuzzle02",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70230033,
				alias = "Gadget70230033",
				pos = "Q11113VisualPuzzle03",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 70230034,
				alias = "Gadget70230034",
				pos = "Q11113VisualPuzzle04",
				scene_id = 1059,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111304"] = 
	{
		gadgets = 
		{
			{
				id = 70230031,
				alias = "Gadget70230031",
				pos = "Q11113VisualPuzzle01",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230032,
				alias = "Gadget70230032",
				pos = "Q11113VisualPuzzle02",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70230033,
				alias = "Gadget70230033",
				pos = "Q11113VisualPuzzle03",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 70230034,
				alias = "Gadget70230034",
				pos = "Q11113VisualPuzzle04",
				scene_id = 1059,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111305"] = 
	{
		npcs = 
		{
			{
				id = 10359,
				alias = "Npc10359",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Lanxie_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10362,
				alias = "Npc10362",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Zhuming_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10363,
				alias = "Npc10363",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Suyang_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10364,
				alias = "Npc10364",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Laomo_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 4,
			},
		},
		gadgets = 
		{
			{
				id = 70230031,
				alias = "Gadget70230031",
				pos = "Q11113VisualPuzzle01",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230032,
				alias = "Gadget70230032",
				pos = "Q11113VisualPuzzle02",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70230033,
				alias = "Gadget70230033",
				pos = "Q11113VisualPuzzle03",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 70230034,
				alias = "Gadget70230034",
				pos = "Q11113VisualPuzzle04",
				scene_id = 1059,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111306"] = { },
	["1111307"] = { },
	["1111308"] = 
	{
		gadgets = 
		{
			{
				id = 70230031,
				alias = "Gadget70230031",
				pos = "Q11113VisualPuzzle01",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230032,
				alias = "Gadget70230032",
				pos = "Q11113VisualPuzzle02",
				scene_id = 1059,
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
	["1111301"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Hutao_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Laomeng_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10344,
				alias = "Npc10344",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Langge_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11112_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["1111302"] = { },
	["1111303"] = 
	{
		npcs = 
		{
			{
				id = 10366,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Jump",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111304"] = 
	{
		npcs = 
		{
			{
				id = 10349,
				alias = "Npc10349",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Langge_Young_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10350,
				alias = "Npc10350",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Xiaowu_Young_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10351,
				alias = "Npc10351",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Mumu_Young_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10352,
				alias = "Npc10352",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Congzi_Young_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10353,
				alias = "Npc10353",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Laomeng_Young_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 10359,
				alias = "Npc10359",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Lanxie_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 10362,
				alias = "Npc10362",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Zhuming_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 10363,
				alias = "Npc10363",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Suyang_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 8,
			},
			{
				id = 10364,
				alias = "Npc10364",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Laomo_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 9,
			},
		},
	},
	["1111305"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Hutao2_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Laomeng2_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10344,
				alias = "Npc10344",
				script = "Actor/Npc/TempNPC",
				pos = "Q11113_Dungeon_Langge2_Pos",
				scene_id = 1059,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111306"] = 
	{
		gadgets = 
		{
			{
				id = 70230031,
				alias = "Gadget70230031",
				pos = "Q11113VisualPuzzle01",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230032,
				alias = "Gadget70230032",
				pos = "Q11113VisualPuzzle02",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111307"] = 
	{
		npcs = 
		{
			{
				id = 10366,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Player_1_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_HuTao_2_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_HuTao_2_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10344,
				alias = "Npc10344",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_HuTao_2_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111308"] = 
	{
		gadgets = 
		{
			{
				id = 70230033,
				alias = "Gadget70230033",
				pos = "Q11113VisualPuzzle03",
				scene_id = 1059,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70230034,
				alias = "Gadget70230034",
				pos = "Q11113VisualPuzzle04",
				scene_id = 1059,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

