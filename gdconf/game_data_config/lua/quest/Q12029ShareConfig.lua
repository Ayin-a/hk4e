-- 任务配置数据开始-----------------------------

main_id = 12029

sub_ids = 
{
	1202901,
	1202903,
	1202910,
	1202907,
	1202908,
	1202902,
	1202911,
	1202915,
	1202914,
	1202913,
	1202912,
	1202904,
	1202909,
	1202905,
	1202906,
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
	["1202901"] = { },
	["1202902"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202903"] = { },
	["1202904"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202911_N1034",
				scene_id = 1066,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3032",
				scene_id = 1066,
				room_id = 1,
				data_index = 6,
			},
			{
				id = 12435,
				alias = "Npc12435",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 7,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3033",
				scene_id = 1066,
				room_id = 1,
				data_index = 8,
			},
		},
	},
	["1202905"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202906"] = 
	{
		npcs = 
		{
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202906_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202906_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202906_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202907"] = { },
	["1202908"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202909"] = 
	{
		npcs = 
		{
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1202910"] = { },
	["1202911"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1202901"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202901_T1202901_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1202902"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202902_T1202902_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1202903"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202904"] = 
	{
		npcs = 
		{
			{
				id = 3029,
				alias = "Npc3029",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202901_T1202901_N3029",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1202905"] = {
		npcs = 
		{
			{
				id = 3029,
				alias = "Npc3029",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202901_T1202901_N3029",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3033",
				scene_id = 1066,
				room_id = 1,
				data_index = 3,
			},
		},
	},
	["1202906"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202902_T1202902_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202906_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3029,
				alias = "Npc3029",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202901_T1202901_N3029",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 4,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3033",
				scene_id = 1066,
				room_id = 1,
				data_index = 5,
			},
		},
	},
	["1202907"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202908"] = { },
	["1202909"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202902_T1202902_N1034",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3029,
				alias = "Npc3029",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202901_T1202901_N3029",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 4,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3033",
				scene_id = 1066,
				room_id = 1,
				data_index = 5,
			},
		},
	},
	["1202910"] = 
	{
		npcs = 
		{
			{
				id = 12366,
				alias = "Npc12366",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202903_T1202903_N12366",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12368,
				alias = "Npc12368",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12368",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12405,
				alias = "Npc12405",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202907_N12405",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12369,
				alias = "Npc12369",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202908_N12369",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1202911"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202911_N1034",
				scene_id = 1066,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 3032,
				alias = "Npc3032",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 12435,
				alias = "Npc12435",
				script = "Actor/Npc/TempNPC",
				pos = "Q1202915_N12435",
				scene_id = 1066,
				room_id = 1,
				data_index = 3,
			},
			{
				id = 3033,
				alias = "Npc3033",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1202915_N3033",
				scene_id = 1066,
				room_id = 1,
				data_index = 4,
			},
		},
		gadgets = 
		{
			{
				id = 70710646,
				alias = "Gadget70710646",
				pos = "Q1202911_gadget",
				scene_id = 1066,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1202912"] = { },
	["1202913"] = { },
	["1202914"] = { },
	["1202915"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
