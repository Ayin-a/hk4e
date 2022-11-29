-- 任务配置数据开始-----------------------------

main_id = 8000

sub_ids = 
{
	800001,
	800002,
	800003,
	800004,
	800005,
	800009,
	800006,
	800008,
	800007,
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
	["800001"] = { },
	["800002"] = { },
	["800003"] = { },
	["800004"] = 
	{
		npcs = 
		{
			{
				id = 10910,
				alias = "Npc10910",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Thoarder",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["800005"] = 
	{
		npcs = 
		{
			{
				id = 10910,
				alias = "Npc10910",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Thoarder",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
			{
				id = 10921,
				alias = "Npc10921",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Invisible",
				scene_id = 20104,
				room_id = 1,
				data_index = 2,
			},
		},
	},
	["800006"] = { },
	["800007"] = 
	{
		avatar = 
		{
			offline_dungeon_id = 0,
			scene_id = 3,
			pos = "Q8001Avatar",
		},
	},
	["800008"] = { },
	["800009"] = 
	{
		npcs = 
		{
			{
				id = 10916,
				alias = "Npc10916",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000AbyssInvoker",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
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
	["800001"] = 
	{
		npcs = 
		{
			{
				id = 1015,
				alias = "Npc1015",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Ganyu",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 201601,
				alias = "Npc201601",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Lan",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["800002"] = { },
	["800003"] = 
	{
		npcs = 
		{
			{
				id = 10910,
				alias = "Npc10910",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Thoarder",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["800004"] = 
	{
		npcs = 
		{
			{
				id = 10921,
				alias = "Npc10921",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000Invisible",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["800005"] = 
	{
		npcs = 
		{
			{
				id = 10916,
				alias = "Npc10916",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000AbyssInvoker",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["800006"] = { },
	["800007"] = 
	{
		npcs = 
		{
			{
				id = 1022,
				alias = "Npc1022",
				script = "Actor/Npc/TempNPC",
				pos = "Q8001Dainsleif",
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
				pos = "Q8001Avatar",
			},
		},
	},
	["800008"] = 
	{
		npcs = 
		{
			{
				id = 10916,
				alias = "Npc10916",
				script = "Actor/Npc/TempNPC",
				pos = "Q8000AbyssInvoker",
				scene_id = 20104,
				room_id = 1,
				data_index = 1,
			},
		},
	},
	["800009"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>