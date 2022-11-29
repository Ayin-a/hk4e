-- 任务配置数据开始-----------------------------

main_id = 2012

sub_ids = 
{
	201201,
	201202,
	201203,
	201204,
	201205,
	201206,
	201210,
	201211,
	201216,
	201217,
	201212,
	201207,
	201213,
	201208,
	201214,
	201209,
	201215,
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
	["201201"] = { },
	["201202"] = { },
	["201203"] = { },
	["201204"] = { 
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012TuomaWait01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201205"] = { 
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201206"] = {
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012TuomaWait01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	 },
	["201207"] = 
	{
		-- npcs = 
		-- {
		-- 	{
		-- 		id = 12044,
		-- 		alias = "Npc12044",
		-- 		script = "Actor/Npc/NpcFSMBehaviour",
		-- 		pos = "Q2012Zuqing01",
		-- 		scene_id = 3,
		-- 		room_id = 0,
		-- 		data_index = 1,
		-- 	},
		-- },
	},
	["201208"] = { },
	["201209"] = { },
	["201210"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201211"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201216"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201217"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201212"] = { },
	["201213"] = { },
	["201214"] = { },
	["201215"] = { 
		npcs = 
		{
			{
				id = 3084,
				alias = "Npc3084",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012JiulixuLast",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3083,
				alias = "Npc3083",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012LiyueShangren01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
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
	["201201"] = { 
		npcs = 
		{
			{
				id = 3075,
				alias = "Npc3075",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Check01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012Tuoma01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201202"] = 
	{
		npcs = 
		{
			{
				id = 3089,
				alias = "Npc3089",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Check02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012Tuoma02",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201203"] = 
	{
		npcs = 
		{
			{
				id = 3084,
				alias = "Npc3084",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Wgshanghui01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012TuomaWait01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201204"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 3084,
				alias = "Npc3084",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Wgshanghui01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201205"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012TuomaWait01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201206"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201207"] = 
	{
		transmit_points = {
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q2012AvatarFail"
			},
		},
		npcs = 
		{
			{
				alias = "Npc12051",
				script = "Actor/Npc/FollowNPC",
				id = 12051,
				pos = "Q2012Zuqing01",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang02",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3078,
				alias = "Npc3078",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Liangzi01",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["201208"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
		gadgets = 
		{
			{
				id = 71700283,
				alias = "Gadget71700283",
				pos = "Q2012ZhangbenPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201209"] = 
	{
		npcs = 
		{
			{
				id = 3084,
				alias = "Npc3084",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012JiulixuLast",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12044,
				alias = "Npc12044",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012QCLLast",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 3083,
				alias = "Npc3083",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012LiyueShangren01",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 12045,
				alias = "Npc12045",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Player03",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
		},
	},
	["201210"] = { },
	["201211"] = { },
	["201212"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang03",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12044,
				alias = "Npc12044",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Zuqing01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201213"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 12044,
				alias = "Npc12044",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Zuqing01",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["201214"] = 
	{
		npcs = 
		{
			{
				id = 12043,
				alias = "Npc12043",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q2012Heishang02",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["201215"] = 
	{
		npcs = 
		{
			{
				id = 1033,
				alias = "Npc1033",
				script = "Actor/Npc/TempNPC",
				pos = "Q2012TuomaLast",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
