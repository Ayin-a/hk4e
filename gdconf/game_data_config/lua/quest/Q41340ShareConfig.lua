-- 任务配置数据开始-----------------------------

main_id = 41340

sub_ids = 
{
	4134014,
	4134001,
	4134002,
	4134003,
	4134004,
	4134005,
	4134006,
	4134007,
	4134008,
	4134009,
	4134010,
	4134011,
	4134013,
	4134012,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100726", },
		},
	},
}

fail_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100726", },
		},
	},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100726", },
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
	["4134001"] = { },
	["4134002"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134006"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 200101,
				alias = "Npc200101",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4134007"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 200101,
				alias = "Npc200101",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4134008"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134009"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134010"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134011"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134013"] = { },
	["4134014"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4134001"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134001agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134002"] = 
	{
		npcs = 
		{
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 200101,
				alias = "Npc200101",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4134003"] = {
		npcs = 
		{
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 200101,
				alias = "Npc200101",
				script = "Actor/Npc/TempNPC",
				pos = "Q41340zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	 },
	["4134004"] = { },
	["4134005"] = { },
	["4134006"] = { },
	["4134007"] ={},
	["4134008"] = { },
	["4134009"] = { },
	["4134010"] = { },
	["4134011"] = { },
	["4134012"] = { },
	["4134013"] = 
	{
		npcs = 
		{
			{
				id = 210301,
				alias = "Npc210301",
				script = "Actor/Npc/TempNPC",
				pos = "Q4134012agui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 70800017,
				alias = "Gadget70800017",
				pos = "Q41340lamp",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4134014"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

