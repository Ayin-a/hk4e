-- 父任务id
main_id = 22007

-- 子任务id
sub_ids = {
	2200701,
	2200702,
	2200703,
	2200704,
	2200705,
}

finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104515,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100493,100494", },
		},
	},
}

fail_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104515,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100493,100494", },
		},
	},
}

cancel_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104515,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100493,100494", },
		},
	},
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200701"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		}
	},
	["2200702"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		}
	},
	["2200703"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		}
	},
	["2200704"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		}
	},
	["2200705"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		}
	},
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200701"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	},
	["2200702"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	},
	["2200703"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1005,
				alias = "Paimon",
				script = "Actor/Quest/Q352/Paimon",
				pos = "Q22005BaoerInitPos",
				scene_id  = 3,
				room_id = 0,
				data_index = 2
			}
		}
	},
	["2200704"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	},
	["2200705"] = {
		npcs = {
			{
				id = 2421,
				alias = "Npc2421",
				script = "Actor/Npc/TempNPC",
				pos = "Q22005BaoerInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		}
	},
}
