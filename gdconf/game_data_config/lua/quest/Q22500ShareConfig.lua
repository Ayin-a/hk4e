-- 任务配置数据开始-----------------------------

main_id = 22500

sub_ids = 
{
	2250001,
	2250002,
	2250003,
	2250004,
	2250005,
	2250006,
	2250007,
	2250008,
	2250009,
	2250010,
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
			{ "100545,100546", },
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
	["2250001"] = { },
	["2250002"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2250006"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["2250007"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 208301,
				alias = "Npc208301",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500yinger",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250008"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 208301,
				alias = "Npc208301",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500yinger",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250009"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 208301,
				alias = "Npc208301",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500yinger",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250010"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["2250001"] = 
	{
		npcs = 
		{
			{
				id = 207401,
				alias = "Npc207401",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["2250002"] =
	 {
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250003"] = 
	{ 
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250004"] = 
	{ 
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250005"] = 
	{ 
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250006"] = 
	{
		npcs = 
		{
			{
				id = 208301,
				alias = "Npc208301",
				script = "Actor/Npc/TempNPC",
				pos = "Q22500yinger",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["2250007"] = 
	{
		gadgets = 
		{
			{
				id = 70710134,
				alias = "2250007aozhixainggao",
				pos = "Q2250007aozhixianggao",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250008"] = 
	{ 
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2250009"] =
	 {
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	  },
	["2250010"] =
	 { 
		npcs = 
		{
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22500lulu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	 },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

