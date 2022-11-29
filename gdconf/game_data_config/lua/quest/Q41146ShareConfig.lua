-- 任务配置数据开始-----------------------------

main_id = 41146

sub_ids =
{
	4114604,
	4114601,
	4114602,
	4114603,
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
			{ "100652", },
		},
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP =
		{
			{ "133004435", },
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
	["4114601"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4114603"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
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
	["4114601"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1579,
				alias = "Npc1579",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4114602"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1579,
				alias = "Npc1579",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4114603"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1579,
				alias = "Npc1579",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4114604"] =
	{
		npcs =
		{
			{
				id = 157901,
				alias = "Npc157901",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1579,
				alias = "Npc1579",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41146_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
