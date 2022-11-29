-- 任务配置

-- 父任务id

main_id = 1011

sub_ids =
{
    101101,
    101116,
    101102,
    101103,
    101112,
    101104,
    101127,
    101105,
    101113,
    101114,
    101115,
    101106,
    101107,
    101108,
    101109,
}

rewind_data = {}

rewind_data["101104"] = 
{
    npcs = {
        -- {
        --     id = 1006,
        --     alias = "Qin",
        --     script = "Actor/Quest/Q411/Qin",
        --     pos = "Q101101Qin",
        --     scene_id = 3,
        --     data_index = 0,
        -- },

    }
}

rewind_data["101109"] = 
{
    avatar = {
        scene_id = 3,
        pos = "Q101109Avatar"
    },
}



quest_data = {}

quest_data["101101"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101101Zhongli",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q1011Shitou",
            scene_id = 3,
            data_index = 0,
        },
    }
}


quest_data["101104"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q101104Paimon",
            scene_id = 3,
            data_index = 0,
        },
    }
}

quest_data["101105"] = 
{
    gadgets = {
        {
            id = 71700094,
            pos = "Q101105Gadget",
            alias = "Q101105Gadget", 
            scene_id = 3, 
            room_id = 0,  

        },
    }
}

quest_data["101106"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101104Paimon",
            scene_id = 3,
            data_index = 0,
        },
    }
}

quest_data["101107"] = 
{
    npcs = {
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q1011Shitou",
            scene_id = 3,
            data_index = 0,
        },
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101101Zhongli",
            scene_id = 3,
            data_index = 0,
        },
    }
}

quest_data["101108"] = 
{
    gadgets = {
        {
            id = 71700094,
            pos = "Q101108ZL",
            alias = "Q101108Gadget", 
            scene_id = 3, 
            room_id = 0,  

        },
    }
}


quest_data["101109"] = 
{
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101109ZL",
            scene_id = 3,
            data_index = 0,
        },
    }
}