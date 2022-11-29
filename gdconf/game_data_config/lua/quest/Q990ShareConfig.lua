-- 任务配置

-- 父任务id

main_id = 990

sub_ids =
{
	99001
}

rewind_data = {}

rewind_data["99006"] = 
{
	npcs = 
	{
		{
			isMale = false,
			alias = "Npc1025",
			script = "Actor/Npc/TempNPC",
			id = 1025,
			pos = "Q990TestNpc2",
			scene_id = 1001,
			room_id = 1,
			data_index = 1,
		},
		{
			isMale = true,
			alias = "Npc1026",
			script = "Actor/Npc/TempNPC",
			id = 1026,
			pos = "Q990TestNpc2",
			scene_id = 1001,
			room_id = 1,
			data_index = 2,
		}
	},
}

quest_data = {}

quest_data["99001"] = 
{
	npcs = 
	{
		{
			alias = "Paimon",
			script = "Actor/Npc/TempNPC",
			id = 1005,
			pos = "TalkTestNPC1",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["99002"] = 
{
	npcs = 
	{
		{
			alias = "Wendy",
			
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q99004TEST3",
            scene_id = 3,
            room_id = 0,
            data_index = 0,
		}
    }
}

quest_data["99004"] = 
{
	npcs = 
	{
		{
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q990TestNpc1",
            scene_id = 1001,
            room_id = 1,
            data_index = 0,
		}
    }
}

quest_data["99005"] = 
{
	npcs = 
	{
		{
			alias = "Npc1025",
			script = "Actor/Npc/TempNPC",
			id = 1025,
			pos = "Q990TestNpc2",
			scene_id = 1001,
			room_id = 1,
			data_index = 1,
		},
		{
			alias = "Npc1026",
			script = "Actor/Npc/TempNPC",
			id = 1026,
			pos = "Q990TestNpc2",
			scene_id = 1001,
			room_id = 1,
			data_index = 2,
		}
	},
}

quest_data["99007"] = 
{
	npcs = 
	{
		{
			alias = "Barbara",
			script = "Actor/Npc/TempNPC",
			id = 1008,
			pos = "Q7000701Player",
			scene_id = 1004,
			room_id = 100401,
			data_index = 1,
		}
	},
}