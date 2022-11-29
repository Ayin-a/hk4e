-- 任务配置数据开始-----------------------------

main_id = 41413

sub_ids = 
{
	4141301,
	4141302,
	4141303,
	4141304,
	4141305,
	4141306,
	4141307,
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
	SERVER = {
		QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = 
		{
			{ "133007293", },
			{ "133007294", },
		},
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133004927,1", },
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
	["4141301"] = { },
	["4141302"] = {
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141302Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141302Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	 },
	["4141303"] = 
	{
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141302Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141302Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141304"] = 
	{
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141302Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141302Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141305"] = { },
	["4141306"] = { },
	["4141307"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4141301"] = { 
		npcs = 
		{
			{
				id = 1006,
				alias = "Qin",
				script = "Actor/Quest/Q411/Qin",
				pos = "Q4141302Qin",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141302Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4141302"] = 
	{

	},
	["4141303"] = { },
	["4141304"] = 
	{
		-- npcs = 
		-- {
		-- 	{
		-- 		id = 1001,
		-- 		alias = "Wendy",
		-- 		script = "Actor/Quest/Q301/Wendy301",
		-- 		pos = "Q4141304Venti",
		-- 		scene_id = 3,
		-- 		room_id = 0,
		-- 		data_index = 1,
		-- 	},
		-- },
	},
	["4141305"] = {
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141307Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141306"] = {
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141307Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4141307"] = 
	{
		npcs = 
		{
			{
				id = 1001,
				alias = "Wendy",
				script = "Actor/Quest/Q301/Wendy301",
				pos = "Q4141307Venti",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

