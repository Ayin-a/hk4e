-- 任务配置数据开始-----------------------------

main_id = 19040

sub_ids = 
{
	1904001,
	1904002,
	1904003,
	1904009,
	1904012,
	1904011,
	1904010,
	1904004,
	1904008,
	1904005,
	1904006,
	1904007,
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
	["1904001"] = { },
	["1904003"] = { },
	["1904004"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1904006"] = { },
	["1904008"] = { },
	["1904009"] = { },
	["1904010"] = { },
	["1904011"] = { },
	["1904012"] = { },
	["1904007"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904007_C1904003_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
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
	["1904001"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904002_C1904001_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904002_C1904001_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904002"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904002_C1904001_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904002_C1904001_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904003"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2044,
				alias = "Npc2044",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "C1904003_N2044",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1904004"] = 
	{
		npcs = 
		{
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904005"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904008_Yunjin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904008_Yunjin",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904006"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904007_C1904003_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904007_C1904003_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904007"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904007_C1904003_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904007_C1904003_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904008"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904008_Yunjin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12426,
				alias = "Npc12426",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904008_Photo",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904008_Yunjin",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1904009"] = 
	{
		npcs = 
		{
			{
				id = 509,
				alias = "Coop_Yunjin",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1046,
				alias = "Npc1046",
				script = "Actor/Npc/TempNPC",
				pos = "Q1904009_N509",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1904010"] = { },
	["1904011"] = { },
	["1904012"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
