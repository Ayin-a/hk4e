-- 任务配置数据开始-----------------------------

main_id = 11042

sub_ids = 
{
	1104201,
	1104202,
	1104203,
	1104204,
	1104208,
	1104209,
	1104212,
	1104213,
	1104214,
	1104215,
	1104210,
	1104211,
	1104205,
	1104206,
	1104216,
	1104207,
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
	["1104201"] = { },
	["1104202"] = { },
	["1104203"] = { },
	["1104204"] = { },
	["1104205"] = { },
	["1104206"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1104207"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1104208"] = { },
	["1104209"] = { },
	["1104210"] = { },
	["1104211"] = { },
	["1104212"] = { },
	["1104213"] = { },
	["1104214"] = { },
	["1104215"] = { },
	["1104216"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
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
	["1104201"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104202"] = {
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1104203"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104204"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Stonemark01",
				pos = "Q1104204Mark",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104205"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042Albedo3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11045DMWS01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1104206"] = 
	{
		gadgets = 
		{
			{
				id = 70710229,
				alias = "DrugAlbedo",
				pos = "Q11042Drug",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104207"] = { },
	["1104208"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Stonemark02",
				pos = "Q1104208Mark",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104209"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Stonemark03",
				pos = "Q1104209Mark",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104210"] = { },
	["1104211"] = { },
	["1104212"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Stonemark04",
				pos = "Q1104212Mark",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104213"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Stonemark05",
				pos = "Q1104213Mark",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104214"] = { },
	["1104215"] = { },
	["1104216"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

