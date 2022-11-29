-- 任务配置数据开始-----------------------------

main_id = 41143

sub_ids =
{
	4114304,
	4114301,
	4114302,
	4114303,
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
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM =
		{
			{ "100649", },
		},
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP =
		{
			{ "133002419", },
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
	["4114301"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4114303"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
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
	["4114301"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4114302"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4114303"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4114304"] =
	{
		npcs =
		{
			{
				id = 1576,
				alias = "Npc1576",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41143_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
