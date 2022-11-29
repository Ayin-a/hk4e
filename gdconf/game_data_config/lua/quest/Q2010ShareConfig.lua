-- 任务配置数据开始-----------------------------

main_id = 2010

sub_ids = 
{
	201001,
	201002,
	201003,
	201004,
	201005,
	201006,
	201012,
	201013,
	201017,
	201007,
	201014,
	201010,
	201016,
	201018,
	201008,
	201015,
	201011,
	201009,
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
	["201001"] = { },
	["201003"] = { },
	["201005"] = { },
	["201009"] = 
	{
		npcs = 
		{
			{
				id = 12070,
				alias = "Npc12070",
				script = "Actor/Npc/TempNPC",
				pos = "Q201009Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201010"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201011"] = 
	{
		npcs = 
		{
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201012"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201014"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201015"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201017"] = 
	{
		npcs = 
		{
			{
				id = 12146,
				alias = "Npc12146",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12147,
				alias = "Npc12147",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201007"] = 
	{
		npcs = 
		{
			{
				id = 12146,
				alias = "Npc12146",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12147,
				alias = "Npc12147",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier2",
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
	["201001"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201001Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201002"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201001Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 45001001,
				alias = "Gadget45001001",
				pos = "Q201002_Skiff",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201003"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201001Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201004"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201004Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201005"] = 
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
				id = 3146,
				alias = "Npc3146",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201006Dajiu",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201006"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3146,
				alias = "Npc3146",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201006Dajiu",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["201007"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201008"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12098,
				alias = "Npc12098",
				script = "Actor/Npc/TempNPC",
				pos = "Q201015Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201015Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["201009"] = 
	{
		npcs = 
		{
			{
				id = 12070,
				alias = "Npc12070",
				script = "Actor/Npc/TempNPC",
				pos = "Q201009Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q201009Player",
			},
		},
	},
	["201010"] = 
	{
		npcs = 
		{
			{
				id = 12098,
				alias = "Npc12098",
				script = "Actor/Npc/TempNPC",
				pos = "Q201014Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201014Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12212,
				alias = "Npc12212",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12213,
				alias = "Npc12213",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob2",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12214,
				alias = "Npc12214",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob3",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
	},
	["201011"] = 
	{
		npcs = 
		{
			{
				id = 12070,
				alias = "Npc12070",
				script = "Actor/Npc/TempNPC",
				pos = "Q201009Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q201009Player",
			},
		},
	},
	["201012"] = 
	{
		npcs = 
		{
			{
				id = 12146,
				alias = "Npc12146",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12147,
				alias = "Npc12147",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201013"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12146,
				alias = "Npc12146",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12147,
				alias = "Npc12147",
				script = "Actor/Npc/TempNPC",
				pos = "Q201012Soldier2",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["201014"] = 
	{
		npcs = 
		{
			{
				id = 12098,
				alias = "Npc12098",
				script = "Actor/Npc/TempNPC",
				pos = "Q201014Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201014Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201015"] = 
	{
		npcs = 
		{
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201015Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201016"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12098,
				alias = "Npc12098",
				script = "Actor/Npc/TempNPC",
				pos = "Q201016Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201016Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["201017"] = { },
	["201018"] = 
	{
		npcs = 
		{
			{
				id = 12013,
				alias = "Npc12013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201006Zheping",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1037,
				alias = "Npc1037",
				script = "Actor/Npc/TempNPC",
				pos = "Q201011Xinhai",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 12098,
				alias = "Npc12098",
				script = "Actor/Npc/TempNPC",
				pos = "Q201015Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12061,
				alias = "Npc12061",
				script = "Actor/Npc/TempNPC",
				pos = "Q201015Soldier1",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 12212,
				alias = "Npc12212",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 12213,
				alias = "Npc12213",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob2",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
			{
				id = 12214,
				alias = "Npc12214",
				script = "Actor/Npc/TempNPC",
				pos = "Q201008Mob3",
				scene_id = 3,
				room_id = 0,
				data_index = 7,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
