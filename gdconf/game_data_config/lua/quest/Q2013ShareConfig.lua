-- 任务配置数据开始-----------------------------

main_id = 2013

sub_ids = 
{
	201301,
	201311,
	201302,
	201303,
	201304,
	201305,
	201306,
	201307,
	201308,
	201309,
	201312,
	201310,
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
	["201301"] = { },
	["201302"] = { },
	["201303"] = 
	{
		npcs = 
		{
			{
				id = 3085,
				alias = "Npc3085",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Jiazhu01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201305"] = { },
	["201306"] = { },
	["201307"] = { },
	["201308"] = { },
	["201309"] = { },
	["201310"] = { },
	["201311"] = { },
	["201312"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["201301"] = 
	{
		npcs = 
		{
			{
				id = 3069,
				alias = "Npc3069",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Guard01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201302"] = 
	{
		npcs = 
		{
			{
				id = 3085,
				alias = "Npc3085",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Jiazhu01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201303"] = { },
	["201304"] = 
	{
		npcs = 
		{
			{
				id = 3016,
				alias = "Npc3016",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Puren01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201305"] = { },
	["201306"] = { },
	["201307"] = 
	{
		npcs = 
		{
			{
				id = 3086,
				alias = "Npc3086",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Qianli01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201308"] = 
	{
		npcs = 
		{
			{
				id = 3016,
				alias = "Npc3016",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q201308Guard01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12054,
				alias = "Npc12054",
				script = "Actor/Npc/TempNPC",
				pos = "Q201308Gurad02",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201309"] = { 
		npcs = 
		{
			{
				id = 12054,
				alias = "Npc12054",
				script = "Actor/Npc/TempNPC",
				pos = "Q2013Stop01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201310"] = 
	{
		npcs = 
		{
			{
				id = 3086,
				alias = "Npc3086",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Stop01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12054,
				alias = "Npc12054",
				script = "Actor/Npc/TempNPC",
				pos = "Q2013Stop01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201311"] = 
	{
		npcs = 
		{
			{
				id = 3093,
				alias = "Npc3093",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Gate01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3085,
				alias = "Npc3085",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2013Jiazhu01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201312"] = 
	{
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q2013Transback",
			},
		},
		npcs = 
		{
			{
				id = 12054,
				alias = "Npc12054",
				script = "Actor/Npc/TempNPC",
				pos = "Q2013Stop01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
