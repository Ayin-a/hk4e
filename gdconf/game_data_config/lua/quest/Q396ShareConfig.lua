-- 任务配置

-- 父任务id

main_id = 396

sub_ids =
{
    39601,
    39602,
    39603,
    39604,
    39605,
    39606,
}

rewind_data = {}

rewind_data["39601"] = 
{
    npcs = { 
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q396BBR",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39602Wendy",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q39602Qin",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
    }
}

rewind_data["39602"] = 
{
    npcs = { 
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q396BBR",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39602Wendy",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q39602Qin",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
    }
}

rewind_data["39603"] = 
{
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q396BBR",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39602Wendy",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q39602Qin",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
    }
}

rewind_data["39604"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39602Wendy",
            data_index = 0,
            scene_id  = 1008,
            room_id = 1,

        },
    }
}

rewind_data["39605"] = 
{
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q39605BBR",
            scene_id  = 3,
            room_id = 0,
            data_index = 0,
        },
    },
    avatar = {
        scene_id = 3,
        pos = "Q39605Player"
    },
}

rewind_data["39606"] = 
{
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q371Wendy",
            data_index = 0,
        },
    }
}

quest_data = {}

quest_data["39602"] = 
{
    npcs = { 
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q396BBR",
            scene_id  = 1008,
            room_id = 1,
            data_index = 1,
        },
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39602Wendy",
            scene_id  = 1008,
            room_id = 1,
            data_index = 2,
        },
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q39602Qin",
            scene_id  = 1008,
            room_id = 1,
            data_index = 3,
        },
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q39606Barbara",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        },
    },
    transmit_points = {
        {
            point_id = 1,
            scene_id = 3,
            pos = "Q39606Player"
        },
    }
}

quest_data["39604"] = 
{
    npcs = { 
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39604Wendy2",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    }
}

quest_data["39606"] = 
{
    npcs = { 
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q39606Barbara",
            scene_id  = 3,
            room_id = 0,
            data_index = 0,
        },
    }
}