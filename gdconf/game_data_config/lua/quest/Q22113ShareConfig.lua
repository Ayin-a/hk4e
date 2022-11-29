-- 父任务id
main_id = 22113

-- 子任务id
sub_ids = {
	2211301,
	2211302,
	2211303,
	2211304,
	2211305
}

-- 存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {
	["2211301"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211302"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211303"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211304"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211305"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	}
}

-- 校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {
	["2211301"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211302"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211303"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211304"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	},
	["2211305"] = {
		npcs = {
			{
				id = 220201,
				alias = "Npc220201",
				script = "Actor/Npc/TempNPC",
				pos = "Event_26700_01",
				scene_id  = 3,
			}
		}
	}
}

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
	SERVER = 
	{
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
			{ "3", "133104908,1", },
			{ "3", "133104909,1", },
		},

		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
        {
            {"100306"},  --这里用的是删除道具执行项
        }


	},
}
