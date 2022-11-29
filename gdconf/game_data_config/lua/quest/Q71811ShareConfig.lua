-- 任务配置数据开始-----------------------------

main_id = 71811

sub_ids = 
{
	7181101,
	7181102,
	7181103,
	7181104,
	7181105,
	7181106,
	7181107,
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
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100707", },
			{ "100708", },
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
			{ "100707", },
			{ "100708", },
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
	["7181101"] = { },
	["7181102"] = { },
	["7181106"] =
	 { 
		npcs = 
		{
			{
				id = 201001,
				alias = "Npc201001",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811liusu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 209201,
				alias = "Npc209201",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811GrannyShan",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["7181107"] =
	 {
		npcs = 
		{
			{
				id = 201001,
				alias = "Npc201001",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811liusu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 209201,
				alias = "Npc209201",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811GrannyShan",
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
	["7181101"] = { },
	["7181102"] = { },
	["7181103"] = 
	{
		npcs = 
		{
			{
				id = 201001,
				alias = "Npc201001",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811liusu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 209201,
				alias = "Npc209201",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811GrannyShan",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["7181104"] = { },
	["7181105"] = { },
	["7181106"] = 
	{
		npcs = 
		{
			{
				id = 201001,
				alias = "Npc201001",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811liusu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 209201,
				alias = "Npc209201",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811GrannyShan",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["7181107"] = 
	{
		npcs = 
		{
			{
				id = 201001,
				alias = "Npc201001",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811liusu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 209201,
				alias = "Npc209201",
				script = "Actor/Npc/TempNPC",
				pos = "Q71811GrannyShan",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

