-- 父任务id
main_id = 22006

-- 子任务id
sub_ids = {
	2200601,
	2200602,
	2200603,
	2200604,
	2200605,
	2200606,
}

finish_action = 
{
	CLIENT = { },
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104502,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100500", },
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
			{ "3", "133104502,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100500", },
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
			{ "3", "133104502,1", },
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{ "100500", },
		},
	},
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2200601"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
			
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
	["2200602"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
	["2200603"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
	["2200604"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
	["2200605"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
	["2200606"] = {
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
			{
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 0,
			},
		},
		quest_var ={
			-1,-1,-1,-1,-1
		}
	},
		
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2200601"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
	["2200602"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
	["2200603"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
	["2200604"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
	["2200605"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
	["2200606"] = {
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
				id = 2211,
				alias = "Npc2211",
				script = "Actor/Npc/TempNPC",
				pos = "Q22006SoRaYaInitPos",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		}
	},
}
