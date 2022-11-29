-- 任务配置数据开始-----------------------------

main_id = 40015

sub_ids = 
{
	4001501,
	4001502,
	4001504,
	4001503,
	4001520,
	4001530,
	4001516,
	4001505,
	4001521,
	4001506,
	4001507,
	4001522,
	4001523,
	4001524,
	4001525,
	4001526,
	4001527,
	4001528,
	4001508,
	4001509,
	4001510,
	4001511,
	4001512,
	4001513,
	4001514,
	4001515,
	4001518,
	4001519,
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
		QUEST_EXEC_UNLOCK_AVATAR_TEAM = 
		{
			{ },
		},
		QUEST_EXEC_REMOVE_TRIAL_AVATAR = 
		{
			{ "13", }, --删除试用角色
		},
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133107177", "", }, --卸载对决场景
			{ "133107187", "", }, --卸载对决空气墙
			{ "133107182", "", }, --卸载比赛上的菜品
		},
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133107181,3", }, --把锅巴雕像刷回空
			{ "3", "133107010,1", }, --把大世界刷回香炉
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
	["4001501"] = { },
	["4001502"] = { },
	["4001503"] = { },
	["4001504"] = { },
	["4001505"] = { },
	["4001506"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2204,
				alias = "Npc2204",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001508YX",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 2003,
				alias = "Npc2003",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001509TS",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 9,
			},
		},
	},
	["4001508"] = 
	{
		npcs = 
		{
			-- {
			-- 	id = 1012,
			-- 	alias = "Xiangling",
			-- 	script = "Actor/Npc/TempNPC",
			-- 	pos = "Q4001508XL",
			-- 	scene_id = 3,
			-- 	room_id = 0,
			-- 	data_index = 1,
			-- },
			{
				id = 2204,
				alias = "Npc2204",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001508YX",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2003,
				alias = "Npc2003",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001509TS",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
	},
	["4001509"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001508XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2204,
				alias = "Npc2204",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001509YX",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001508GB",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["4001510"] = { },
	["4001511"] = { },
	["4001512"] = { },
	["4001513"] = 
	{
		npcs = 
		{
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001514"] = 
	{
		npcs = 
		{
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001515"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512GB",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001518"] = { },
	["4001519"] = { },
	["4001520"] = { },
	["4001530"] = {
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001520XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001507"] = 
	{
		npcs = 
		{
			{
				id = 2204,
				alias = "Npc2204",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001508YX",
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
	["4001501"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001501XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001502"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001503XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001502XY",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1031,
				alias = "Npc1031",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001503BD",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001503"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001504XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001504"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001504XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10204,
				alias = "Xiao",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001504Xiao",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q4001504PM",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001505"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2204,
				alias = "Npc2204",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001508YX",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001521Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 2003,
				alias = "Npc2003",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001509TS",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
	},
	["4001506"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q4001506XL",
			},
		},
	},
	["4001507"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q4001506PM",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 9,
			},
		},
	},
	["4001508"] = 
	{
		npcs = 
		{
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001508XL",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["4001509"] = 
	{
		npcs = 
		{
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001510KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001510"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001510XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001510KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4001511"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001510XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
		gadgets = 
		{
			{
				id = 70710430,
				alias = "Gadget70710430",
				pos = "Q4001418Gadget",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001512"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q4001512PM",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001513"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001514"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001512GB",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4001515"] = 
	{
		npcs = 
		{
			{
				id = 2093,
				alias = "Npc2093",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q4001515PLL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001516"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001401XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001518"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001401XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001519ZL",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4001519"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001401XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001519ZL",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001519GB",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001520"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001520XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4001521"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001521Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["4001522"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
		gadgets = 
		{
			{
				id = 70710461,
				alias = "Gadget70710461",
				pos = "Q40015Salt",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710462,
				alias = "Gadget70710462",
				pos = "Q40015Sugar",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70710463,
				alias = "Gadget70710463",
				pos = "Q40015Pepper",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001523"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
	},
	["4001524"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
		gadgets = 
		{
			{
				id = 70710461,
				alias = "Gadget70710461",
				pos = "Q40015Salt",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710462,
				alias = "Gadget70710462",
				pos = "Q40015Sugar",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70710463,
				alias = "Gadget70710463",
				pos = "Q40015Pepper",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001525"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
	},
	["4001526"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
		gadgets = 
		{
			{
				id = 70710461,
				alias = "Gadget70710461",
				pos = "Q40015Salt",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710462,
				alias = "Gadget70710462",
				pos = "Q40015Sugar",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70710463,
				alias = "Gadget70710463",
				pos = "Q40015Pepper",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4001527"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
	},
	["4001528"] = 
	{
		npcs = 
		{
			{
				id = 1012,
				alias = "Xiangling",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506XL",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1016,
				alias = "Npc1016",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509KQ",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1030,
				alias = "Npc1030",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509Yanfei",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10211,
				alias = "Npc10211",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001509NG",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1025,
				alias = "Npc1025",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1026,
				alias = "Npc1026",
				script = "Actor/Npc/TempNPC",
				pos = "Q4001506PL",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 1043,
				alias = "Npc1043",
				script = "Actor/Npc/TempNPC",
				pos = "Q40015GoobaStart",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
			{
				id = 2201, --江雪
				alias = "Npc2201",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q40015jiangxue",
				scene_id = 3,
				room_id = 0,
				data_index = 8,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q4001506PL",
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
