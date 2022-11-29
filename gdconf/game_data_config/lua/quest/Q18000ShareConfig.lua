-- 任务配置数据开始-----------------------------

main_id = 18000

sub_ids = 
{
	1800001,
	1800002,
	1800003,
	1800004,
	1800005,
	1800006,
	1800007,
	1800008,
	1800009,
	1800010,
	1800018,
	1800021,
	1800011,
	1800028,
	1800012,
	1800013,
	1800014,
	1800015,
	1800016,
	1800017,
	1800019,
	1800022,
	1800023,
	1800024,
	1800025,
	1800026,
	1800020,
	1800029,
	1800027,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133004921", },
			{ "133007903", },
			{ "133004450", },
			{ "133002476", },
		},
	},
}

fail_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133004921", },
			{ "133007903", },
			{ "133004450", },
			{ "133002476", },
		},
	},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133004921", },
			{ "133007903", },
			{ "133004450", },
			{ "133002476", },
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
	["1800001"] = { },
	["1800002"] = { },
	["1800003"] = 
	{
		npcs = 
		{
			{
				id = 143901,
				alias = "Npc143901",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000loruns",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800004"] = { },
	["1800005"] = 
	{
		npcs = 
		{
			{
				id = 146501,
				alias = "Npc146501",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000charles",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1800007"] = { },
	["1800008"] = { },
	["1800009"] = {},
	["1800010"] = { },
	["1800011"] = { },
	["1800016"] = 
	{
		gadgets = 
		{
			{
				id = 70710243,
				alias = "investigate1",
				pos = "Q18000investigate1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710245,
				alias = "investigate3",
				pos = "Q18000investigate3",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800017"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800018"] = { },
	["1800019"] = { },
	["1800020"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 11005,
				alias = "Npc11005",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000Dandelion_Bundle",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1800021"] = { },
	["1800022"] = { },
	["1800024"] = { },
	["1800025"] = { },
	["1800027"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800028"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800029"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 11005,
				alias = "Npc11005",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000Dandelion_Bundle",
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
	["1800001"] = 
	{
		npcs = 
		{
			{
				id = 151201,
				alias = "Npc151201",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000kaiselin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800002"] = 
	{
		npcs = 
		{
			{
				id = 143901,
				alias = "Npc143901",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000loruns",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800003"] = 
	{
		npcs = 
		{
			{
				id = 141701,
				alias = "Npc141701",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000wagena",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800004"] = 
	{
		npcs = 
		{
			{
				id = 146501,
				alias = "Npc146501",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000charles",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1800005"] =
	 {
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800007target",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 102201,
				alias = "Npc102201",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	 },
	["1800006"] = 
	{
		npcs = 
		{
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q1800006paimon",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800007target",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 102201,
				alias = "Npc102201",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1800007"] = 
	{
		npcs = 
		{
			{
				id = 102201,
				alias = "Npc102201",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800007target",
				scene_id = 1009,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["1800008"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800009"] = 
	{
		npcs = 
	   {
		   {
			id = 1022,
			alias = "Npc1022",
			script = "Actor/Npc/TempNPC",
			pos = "Q18000daiyin2",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		   },
     	}, 
    },
	["1800010"] =
	 {
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800017daiyin",
				scene_id = 20103,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1800011"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800012"] =
	 {
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1800013"] = 
	{
		gadgets = 
		{
			{
				id = 70710243,
				alias = "investigate1",
				pos = "Q18000investigate1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800014"] = 
	{
		gadgets = 
		{
			{
				id = 70710245,
				alias = "investigate3",
				pos = "Q18000investigate3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800015"] = { },
	["1800016"] = { },
	["1800017"] = { },
	["1800018"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800017daiyin",
				scene_id = 20103,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800019"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800019target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800020"] = { },
	["1800021"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800017daiyin",
				scene_id = 20103,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1800022"] =
	 {
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800019target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1800023"] = 
	{ 
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q1800019target",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800024"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin4",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800025"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin5",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800026"] = 
	{
		npcs = 
		{
			{
				id = 11005,
				alias = "Npc11005",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000Dandelion_Bundle",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000daiyin5",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1800027"] = { },
	["1800028"] = { },
	["1800029"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

