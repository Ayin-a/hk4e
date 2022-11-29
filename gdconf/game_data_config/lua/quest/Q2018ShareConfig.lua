-- 任务配置数据开始-----------------------------

main_id = 2018

sub_ids = 
{
	201801,
	201802,
	201803,
	201805,
	201806,
	201807,
	201804,
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
	["201801"] = { },
	["201802"] = { },
	["201803"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q201808Yaeko",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201804"] = { },
	["201806"] = 
	{
		npcs = 
		{
			{
				id = 3058,
				alias = "Npc3058",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3056,
				alias = "Npc3056",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder6",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3059,
				alias = "Npc3059",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder4",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 3025,
				alias = "Npc3025",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder7",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
		quest_var = { 1, -1, -1, -1, -1, },
	},
	["201807"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["201801"] = { },
	["201802"] = 
	{
		npcs = 
		{
			{
				id = 1034,
				alias = "Npc1034",
				script = "Actor/Npc/TempNPC",
				pos = "Q201808Yaeko",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1013,
				alias = "Npc1013",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Shenli",
				scene_id = 1060,
				room_id = 1,
				data_index = 2,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q201709Tuoma",
				scene_id = 1060,
				room_id = 1,
				data_index = 3,
			},
			{
				id = 1038,
				alias = "Npc1038",
				script = "Actor/Npc/TempNPC",
				pos = "Q201808Yaeko",
				scene_id = 3,
				room_id = 1,
				data_index = 4,
			},
		},
		gadgets = 
		{
			{
				id = 70710503,
				alias = "Gadget70710503",
				pos = "Q201802_Yushou",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201803"] = 
	{
		npcs = 
		{
			{
				id = 1038,
				alias = "Npc1038",
				script = "Actor/Npc/TempNPC",
				pos = "Q201803Jiutiao",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3058,
				alias = "Npc3058",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3055,
				alias = "Npc3055",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder4",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 3056,
				alias = "Npc3056",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder6",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 3059,
				alias = "Npc3059",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder4",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
			{
				id = 3025,
				alias = "Npc3025",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201803_Soilder7",
				scene_id = 3,
				room_id = 0,
				data_index = 6,
			},
		},
	},
	["201804"] = 
	{
		npcs = 
		{
			{
				id = 3053,
				alias = "Npc3053",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201804Xiaoxing",
				scene_id = 1065,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201805"] = 
	{
		npcs = 
		{
			{
				id = 1038,
				alias = "Npc1038",
				script = "Actor/Npc/TempNPC",
				pos = "Q201803Jiutiao",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201806"] = 
	{
		npcs = 
		{
			{
				id = 1038,
				alias = "Npc1038",
				script = "Actor/Npc/TempNPC",
				pos = "Q201803Jiutiao",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201807"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
