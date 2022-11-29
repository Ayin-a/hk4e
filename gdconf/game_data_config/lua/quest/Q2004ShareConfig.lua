-- 任务配置数据开始-----------------------------

main_id = 2004

sub_ids = 
{
	200401,
	200406,
	200407,
	200408,
	200402,
	200403,
	200404,
	200405,
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
	["200401"] = { },
	["200402"] = { },
	["200403"] = { },
	["200404"] = 
	{
		gadgets = 
		{
			{
				id = 70700006,
				alias = "Gadget70700006",
				pos = "Q200402task3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["200405"] = { },
	["200406"] = 
	{
		npcs = 
		{
			{
				id = 3129,
				alias = "Npc3129",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200401syr1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12040,
				alias = "Npc12040",
				script = "Actor/Npc/TempNPC",
				pos = "Q200406mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12041,
				alias = "Npc12041",
				script = "Actor/Npc/TempNPC",
				pos = "Q200407mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["200407"] = 
	{
		npcs = 
		{
			{
				id = 3129,
				alias = "Npc3129",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200401syr1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12040,
				alias = "Npc12040",
				script = "Actor/Npc/TempNPC",
				pos = "Q200406mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12041,
				alias = "Npc12041",
				script = "Actor/Npc/TempNPC",
				pos = "Q200407mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["200408"] = 
	{
		npcs = 
		{
			{
				id = 12040,
				alias = "Npc12040",
				script = "Actor/Npc/TempNPC",
				pos = "Q200406mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12041,
				alias = "Npc12041",
				script = "Actor/Npc/TempNPC",
				pos = "Q200407mass1",
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
	["200401"] = 
	{
		npcs = 
		{
			{
				id = 3129,
				alias = "Npc3129",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200401syr1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12040,
				alias = "Npc12040",
				script = "Actor/Npc/TempNPC",
				pos = "Q200406mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12041,
				alias = "Npc12041",
				script = "Actor/Npc/TempNPC",
				pos = "Q200407mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["200402"] = 
	{
		npcs = 
		{
			{
				id = 12018,
				alias = "Npc12018",
				script = "Actor/Npc/TempNPC",
				pos = "Q200402task1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 70710136,
				alias = "Gadget70710136",
				pos = "Q200402task1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70360089,
				alias = "Gadget70360089",
				pos = "Q200402task1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["200403"] = 
	{
		npcs = 
		{
			{
				id = 12019,
				alias = "Npc12019",
				script = "Actor/Npc/TempNPC",
				pos = "Q200402task2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 70710465,
				alias = "Gadget70710465",
				pos = "Q200402gadget",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70360089,
				alias = "Gadget70360089",
				pos = "Q200402gadget",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["200404"] = 
	{
		npcs = 
		{
			{
				id = 12020,
				alias = "Npc12020",
				script = "Actor/Npc/TempNPC",
				pos = "Q200402task3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 70700006,
				alias = "Gadget70700006",
				pos = "Q200402task3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710483,
				alias = "Gadget7707104831",
				pos = "Q200402stone1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70710483,
				alias = "Gadget707104832",
				pos = "Q200402stone2",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 70710483,
				alias = "Gadget707104833",
				pos = "Q200402stone3",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 70710433,
				alias = "Gadget70710433",
				pos = "Q200402stone1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 70710434,
				alias = "Gadget70710434",
				pos = "Q200402stone2",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["200405"] = 
	{
		npcs = 
		{
			{
				id = 3129,
				alias = "Npc3129",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200405SYR1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["200406"] = { },
	["200407"] = { },
	["200408"] = 
	{
		npcs = 
		{
			{
				id = 3129,
				alias = "Npc3129",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q200401syr1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
