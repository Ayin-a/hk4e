-- 任务配置数据开始-----------------------------

main_id = 11021

sub_ids = 
{
	1102101,
	1102102,
	1102107,
	1102108,
	1102103,
	1102104,
	1102109,
	1102105,
	1102106,
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
	["1102101"] = { },
	["1102102"] = { },
	["1102103"] = { },
	["1102104"] = { },
	["1102105"] = { },
	["1102106"] = { },
	["1102107"] = { },
	["1102108"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1102101"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021ZL1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10280,
				alias = "Npc10280",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Girl1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10281,
				alias = "Npc10281",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Yuren1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad1",
				pos = "Q11021Gadget1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102102"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021ZL1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10303,
				alias = "Npc10303",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Girl1",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10302,
				alias = "Npc10302",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Yuren1",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1102103"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad1",
				pos = "Q11021Gadget1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102104"] = 
	{
		gadgets = 
		{
			{
				id = 70300118,
				alias = "Q11021Gad2",
				pos = "Q11021Gadget2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102105"] = 
	{
		gadgets = 
		{
			{
				id = 71700097,
				alias = "Gad3",
				pos = "Q11021Gadget3",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102106"] = 
	{
		npcs = 
		{
			{
				id = 10232,
				alias = "Npc10232",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021ZL2",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10303,
				alias = "Npc10303",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Girl3",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 10302,
				alias = "Npc10302",
				script = "Actor/Npc/TempNPC",
				pos = "Q11021Yuren3",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["1102107"] = 
	{
		gadgets = 
		{
			{
				id = 70300070,
				alias = "Q11021Compass",
				pos = "Q11021Gadget1",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["1102108"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

