-- 任务配置数据开始-----------------------------

main_id = 12028

sub_ids = 
{
	1202801,
	1202802,
	1202803,
	1202809,
	1202810,
	1202804,
	1202805,
	1202806,
	1202807,
	1202808,
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
	["1202801"] = { },
	["1202802"] = 
	{
		npcs = 
		{
			{
				id = 12358,
				alias = "Npc12358",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12358_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12359,
				alias = "Npc12359",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12359_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12436,
				alias = "Npc12436",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12436",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12437,
				alias = "Npc12437",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12437",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12438,
				alias = "Npc12438",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12438",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12439,
				alias = "Npc12439",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12439",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12440,
				alias = "Npc12440",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12440",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
	["1202803"] = 
	{
		npcs = 
		{
			{
				id = 12358,
				alias = "Npc12358",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12358_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12360",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12359,
				alias = "Npc12359",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12359_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12361",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12436,
				alias = "Npc12436",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12436",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12437,
				alias = "Npc12437",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12437",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12438,
				alias = "Npc12438",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12438",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12439,
				alias = "Npc12439",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12439",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12440,
				alias = "Npc12440",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12440",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
	["1202804"] = 
	{
		npcs = 
		{
			{
				id = 12415,
				alias = "Npc12415",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202804_T1202804_N3094",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1202805"] = { },
	["1202806"] = 
	{
		npcs = 
		{
			{
				id = 12416,
				alias = "Npc12416",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202804_N10000005",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1202807"] = 
	{
		npcs = 
		{
			{
				id = 12363,
				alias = "Npc12363",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202807_N12363",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12362,
				alias = "Npc12362",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202806_T1202806_N12362",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202808"] = { },
	["1202809"] = 
	{
		npcs = 
		{
			{
				id = 12358,
				alias = "Npc12358",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12358_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12360",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12359,
				alias = "Npc12359",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12359_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12361",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202810"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1202801"] = 
	{
		npcs = 
		{
			{
				id = 12358,
				alias = "Npc12358",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12358_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12359,
				alias = "Npc12359",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12359_T1202801",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12436,
				alias = "Npc12436",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12436",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12437,
				alias = "Npc12437",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12437",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12438,
				alias = "Npc12438",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12438",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12439,
				alias = "Npc12439",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12439",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12440,
				alias = "Npc12440",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12440",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
	["1202802"] = 
	{
		npcs = 
		{
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12360",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202802_T1202802_N12361",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202803"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12362,
				alias = "Npc12362",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N12362",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12436,
				alias = "Npc12436",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12436",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12437,
				alias = "Npc12437",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12437",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12438,
				alias = "Npc12438",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12438",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12439,
				alias = "Npc12439",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12439",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12440,
				alias = "Npc12440",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202801_N12440",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
	["1202804"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12416,
				alias = "Npc12416",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202804_N10000005",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202805"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 70710584,
				alias = "Gadget70710584",
				pos = "Q1202805Target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1202806"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12363,
				alias = "Npc12363",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202806_T1202806_N12363",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202807"] = 	{
		npcs = 
		{
			{
				id = 12363,
				alias = "Npc12363",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202806_T1202806_N12363",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},

	},
	["1202808"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12363,
				alias = "Npc12363",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202806_T1202806_N12363",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3029,
				alias = "Npc3029",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q1202806_T1202806_N10000005",
			},
		},
	},
	["1202809"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12362,
				alias = "Npc12362",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202809_N10000005",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202810"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202803_T1202803_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12415,
				alias = "Npc12415",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202804_T1202804_N3094",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
