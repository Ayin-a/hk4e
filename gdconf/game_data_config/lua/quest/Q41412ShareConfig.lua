-- 任务配置数据开始-----------------------------

main_id = 41412

sub_ids = 
{
	4141201,
	4141202,
	4141203,
	4141204,
	4141205,
	4141206,
	4141207,
	4141209,
	4141208,
	4141214,
	4141210,
	4141211,
	4141212,
	4141213,
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
	SERVER = {
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100762", },
		},
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133003922", },
			{ "133003923", },
			{ "133001926", },
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
	["4141201"] = { },
	["4141202"] = 
	{
		npcs = 
		{
			{
				id = 1019,
				alias = "Npc1019",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141201Sucrose",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141203"] = 
	{
		npcs = 
		{
			{
				id = 1019,
				alias = "Npc1019",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141201Sucrose",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141202Albedo",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141204"] = 
	{
		npcs = 
		{
			{
				id = 1019,
				alias = "Npc1019",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141201Sucrose",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141205"] = 
	{
		npcs = 
		{
			{
				id = 1019,
				alias = "Npc1019",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141201Sucrose",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141206"] = { },
	["4141207"] = { },
	["4141208"] = { 
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141209"] = { },
	["4141210"] = { },
	["4141211"] = { 
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141211Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141211Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141212"] = { },
	["4141213"] = { },
	["4141214"] = {	},
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4141201"] = 
	{
		npcs = 
		{
			{
				id = 1019,
				alias = "Npc1019",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141201Sucrose",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141201Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141202"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141202Albedo",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141202Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141203"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141202Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141204"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141202Albedo",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141202Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},

		gadgets = 
		{
			{
				id = 71700201,
				alias = "Gadget71700201",
				pos = "Q4141204Gadget",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141205"] =
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141201Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 71700201,
				alias = "Gadget71700201",
				pos = "Q4141205Gadget",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141206"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "Q4141206Barbara",
				scene_id = 1008,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1020,
				alias = "Npc1020",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141206Rosaria",
				scene_id = 1008,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141206Venti",
				scene_id = 1008,
				room_id = 1,
				data_index = 3,
			},
		},
	},
	["4141207"] = 
	{
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141208"] = {
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141209"] = {
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141210"] = {
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141211"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		-- npcs = 
		-- {
		-- 	{
		-- 		id = 1011,
		-- 		alias = "Razor",
		-- 		script = "Actor/Npc/TempNPC",
		-- 		pos = "Q4141211Razor",
		-- 		scene_id = 3,
		-- 		room_id = 0,
		-- 		data_index = 1,
		-- 	},
		-- 	{
		-- 		id = 1028,
		-- 		alias = "Npc1028",
		-- 		script = "Actor/Npc/TempNPC",
		-- 		pos = "Q4141211Bennett",
		-- 		scene_id = 3,
		-- 		room_id = 0,
		-- 		data_index = 2,
		-- 	},
		-- },
	},
	["4141212"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141213Venti",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["4141213"] = 
	{
		npcs = 
		{
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141213Kaeya",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1009,
				alias = "Diluc",
				script = "Actor/Quest/Q376/Diluc",
				pos = "Q4141213Diluc",
				scene_id = 1009,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1020,
				alias = "Npc1020",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141213Rosaria",
				scene_id = 1009,
				room_id = 1,
				data_index = 3,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141213Venti",
				scene_id = 1009,
				room_id = 1,
				data_index = 4,
			},
		},
	},
	["4141214"] = {
		npcs = 
		{
			{
				id = 1011,
				alias = "Razor",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Razor",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141207Bennett",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141207Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4141216"] = 
	{
		npcs = 
		{
			{
				id = 1004,
				alias = "Gaia",
				script = "Actor/Quest/Q301/Gaia301",
				pos = "Q4141213Kaeya",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1009,
				alias = "Diluc",
				script = "Actor/Quest/Q376/Diluc",
				pos = "Q4141213Diluc",
				scene_id = 1009,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1020,
				alias = "Npc1020",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141213Rosaria",
				scene_id = 1009,
				room_id = 1,
				data_index = 3,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141213Venti",
				scene_id = 1009,
				room_id = 1,
				data_index = 4,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

