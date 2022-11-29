-- 任务配置数据开始-----------------------------

main_id = 11022

sub_ids = 
{
	1102201,
	1102202,
	1102203,
	1102207,
	1102204,
	1102205,
	1102206,
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


-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
rewind_data = {}
rewind_data["1102203"] = 
{
    gadgets = {
		{
			id = 70710216,
			alias = "Q11022VisualPuzzle01",
			pos = "Q11022Puzzle",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		},
	},
}

quest_data = 
{
	["1102201"] = {
		npcs = 
		{
			{
				id = 10303,
				alias = "Npc10303",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Gril4",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10302,
				alias = "Npc10302",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Yuren4",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	 },
	["1102202"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022ZL1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10303,
				alias = "Npc10303",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022Girl1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10302,
				alias = "Npc10302",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022Yuren1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1102208"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad2",
				pos = "Q11022Gad2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710216,
				alias = "Q11022VisualPuzzle01",
				pos = "Q11022Puzzle",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710058,
				pos = "Q11022VP",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
				alias = "GuidePuzzle", -- optional default : ""
				scene_id = 3, -- optional default : sceneData.DefaultSceneID
			},
		},
	},
	["1102203"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad2",
				pos = "Q11022Gad2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			-- {
			-- 	id = 70710216,
			-- 	alias = "Q11022VisualPuzzle02",
			-- 	pos = "Q11022Puzzle",
			-- 	scene_id = 3,
			-- 	room_id = 0,
			-- 	data_index = 1,
			-- },
			{
				id = 70710058,
				pos = "Q11022VP",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
				alias = "GuidePuzzle", -- optional default : ""
				scene_id = 3, -- optional default : sceneData.DefaultSceneID
			},
		},
	},
	["1102204"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad3",
				pos = "Q11022Gad3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102205"] = { },
	["1102206"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022ZL3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10303,
				alias = "Npc10303",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022Girl3",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10302,
				alias = "Npc10302",
				script = "Actor/Npc/TempNPC",
				pos = "Q11022Yuren3",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1102207"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q1102207ZL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

