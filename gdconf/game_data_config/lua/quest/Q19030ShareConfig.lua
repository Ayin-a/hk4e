-- 任务配置数据开始-----------------------------

main_id = 19030

sub_ids = 
{
	1903001,
	1903002,
	1903007,
	1903003,
	1903004,
	1903005,
	1903006,
	1903008,
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
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133102924,1", },
			{ "3", "133102926,1", },
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
	["1903001"] = { },
	["1903002"] = { },
	["1903003"] = { },
	["1903004"] = { },
	["1903005"] = { },
	["1903006"] = { },
	["1903007"] = {},
	["1903008"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1903001"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903001Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10917,
				alias = "Npc10917",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903001male",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1903002"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903002Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903007"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903002Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903003"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903003Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10903,
				alias = "Npc10903",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903003male",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10904,
				alias = "Npc10904",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903003female",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1903004"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903004Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10913,
				alias = "Npc10913",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903004Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1903005"] = 
	{
		npcs = 
		{
			{
				id = 10908,
				alias = "Npc10908",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903005male",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10909,
				alias = "Npc10909",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903005female",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903004Cy",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1903006"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903101cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1903007"] = { },
	["1903008"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1903101cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
