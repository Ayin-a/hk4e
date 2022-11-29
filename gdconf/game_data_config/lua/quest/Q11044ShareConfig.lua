-- 任务配置数据开始-----------------------------

main_id = 11044

sub_ids = 
{
	1104406,
	1104407,
	1104408,
	1104409,
	1104410,
	1104401,
	1104404,
	1104414,
	1104415,
	1104416,
	1104405,
	1104402,
	1104411,
	1104412,
	1104413,
	1104403,
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
	["1104401"] = { 
		npcs = 
		{
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},	
	},
	["1104402"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104403"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104404"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104405"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104406"] = { },
	["1104407"] = { },
	["1104408"] = { },
	["1104409"] = { },
	["1104410"] = { },
	["1104411"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104412"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104413"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104401"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104402"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
		gadgets = 
		{
			{
				id = 70710255,
				alias = "GadgetFind1",
				pos = "Q1104402View",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104403"] = { },
	["1104404"] = { },
	["1104405"] = { },
	["1104406"] = 
	{
		npcs = 
		{
			{
				id = 2003035,
				alias = "Npc2003035",
				script = "Actor/Npc/TempNPC",
				pos = "Q1104406View",
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
				data_index = 1,
			},
		},
	},
	["1104407"] = 
	{
		npcs = 
		{
			{
				id = 2003036,
				alias = "Npc2003036",
				script = "Actor/Npc/TempNPC",
				pos = "Q1104407View",
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
				data_index = 1,
			},
		},
	},
	["1104408"] = 
	{
		npcs = 
		{
			{
				id = 2003037,
				alias = "Npc2003037",
				script = "Actor/Npc/TempNPC",
				pos = "Q1104408View",
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
				data_index = 1,
			},
		},
	},
	["1104409"] = {
		npcs = 
		{
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	 },
	["1104410"] = { 
		npcs = 
		{
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	},
	["1104411"] = 
	{
		gadgets = 
		{
			{
				id = 70710256,
				alias = "GadgetFind2",
				pos = "Q1104411View",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104412"] = {
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104413"] = {
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
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
	["1104414"] = { 
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11044Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104415"] = { },
	["1104416"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

