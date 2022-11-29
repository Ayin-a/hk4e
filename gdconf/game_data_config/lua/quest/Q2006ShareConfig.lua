-- 任务配置数据开始-----------------------------

main_id = 2006sub_ids = {	200601,	200602,	200603,	200608,	200609,	200604,	200605,	200606,	200607,	200610,}-- 任务配置数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 父任务执行项数据开始-----------------------------finish_action = {	CLIENT = { },	SERVER = { },}fail_action = {	CLIENT = { },	SERVER = { },}cancel_action = {	CLIENT = { },	SERVER = { },}-- 父任务执行项数据结束------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- Actor模块数据开始---------------------------------- 空-- Actor模块数据结束---------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 文本模块数据开始----------------------------------- 空-- 文本模块数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 路点模块数据开始----------------------------------- 空-- 路点模块数据结束----------------------------------- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 断线重连生成内容 开始------------------------------ 和questdata配的存档点对应rewind_data = {	["200601"] = { },	["200602"] = { 		npcs = 
		{
			{
				id = 3031,
				alias = "Npc3031",
				script = "Actor/Npc/TempNPC",
				pos = "Q200601mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12005,
				alias = "Npc12005",
				script = "Actor/Npc/TempNPC",
				pos = "Q200602mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["200603"] = 	{		npcs = 		{			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},		},	},	["200604"] = { },	["200605"] = 	{		npcs = 		{			{				id = 12006,				alias = "Npc12006",				script = "Actor/Npc/TempNPC",				pos = "Q200605mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},		},	},	["200606"] = { },	["200607"] = { },	["200608"] = { },	["200609"] = { },}-- 断线重连生成内容 结束------------------------------ >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-- 校验数据 开始------------------------------------ 和任务lua中生成NPC/Monster/Gadget/Item等对应quest_data = {	["200601"] = 	{		npcs = 		{			{				id = 3034,				alias = "Npc3034",				script = "Actor/Npc/TempNPC",				pos = "Q200601syr3",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 3031,				alias = "Npc3031",				script = "Actor/Npc/TempNPC",				pos = "Q200601mass1",				scene_id = 3,				room_id = 0,				data_index = 2,			},			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 3,			},		},	},	["200602"] = 	{		npcs = 		{			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},		},	},	["200603"] = 	{		npcs = 		{			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},
			{
				id = 12006,
				alias = "Npc12006",
				script = "Actor/Npc/TempNPC",
				pos = "Q200605mass1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},		},	},	["200604"] = 	{		npcs = 		{			{				id = 12006,				alias = "Npc12006",				script = "Actor/Npc/TempNPC",				pos = "Q200605mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200605"] = 	{		npcs = 		{			{				id = 12006,				alias = "Npc12006",				script = "Actor/Npc/TempNPC",				pos = "Q200605mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200606"] = 	{		npcs = 		{			{				id = 12007,				alias = "Npc12007",				script = "Actor/Npc/TempNPC",				pos = "Q200606wunv",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 1005,				alias = "Paimon",				script = "Actor/Quest/Q352/Paimon",				pos = "Q200606paimon",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200607"] = 	{		npcs = 		{			{				id = 1005,				alias = "Paimon",				script = "Actor/Quest/Q352/Paimon",				pos = "Q200607paimon",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 1034,				alias = "Npc1034",				script = "Actor/Npc/TempNPC",				pos = "Q200607bachong",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200608"] = 	{		npcs = 		{			{				id = 12006,				alias = "Npc12006",				script = "Actor/Npc/TempNPC",				pos = "Q200605mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200609"] = 	{		npcs = 		{			{				id = 12006,				alias = "Npc12006",				script = "Actor/Npc/TempNPC",				pos = "Q200605mass1",				scene_id = 3,				room_id = 0,				data_index = 1,			},			{				id = 12005,				alias = "Npc12005",				script = "Actor/Npc/TempNPC",				pos = "Q200602mass1",				scene_id = 3,				room_id = 0,				data_index = 2,			},		},	},	["200610"] = { },}-- 校验数据 结束------------------------------------ >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>