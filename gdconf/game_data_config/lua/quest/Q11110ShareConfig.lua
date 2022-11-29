-- 任务配置数据开始-----------------------------

main_id = 11110

sub_ids = 
{
	1111001,
	1111002,
	1111003,
	1111004,
	1111005,
	1111006,
	1111011,
	1111012,
	1111013,
	1111014,
	1111007,
	1111008,
	1111009,
	1111010,
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
	["1111001"] = { },
	["1111002"] = { },
	["1111004"] = { },
	["1111005"] = 
	{
		npcs = 
		{
			{
				id = 201601,
				alias = "Npc201601",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Lanjie_Maoxian_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111006"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111007"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111008"] = 
	{
		npcs = 
		{
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111009"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng2_wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111010"] = 
	{
		npcs = 
		{
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng2_wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111011"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111012"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111014"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
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
	["1111001"] = 
	{
		npcs = 
		{
			{
				id = 10366,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_LaoMeng_1_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_LaoMeng_1_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111002"] = 
	{
		npcs = 
		{
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_LaoMeng_3_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_HuTao_2_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111003"] = {
		npcs = 
		{
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_LaoMeng_3_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_HuTao_2_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111004"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Maoxian_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 201601,
				alias = "Npc201601",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Lanjie_Maoxian_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Maoxian_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111005"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 208401,
				alias = "Npc208401",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Baiduren_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111006"] = 
	{
		npcs = 
		{
			{
				id = 10360,
				alias = "Npc10360",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Muban_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10361,
				alias = "Npc10361",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Door_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111007"] = { },
	["1111008"] = 
	{
		npcs = 
		{
			{
				id = 10346,
				alias = "Npc10346",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Xiaowu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng2_wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111009"] = 
	{
		npcs = 
		{
			{
				id = 10347,
				alias = "Npc10347",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Mumu_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111010"] = 
	{
		npcs = 
		{
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1111011"] = 
	{
		npcs = 
		{
			{
				id = 10361,
				alias = "Npc10361",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Door_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111012"] = {
		npcs = 
		{
			{
				id = 10361,
				alias = "Npc10361",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Door_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1111013"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10361,
				alias = "Npc10361",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Door_Wangshengtang",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111014"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

