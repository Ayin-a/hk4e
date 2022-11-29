-- 任务配置数据开始-----------------------------

main_id = 41410

sub_ids = 
{
	4141001,
	4141003,
	4141004,
	4141005,
	4141007,
	4141009,
	4141010,
	4141011,
	4141012,
	4141013,
	4141014,
	4141015,
	4141017,
	4141016,
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
	["4141001"] = { },
	["4141007"] = { },
	["4141009"] = { },
	["4141010"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141010Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141015"] = {
		npcs = 
		{
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},

		quest_var = {
			-1,-1,-1,-1,-1
		},
	},
	["4141016"] = {
		npcs = 
		{
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},

		quest_var = {
			-1,-1,-1,-1,-1
		},
	},
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4141001"] = { },
	["4141003"] = { },
	["4141004"] = { },
	["4141005"] = { },
	["4141007"] = { },
	["4141009"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141010Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141010"] = { },
	["4141011"] = 
	{
		npcs = 
		{
			{
				id = 160701,
				alias = "Npc160701",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141011NPC",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141012"] = 
	{
		npcs = 
		{
			{
				id = 160501,
				alias = "Npc160501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141012NPC",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141013"] = 
	{
		npcs = 
		{
			{
				id = 160201,
				alias = "Npc160201",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141013NPC",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141014"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141010Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141015"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141010Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},

	["4141017"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141010Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1028,
				alias = "Npc1028",
				script = "Actor/Npc/TempNPC",
				pos = "Q4141009Bennet",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},

	["4141016"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141016Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

