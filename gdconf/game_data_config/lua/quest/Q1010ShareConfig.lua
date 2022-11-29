-- 任务配置

-- 父任务id

main_id = 1010

sub_ids =
{
    101001,
    101002,
    101003,
    101004,
    101007,
    101008,
    101005,
    101006,
}

rewind_data = {}

rewind_data["101002"] = 
{
    -- npcs = {
    --     {
    --         id = 10235,
    --         alias = "Npc10235",
    --         script = "Actor/Npc/TempNPC",
    --         pos = "Q1010YurenGuard01",
    --         scene_id = 3,
    --         data_index = 0,
    --     },
    -- }
}




quest_data = {}

quest_data["101002"] = 
{
    npcs = {
        {
            id = 10235,
            alias = "Npc10235",
            script = "Actor/Npc/TempNPC",
            pos = "Q101002Infor",
            scene_id = 1033,
            room_id = 1,
            data_index = 0,
        },
    }
}

quest_data["101003"] = 
{
    npcs = {
        {
            id = 10236,
            alias = "Npc10236",
            script = "Actor/Npc/TempNPC",
            pos = "Q1010Waiter01",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 202201,
            alias = "Npc202201",
            script = "Actor/Npc/TempNPC",
            pos = "Q101003Licai",
            scene_id = 3,
            data_index = 0,
        },
        {
			-- gongzi
			alias = "Npc10200",
			script = "Actor/Npc/TempNPC",
			id = 10200,
			pos = "Q101003Gz",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
		}
    }
}

quest_data["101005"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101005ZL",
            scene_id = 1034,
            room_id = 1,
            data_index = 0,
        },
        {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            pos = "Q101005GZ",
            scene_id = 1034,
            room_id = 1,
            data_index = 0,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1034,
            pos = "Q101005Avatar"
        },
        {
            point_id = 2,
            scene_id = 1034,
            pos = "Q101005Leave"
        },
    }
}

quest_data["101006"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q1010Zhongli01",
            scene_id = 3,
            data_index = 0,
        },
    }
}

quest_data["101007"] = 
{
    transmit_points = {
        {
            point_id = 1,
            scene_id = 1034,
            pos = "Q101005Avatar"
        },
    }
}