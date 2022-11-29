-- 任务配置

-- 父任务id

main_id = 1007

sub_ids =
{
    100701,
    100702,
    100703,
}

rewind_data = {}

rewind_data["100701"] = 
{

}


quest_data = {}

quest_data["100701"] = 
{
	npcs = 
	{
		{
			alias = "Npc2003013",
			script = "Actor/Npc/TempNPC",
			id = 2003013,
			pos = "Q1007Guard01",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        {
			alias = "Npc2003014",
			script = "Actor/Npc/TempNPC",
			id = 2003014,
			pos = "Q1007Guard02",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

    }
}


quest_data["100702"] = 
{
	transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q1001Trans01"
        },
    }
}
