-- 任务配置数据开始-----------------------------

main_id = 22116

sub_ids = 
{
	2211601,
	2211602,
	2211603,
	2211604,
	2211605,
	2211606,
	2211609,
	2211610,
	2211611,
	2211613,
	2211607,
	2211612,
	2211614,
	2211608,
	2211615,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104913,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100503,100504,100505", },
		},
	},
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
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104075,1", },
			{ "3", "133104913,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100503,100504,100505", },
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
	["2211601"] = { },
	["2211602"] = { },
	["2211603"] = { },
	["2211604"] = { },
	["2211605"] = { },
	["2211606"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211607"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211608"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211609"] = { },
	["2211610"] = 
	{
		npcs = 
		{
			{
				id = 203701,
				alias = "Npc203701",
				script = "Actor/Npc/TempNPC",
				pos = "Q22116Chaoxi",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 207601,
				alias = "Npc207601",
				script = "Actor/Npc/TempNPC",
				pos = "Q22116Sisi",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211611"] = 
	{
		npcs = 
		{
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2074,
				alias = "Npc2074",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["2211612"] = { },
	["2211613"] = { },
	["2211614"] = { },
	["2211615"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["2211601"] = { },
	["2211602"] = { },
	["2211603"] = { },
	["2211604"] = { },
	["2211605"] = { },
	["2211606"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211607"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211608"] = 
	{
		npcs = 
		{
			{
				id = 162401,
				alias = "Npc162401",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q22116Battle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211609"] = { },
	["2211610"] = 
	{
		npcs = 
		{
			{
				id = 203701,
				alias = "Npc203701",
				script = "Actor/Npc/TempNPC",
				pos = "Q22116Chaoxi",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 207601,
				alias = "Npc207601",
				script = "Actor/Npc/TempNPC",
				pos = "Q22116Sisi",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["2211611"] = 
	{
		npcs = 
		{
			{
				id = 2031,
				alias = "Npc2031",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000MengSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2074,
				alias = "Npc2074",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000LuluSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2030,
				alias = "Npc2030",
				script = "Actor/Npc/TempNPC",
				pos = "Q22000FeiSpawn",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["2211612"] = { },
	["2211613"] = { },
	["2211614"] = { },
	["2211615"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

