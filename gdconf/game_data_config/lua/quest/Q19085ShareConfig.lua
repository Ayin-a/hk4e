-- 任务配置数据开始-----------------------------

main_id = 19085

sub_ids = 
{
	1908501,
	1908502,
	1908504,
	1908503,
	1908505,
	1908506,
	1908507,
	1908508,
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
	["1908501"] = { },
	["1908502"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1908501"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908501Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 151201,
				alias = "Npc151201",
				script = "Actor/Npc/TempNPC",
				pos = "Q18000kaiselin",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908502"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908503"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908504"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908505"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908506"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908507"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908508"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908502selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
