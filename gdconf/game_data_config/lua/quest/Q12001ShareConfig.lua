-- 任务配置

-- 父任务id

main_id = 12001

sub_ids =
{
    1200101,
    1200103,
    1200104,
    1200105,
    1200107,
    1200108,
    1200109,
    1200110,
    1200111,

}

rewind_data = {}
rewind_data["1200101"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200102"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200103"] = 
{
    npcs = {
        {
        ----行秋
            alias = "Npc10045",
			script = "Actor/Quest/Q301/Gaia301",
			id = 10045,
			pos = "Q1200005XQ",
			scene_id = 3,
			room_ID = 0,
			data_index = 0,
        }
    }
}
rewind_data["1200104"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            },
            {
                alias = "Npc162601",
                script = "Actor/Npc/TempNPC",
                id = 162601,
                pos = "Q1200107Wly",
                scene_id = 3,
                room_ID = 0,
                data_index = 1,
            }
    }
}
rewind_data["1200105"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
            }
    }
}
rewind_data["1200106"] = 
{
    npcs = {
        {
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 1,
        }
    }
}
rewind_data["1200107"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        },
        {
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 1,
        }
    }
}


quest_data = {}


quest_data["1200101"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200005XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}
quest_data["1200102"] = 
{
    npcs = {
        {
            ----派蒙
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                id = 1005,
                pos = "Q1200101Trigger",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}
quest_data["1200103"] = 
{
    npcs = {
        {
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 1,
        }
    }
}
quest_data["1200105"] = 
{
    npcs = {
        {
            ----派蒙
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                id = 1005,
                pos = "Q1200104Trigger",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}
quest_data["1200106"] = 
{
    npcs = {
        {
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 1,
        }
    }
}
quest_data["1200109"] = 
{
    npcs = {
        {
            ---王六爷
            alias = "Npc162601",
            script = "Actor/Npc/TempNPC",
            id = 162601,
            pos = "Q1200107Wly",
            scene_id = 3,
            room_ID = 0,
            data_index = 0,
        }
    },
    gadgets =
    {
        {
            id = 70900201,
            pos = "Q1200107Wly",
            alias = "Goal1", 
            scene_id = 3 , -- optional default : sceneData.DefaultSceneID
            room_id = 0 , -- optional default : 0
            is_show_cutscene = false, -- 宝箱专用配置 optional default : false
            chest_drop_id = 0 , -- 宝箱专用配置 optional default : 0
        }
    }

}
quest_data["1200108"] = 
{
    npcs = {
        {
            ----行秋
                alias = "Npc10045",
                script = "Actor/Quest/Q301/Gaia301",
                id = 10045,
                pos = "Q1200108XQ",
                scene_id = 3,
                room_ID = 0,
                data_index = 0,
        }
    }
}