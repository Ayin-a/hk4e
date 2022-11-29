-- 任务配置

-- 父任务id

main_id = 999

sub_ids =
{
    99901,
    99902,
    99922,
    99923,
}

rewind_data = {}

rewind_data["99901"] = 
{
    avatar = {
        scene_id = 3,
        pos = "Q351FirstQuest"
    },
    npcs = {
        {
            id = 1120,
            alias = "QQ",
            script = "Actor/Npc/TempNpcActor",
            pos = "Q351FirstQuest",
            data_index = 0,
        }
    }
}

rewind_data["99902"] = 
{
    avatar = {
        pos = "Q351FirstClimb"
    },
    npcs = {
        {
            id = 1120,
            alias = "QQ",
            script = "Actor/Npc/TempNpcActor",
            pos = "Q351FirstClimb"
        }
    }
}

quest_data = {}

quest_data["99901"] = 
{
    trial_actors = {

    },
    actors = {
        
    },
    items = {
        -- {
        --     id = 100004,
        --     pos = "Q351FirstQuest",
        --     alias = "Ball",
        -- },
    },
    monsters = {
        {
            id = 20010801,
            pos = "Q351FirstQuest",
        },
        {
            id = 20010801,
            pos = "Q351FirstQuest",
        }
    },
    gadgets = {
        {
            id = 70300018,
            pos = "Q351FirstQuest",
            alias = "Target",
        }
    }
}

quest_data["99907"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
    }
}


quest_data["99908"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
    }
}


quest_data["99909"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
    }
}


quest_data["99913"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
    }
}

quest_data["99914"] = 
{
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q37201Paimon",
            scene_id = 3,
            data_index = 2,
        },
    }
}

quest_data["99922"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
        {
            id = 3133,
            alias = "Npc3133",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "TestNpcYacao",
            scene_id = 3,
            room_id = 0,
            data_index = 2,
        },
    }
}

quest_data["99923"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id  = 3,

        },
    }
}