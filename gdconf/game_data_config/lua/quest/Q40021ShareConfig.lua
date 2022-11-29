-- 任务配置数据开始-----------------------------

main_id = 40021

sub_ids = 
{
	4002110,
	4002101,
	4002102,
	4002103,
	4002113,
	4002104,
	4002105,
	4002115,
	4002111,
	4002114,
	4002116,
	4002106,
	4002117,
	4002107,
	4002108,
	4002112,
	4002109,
	4002118,
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
	["4002101"] = { },
	["4002102"] = { },
	["4002103"] = { },
	["4002104"] = { },
	["4002105"] = { },
	["4002106"] = { },
	["4002107"] = { },
	["4002108"] = { },
	["4002109"] = { },
	["4002110"] = { },
	["4002111"] = { },
	["4002112"] = { },
	["4002113"] = 
	{
		npcs = 
		{
			{
				id = 30067,
				alias = "Npc30067",
				script = "Actor/Npc/TempNPC",
				pos = "Q40020gate",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4002114"] = { },
	["4002115"] = { },
	["4002116"] = { },
	["4002117"] = { },
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["4002101"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002101xinyan",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4002102"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002102xinyan",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1038,
				alias = "Npc1038",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002102jiutiaoshaluo",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4002103"] = 
	{
		npcs = 
		{
			{
				id = 30067,
				alias = "Npc30067",
				script = "Actor/Npc/TempNPC",
				pos = "Q40020gate",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4002104"] = { },
	["4002105"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105xinyan",
				scene_id = 47005,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10200,
				alias = "Npc10200",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105gongzi",
				scene_id = 47005,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 30067,
				alias = "Npc30067",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105shidajiang",
				scene_id = 47005,
				room_id = 0,
				data_index = 3,
			},
		},
		gadgets = 
		{
			{
				id = 70710524,
				alias = "Gadget70710524data1",
				pos = "Q4002111target",
				scene_id = 47005,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710524,
				alias = "Gadget70710524data3",
				pos = "Q4002111target3",
				scene_id = 47005,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4002106"] = { },
	["4002107"] = 
	{
		gadgets = 
		{
			{
				id = 70710489,
				alias = "Gadget70710489Data2",
				pos = "Q4002107target2",
				scene_id = 47002,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710524,
				alias = "Gadget70710524data2",
				pos = "Q4002107target",
				scene_id = 47002,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4002108"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002108xinyan",
				scene_id = 47002,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10200,
				alias = "Npc10200",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002108gongzi",
				scene_id = 47002,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 30067,
				alias = "Npc30067",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002108shidajiang",
				scene_id = 47002,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4002109"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002017xinyan",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4002110"] = { },
	["4002111"] = 
	{
		gadgets = 
		{
			{
				id = 70710489,
				alias = "Gadget70710489Data1",
				pos = "Q4002111target2",
				scene_id = 47005,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710524,
				alias = "Gadget70710524data1",
				pos = "Q4002111target",
				scene_id = 47005,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 70710524,
				alias = "Gadget70710524data3",
				pos = "Q4002111target3",
				scene_id = 47005,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4002112"] = 
	{
		transmit_points = 
		{
			{
				point_id = 1,
				scene_id = 3,
				pos = "Q4002017player",
			},
		},
	},
	["4002113"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002113xinyan",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4002114"] = 
	{
		npcs = 
		{
			{
				id = 1042,
				alias = "Npc1042",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105xinyan",
				scene_id = 47005,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 10200,
				alias = "Npc10200",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105gongzi",
				scene_id = 47005,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 30067,
				alias = "Npc30067",
				script = "Actor/Npc/TempNPC",
				pos = "Q4002105shidajiang",
				scene_id = 47005,
				room_id = 0,
				data_index = 3,
			},
		},
	},
	["4002115"] = { },
	["4002116"] = { },
	["4002117"] = 
	{
		gadgets = 
		{
			{
				id = 70710489,
				alias = "Gadget70710489Data2",
				pos = "Q4002107target2",
				scene_id = 47002,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 70710524,
				alias = "Gadget70710524data2",
				pos = "Q4002107target",
				scene_id = 47002,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4002118"] = { },
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
