-- 任务配置

-- 父任务id

main_id = 21024

sub_ids =
{
    2102401,--与兰达对话
    2102402,--调查线索总
    2102403,--花洲矿洞总
    2102404,--花洲茅草屋
    2102405,--花洲石门宝儿
    2102406,--与宝儿对话1
    2102407,--清理怪物营地
    2102408,--与宝儿对话2
    2102409,--与兰达对话
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}


quest_data = {}
quest_data["2102401"] = 
{
    npcs = 
    {
        {
            id = 220301,
            alias = "Npc220301",
            script = "Actor/Npc/TempNPC",
            pos = "Q21024_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }

    }
}

quest_data["2102405"] = 
{
    npcs = 
    {
        {
            id = 242101,
            alias = "Npc242101",
            script = "Actor/Npc/TempNPC",
            pos = "Q2102405_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }

    }
}

quest_data["2102408"] = 
{
    npcs = 
    {
        {
            id = 220301,
            alias = "Npc220301",
            script = "Actor/Npc/TempNPC",
            pos = "Q21024_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }

    }
}