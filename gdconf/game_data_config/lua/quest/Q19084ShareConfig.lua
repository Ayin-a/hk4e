-- 任务配置数据开始-----------------------------

main_id = 19084

sub_ids = 
{
	1908408,
	1908401,
	1908410,
	1908411,
	1908412,
	1908402,
	1908403,
	1908405,
	1908406,
	1908407,
	1908409,
	1908404,
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
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133107953", "", },
		},
		QUEST_EXEC_REMOVE_TRIAL_AVATAR = 
		{
			{ "500", },
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
	["1908401"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908403"] = { },
	["1908405"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908404tiantiezui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908406"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908404tiantiezui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908407"] = { },
	["1908408"] = { },
	["1908409"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 204701,
				alias = "Npc204701",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908409zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908409guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1908410"] = { },
	["1908412"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1908401"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2034,
				alias = "Npc2034",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2035,
				alias = "Npc2035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1908402"] = { },
	["1908403"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908403Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908403tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908404"] = { },
	["1908405"] = { },
	["1908406"] = { },
	["1908407"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 204701,
				alias = "Npc204701",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908409zhihua",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 203601,
				alias = "Npc203601",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908409guanhai",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 2034,
				alias = "Npc2034",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2035,
				alias = "Npc2035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
	},
	["1908408"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2034,
				alias = "Npc2034",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2035,
				alias = "Npc2035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1908409"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2034,
				alias = "Npc2034",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2035,
				alias = "Npc2035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1908410"] = 
	{
		npcs = 
		{
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908401tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2034,
				alias = "Npc2034",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2035,
				alias = "Npc2035",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1908401player",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1908411"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908403Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 214801,
				alias = "Npc214801",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908403tiantiezhui",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908412"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
