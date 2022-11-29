-- 任务配置数据开始-----------------------------

main_id = 41150

sub_ids =
{
	4115004,
	4115001,
	4115002,
	4115003,
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
			{ "100656", },
		},
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP =
		{
			{ "133104916", },
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
	["4115001"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4115003"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
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
	["4115001"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4115002"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4115003"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4115004"] =
	{
		npcs =
		{
			{
				id = 30027,
				alias = "Npc30027",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41150_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
