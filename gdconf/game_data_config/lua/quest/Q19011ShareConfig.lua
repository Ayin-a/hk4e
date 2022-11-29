-- 任务配置数据开始-----------------------------

main_id = 19011

sub_ids = 
{
	1901101,
	1901102,
	1901103,
	1901104,
	1901105,
	1901106,
	1901107,
	1901108,
	1901109,
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
	["1901101"] = { },
	["1901102"] = { },
	["1901103"] = { },
	["1901104"] = { },
	["1901105"] = { },
	["1901106"] = { },
	["1901107"] = { },
	["1901108"] = { },
	["1901109"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1901101"] = 
	{
		npcs = 
		{
			{
				id = 147101,
				alias = "Npc147101",
				script = "Actor/Npc/TempNPC",
				pos = "NpcFemaleInsomniaStand16Born",
				scene_id = 1008,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1901102"] = 
	{
		npcs = 
		{
			{
				id = 501,
				alias = "Coop_Barbara",
				script = "Actor/Npc/TempNPC",
				pos = "COOP101401Babala05",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10801,
				alias = "Npc1553",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10802,
				alias = "Npc1555",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_02",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10803,
				alias = "Npc1557",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_03",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1901103"] = 
	{
		npcs = 
		{
			{
				id = 10801,
				alias = "Npc1553",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901104"] = 
	{
		npcs = 
		{
			{
				id = 10802,
				alias = "Npc1555",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901105"] = 
	{
		npcs = 
		{
			{
				id = 10803,
				alias = "Npc1557",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "COOP101401_Play_NPC_03",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901106"] = 
	{
		npcs = 
		{
			{
				id = 501,
				alias = "Coop_Barbara",
				script = "Actor/Npc/TempNPC",
				pos = "COOP101401Babala05",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901107"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "COOP101401Babala05",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901108"] = 
	{
		npcs = 
		{
			{
				id = 1008,
				alias = "Barbara",
				script = "Actor/Quest/Q413/Barbara",
				pos = "COOP101401Babala05",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1901109"] = 
	{
		npcs = 
		{
			{
				id = 501,
				alias = "Coop_Barbara",
				script = "Actor/Npc/TempNPC",
				pos = "COOP101401Babala06",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

