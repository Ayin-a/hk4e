-- 任务配置

-- 父任务id

main_id = 11104

sub_ids =
{
	1110401,

}


PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

XiaoData =
{
    ID = 10210,
	Alias = "Xiao",  
}


quest_data = {}

quest_data["1110401"] = 
{
	npcs = 
	{
		{
			alias = "Xiao",
			script = "Actor/Npc/TempNPC",
			id = 10210,
			pos = "Q1110311Xiao",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}


