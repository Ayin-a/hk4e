-- 任务配置数据开始-----------------------------

main_id = 19025

sub_ids = 
{
	1902501,
	1902502,
	1902506,
	1902507,
	1902508,
	1902509,
	1902510,
	1902504,
	1902503,
	1902505,
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
	["1902501"] = { },
	["1902502"] = { },
	["1902503"] = { },
	["1902504"] = { },
	["1902505"] = { },
	["1902506"] = { },
	["1902507"] = { },
	["1902508"] = { },
	["1902509"] = { },
	["1902510"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1902501"] = 
	{
		npcs = 
		{
			{
				id = 10901,
				alias = "Npc10901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10902,
				alias = "Npc10902",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10906,
				alias = "Npc10906",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Mom",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1902502"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gadget71700097",
				pos = "Q1902501Child2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1902503"] = 
	{
		npcs = 
		{
			{
				id = 10901,
				alias = "Npc10901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10902,
				alias = "Npc10902",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902504cy",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1902504"] = 
	{
		npcs = 
		{
			{
				id = 10906,
				alias = "Npc10906",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Mom",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = {
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q1902501Born"
			},
		}
	},
	["1902505"] = 
	{
		npcs = 
		{
			{
				id = 10901,
				alias = "Npc10901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10902,
				alias = "Npc10902",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902501Child2",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902504cy",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1902506"] = 
	{
		npcs = 
		{
			{
				id = 10901,
				alias = "Npc10901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902506boy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1902507"] = 
	{
		npcs = 
		{
			{
				id = 10902,
				alias = "Npc10902",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902506girl",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1902508"] = 
	{
		npcs = 
		{
			{
				id = 1023,
				alias = "Npc1023",
				script = "Actor/Npc/TempNPC",
				pos = "Q1902506cy",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1902509"] = { },
	["1902510"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

