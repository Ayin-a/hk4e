-- 任务配置数据开始-----------------------------

main_id = 41334

sub_ids = 
{
	4133426,
	4133401,
	4133411,
	4133423,
	4133402,
	4133403,
	4133404,
	4133405,
	4133406,
	4133410,
	4133408,
	4133409,
	4133425,
	4133412,
	4133413,
	4133414,
	4133415,
	4133416,
	4133407,
	4133417,
	4133418,
	4133419,
	4133420,
	4133421,
	4133422,
	4133424,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = {},
}

fail_action = 
{
	CLIENT = { },
	SERVER = {},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100723", },
		},
		QUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = 
		{
			{ "2002", "2002168", },
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
	["4133401"] = { },
	["4133402"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
				},
		},
	},
	["4133403"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
				},
		},
	},
	["4133405"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
			id = 245101,
			alias = "Npc245101",
			script = "Actor/Npc/TempNPC",
			pos = "Q4133407aben",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		    },
		},
	},
	["4133406"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133407"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4133408"] = 
	{
		npcs = 
		{
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133409"] = 
	{
		npcs = 
		{
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133410"] = 
	{
		npcs = 
		{
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133412"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133413"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133414"] = 
	{
		npcs = 
		{
			{
				id = 212101,
				alias = "Npc212101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133413zhenxiang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133415"] = 
	{
		npcs = 
		{
			{
				id = 241701,
				alias = "Npc241701",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133414laoliubo",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133416"] = {},
	["4133417"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	 },
	["4133418"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4133419"] = {},
	["4133420"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133422"] = { },
	["4133423"] = {},
	["4133425"] = 
	{
		npcs = 
		{
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133426"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4133401"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 245101,
				alias = "Npc245101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133407aben",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4133402"] = { },
	["4133403"] = {},
	["4133404"] = { },
	["4133405"] = { },
	["4133406"] = {},
	["4133407"] =
	 {
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	 },
	["4133408"] = 
	{
		gadgets = 
		{
			{
				id = 70710269,
				alias = "Gadget70710269",
				pos = "Q41334lamp1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133409"] = 
	{
		gadgets = 
		{
			{
				id = 70710270,
				alias = "Gadget70710270",
				pos = "Q41334lamp2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133410"] = { },
	["4133411"] = { },
	["4133412"] = { },
	["4133413"] = 
	{
		npcs = 
		{
			{
				id = 212101,
				alias = "Npc212101",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133413zhenxiang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133414"] = 
	{
		npcs = 
		{
			{
				id = 241701,
				alias = "Npc241701",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133414laoliubo",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133415"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133415zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133415jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q41334huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4133416"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	 },
	["4133417"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133417huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4133418"] = { },
	["4133419"] = 
	{
		npcs = 
		{
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133419jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133419huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4133420"] = { },
	["4133421"] = 
	{
		npcs = 
		{
			{
				id = 240501,
				alias = "Npc240501",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133420jianqiu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 242001,
				alias = "Npc242001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133420huachu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
		gadgets = 
		{
			{
				id = 70800017,
				alias = "Gadget70800017",
				pos = "Q4133420point",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133422"] = 
	{
		npcs = 
		{
			{
				id = 243001,
				alias = "Npc243001",
				script = "Actor/Npc/TempNPC",
				pos = "Q4133401zhulaoban",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4133423"] = { },
	["4133424"] = { },
	["4133425"] = { },
	["4133426"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

