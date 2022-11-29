-- 任务配置数据开始-----------------------------

main_id = 19087

sub_ids = 
{
	1908701,
	1908706,
	1908703,
	1908704,
	1908710,
	1908711,
	1908705,
	1908708,
	1908714,
	1908702,
	1908713,
	1908709,
	1908707,
	1908712,
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
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133003926", "", },
		},
		QUEST_EXEC_REMOVE_TRIAL_AVATAR = 
		{
			{ "500", },
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
	["1908701"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["1908702"] = { },
	["1908705"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908706"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908708"] = 	{},
	["1908709"] = { },
	["1908710"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908711"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908713"] = {},
	 ["1908714"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1908701"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908702"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908703"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908704"] = 
	{
		npcs = 
		{
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908705"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908706"] = { },
	["1908707"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908101Noel",
				scene_id = 1004,
				room_id = 100401,
				data_index = 1,
			},
			{
				id = 11009,
				alias = "Npc11009",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908712reader",
				scene_id = 1004,
				room_id = 100401,
				data_index = 2,
			},
		},
	},
	["1908708"] = 
	{
		npcs = 
		{
			{
			id = 140901,
			alias = "Npc140901",
			script = "Actor/Npc/TempNPC",
			pos = "Q1908701selius",
			scene_id = 3,
			room_id = 0,
			data_index = 1,
		    },	
		},
	},
	["1908709"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908101Noel",
				scene_id = 1004,
				room_id = 100401,
				data_index = 1,
			},
			{
				id = 11009,
				alias = "Npc11009",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908712reader",
				scene_id = 1004,
				room_id = 100401,
				data_index = 2,
			},
		},
	},
	["1908710"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908710Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908711"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908710Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1908712"] = {
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	 },
	["1908713"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1908714"] = 
	{
		npcs = 
		{
			{
				id = 1027,
				alias = "Npc1027",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701Noel",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 140901,
				alias = "Npc140901",
				script = "Actor/Npc/TempNPC",
				pos = "Q1908701selius",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
