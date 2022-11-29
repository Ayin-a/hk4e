-- 任务配置数据开始-----------------------------

main_id = 11111

sub_ids = 
{
	1111101,
	1111102,
	1111104,
	1111105,
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
	["1111101"] = { },
	["1111102"] = { },
	["1111104"] = { },
	["1111105"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1111101"] = 
	{
		npcs = 
		{
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Laomeng_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10348,
				alias = "Npc10348",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_Congzi_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10345,
				alias = "Npc10345",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_SteerTo2_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["1111102"] = 
	{
		npcs = 
		{
			{
				id = 10345,
				alias = "Npc10345",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_SteerTo2_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10365,
				alias = "Npc10365",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_DefensePlay_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10366,
				alias = "Npc10366",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11110_SteerTo1_Wangshengtang_Pos",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_1",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
	},
	["1111104"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10345,
				alias = "Npc10345",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1111105"] = 
	{
		npcs = 
		{
			{
				id = 1021,
				alias = "Npc1021",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10343,
				alias = "Npc10343",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10345,
				alias = "Npc10345",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 10344,
				alias = "Npc10344",
				script = "Actor/Npc/TempNPC",
				pos = "Q11111_Hutao_Defense_Pos_2",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

