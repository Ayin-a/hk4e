-- 任务配置

-- 父任务id

main_id = 21007

sub_ids =
{
    2100700,--派蒙说话
    2100701,--探寻明蕴镇的异养
    2100702,--寻找宝藏线索
    2100703,--线索A
    2100704,--线索B
    2100705,--线索C
    2100706,--线索D
    2100711,--对话A
    2100712,--对话B
    2100713,--对话C
    2100714,--对话D
    2100709,--防御回滚
    2100707,--前往藏宝的地点
    2100708,--击败敌人
    2100710,--总结对话
    2100715,--挖掘
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}


quest_data = {}

quest_data["2100711"] = --元成
{
    npcs = 
    {
        {
            id = 20072,
            alias = "Npc20072",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100715_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}
quest_data["2100712"] = --元清
{
    npcs = 
    {
        {
            id = 20070,
            alias = "Npc20070",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100709_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["2100713"] = --元良
{
    npcs = 
    {
        {
            id = 20071,
            alias = "Npc20071",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100711_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["2100714"] = --元鸿
{
    npcs = 
    {
        {
            id = 20069,
            alias = "Npc20069",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100713_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}

quest_data["2100710"] = 
{
    npcs = 
    {
        {
            id = 20069,
            alias = "Npc20069",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100717_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
        {
            id = 20070,
            alias = "Npc20070",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100718_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 2,
        },
        {
            id = 20071,
            alias = "Npc20071",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100719_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 3,
        },
        {
            id = 20072,
            alias = "Npc20072",
            script = "Actor/Npc/TempNPC",
            pos = "Q2100720_Target",
            scene_id  = 3,
            room_id = 0,
            data_index = 4,
        }

    }
}

