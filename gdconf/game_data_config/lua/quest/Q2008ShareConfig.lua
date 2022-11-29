-- 任务配置数据开始-----------------------------

main_id = 2008

sub_ids = 
{
	200807,
	200805,
	200806,
	200801,
	200802,
	200803,
	200804,
	200808,
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
	["200801"] = { },
	["200803"] = { },
	["200804"] = { },
	["200805"] = { },
	["200806"] = 
	{
		npcs = 
		{
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["200808"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["200801"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q200801paimon",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1036,
				alias = "Npc1036",
				script = "Actor/Npc/TempNPC",
				pos = "Q200801yayi",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12008,
				alias = "Npc12008",
				script = "Actor/Npc/TempNPC",
				pos = "Q200801mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12009,
				alias = "Npc12009",
				script = "Actor/Npc/TempNPC",
				pos = "Q200801mass2",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
		gadgets = 
		{
			{
				id = 70710476,
				alias = "Gadget70710476",
				pos = "Q200801tuoma",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["200802"] = { },
	["200803"] = { },
	["200804"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q2008paimon",
				scene_id = 20112,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 20112,
				pos = "Q2008born",
			},
		},
	},
	["200805"] = { },
	["200806"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q2003paimon",
				scene_id = 1060,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q2003tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["200807"] = { },
	["200808"] = { 
		transmit_points = 
		{
			{
				point_id = 2,
				scene_id = 3,
				pos = "Q200901born",
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
