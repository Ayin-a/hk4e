-- 任务配置数据开始-----------------------------

main_id = 11043

sub_ids = 
{
	1104301,
	1104302,
	1104303,
	1104305,
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
	["1104301"] = { },
	["1104302"] = { },
	["1104303"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1104301"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11043Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1104302"] = 
	{
		npcs = 
		{
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11043Albedo2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gadget71700097",
				pos = "Q11043Albedo2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		transmit_points = {
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q11043Avatar1"
			},
		}
	},
	["1104305"] = 
	{
		npcs = 
		{
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11043Albedo2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1104303"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11043Albedo2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["1104304"] = 
	{
		npcs = 
		{
			{
				id = 1018,
				alias = "Npc1018",
				script = "Actor/Npc/TempNPC",
				pos = "Q11043Albedo1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 158701,
				alias = "Npc158701",
				script = "Actor/Npc/TempNPC",
				pos = "Q11042DMWS1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

