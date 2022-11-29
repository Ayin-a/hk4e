-- 任务配置数据开始-----------------------------

main_id = 72807

sub_ids = 
{
	7280701,
	7280706,
	7280702,
	7280703,
	7280704,
	7280705,
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
	["7280701"] = { },
	["7280702"] = 
	{
		npcs = 
		{
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterJiutiao01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280703"] = 
	{
		npcs = 
		{
			{
				id = 3026,
				alias = "Npc3026",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterGuard01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280704"] = { },
	["7280705"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["7280701"] = 
	{
		npcs = 
		{
			{
				id = 3026,
				alias = "Npc3026",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterGuard01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280702"] = 
	{
		npcs = 
		{
			{
				id = 3026,
				alias = "Npc3026",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterGuard01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = {
			{
				point_id = 1,
				scene_id = 3,
				pos = "LetterGateAvatar"
			},
		},
	},
	["7280703"] = 
	{
		npcs = 
		{
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterJiutiao01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280704"] = 
	{
		npcs = 
		{
			{
				id = 3044,
				alias = "Npc3044",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterFoodBoss01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280705"] = 
	{
		npcs = 
		{
			{
				id = 3086,
				alias = "Npc3086",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterQianli01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["7280706"] = 
	{
		npcs = 
		{
			{
				id = 3054,
				alias = "Npc3054",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "LetterJiutiao01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
