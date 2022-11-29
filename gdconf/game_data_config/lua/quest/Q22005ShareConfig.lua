-- 父任务id
main_id = 22005

-- 子任务id
sub_ids = {
	2200501,
	2200502,
	2200503,
}

finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104486,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100429", },
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
			{ "3", "133104486,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100429", },
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
			{ "3", "133104486,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100429", },
		},
	},
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200501"] = {
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
	["2200502"] = {
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
	["2200503"] = {
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
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200501"] = {
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
	["2200502"] = {
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
	["2200503"] = {
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
	}
}
