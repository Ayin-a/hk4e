-- 任务配置数据开始-----------------------------

main_id = 2014

sub_ids = 
{
	201401,
	201402,
	201403,
	201404,
	201405,
	201406,
	201407,
	201408,
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
	["201401"] = { },
	["201405"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		avatar = 
		{
			offline_dungeon_id = 0,
			scene_id = 3,
			pos = "Q201402Player",
		},
	},
	["201406"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201407"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1039,
				alias = "Npc1039",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Dajiu",
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
	["201401"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201402"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201403"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201404"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201405"] = 
	{
		npcs = 
		{
			{
				id = 12071,
				alias = "Npc12071",
				script = "Actor/Npc/TempNPC",
				pos = "Q201403Target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201406"] = 
	{
		npcs = 
		{
			{
				id = 12071,
				alias = "Npc12071",
				script = "Actor/Npc/TempNPC",
				pos = "Q201407Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1039,
				alias = "Npc1039",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Dajiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201407"] = 
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
			{
				id = 3146,
				alias = "Npc3146",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201407Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201408"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
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
				pos = "Q201407Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
		gadgets = 
		{
			{
				id = 70710504,
				alias = "Gadget70710504",
				pos = "Q201011_Xieyan",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
