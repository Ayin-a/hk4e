-- 任务配置数据开始-----------------------------

main_id = 2015

sub_ids = 
{
	201501,
	201502,
	201503,
	201504,
	201505,
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
	["201501"] = { },
	["201502"] = 
	{
		npcs = 
		{
			{
				id = 12072,
				alias = "Npc12072",
				script = "Actor/Npc/TempNPC",
				pos = "Q201407Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201503"] = { },
	["201504"] = { },
	["201505"] = 
	{
		npcs = 
		{
			{
				id = 12296,
				alias = "Npc12296",
				script = "Actor/Npc/TempNPC",
				pos = "Q201504_letter",
				scene_id = 20113,
				room_id = 1,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 71700323,
				alias = "Gadget71700323",
				pos = "Q201504_letter",
				scene_id = 20113,
				room_id = 1,
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
	["201501"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201501Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12072,
				alias = "Npc12072",
				script = "Actor/Npc/TempNPC",
				pos = "Q201407Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3146,
				alias = "Npc3146",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201501Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1039,
				alias = "Npc1039",
				script = "Actor/Npc/TempNPC",
				pos = "Q201501Wulang",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["201502"] = 
	{
		npcs = 
		{
			{
				id = 3146,
				alias = "Npc3146",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201501Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201503"] = { },
	["201504"] = 
	{
		npcs = 
		{
			{
				id = 10013,
				alias = "Npc10013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201504Sanbing",
				scene_id = 20113,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 12296,
				alias = "Npc12296",
				script = "Actor/Npc/TempNPC",
				pos = "Q201504_letter",
				scene_id = 20113,
				room_id = 1,
				data_index = 2,
			},
		},
		gadgets = 
		{
			{
				id = 71700323,
				alias = "Gadget71700323",
				pos = "Q201504_letter",
				scene_id = 20113,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["201505"] = 
	{
		npcs = 
		{
			{
				id = 10013,
				alias = "Npc10013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201504Sanbing",
				scene_id = 20113,
				room_id = 1,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
