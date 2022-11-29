-- 任务配置

-- 父任务id

main_id = 40911

sub_ids =
{
    4091101,
    4091102,
    4091103,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}
rewind_data["4091103"] = 
{
    npcs = 
    {
        {
            id = 158701,
            alias = "Npc158701",
            script = "Actor/Npc/TempNPC",
            pos = "Q4091103Timaeus",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}


---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["4091102"] = 
{
    npcs = 
    {
        {
            id = 158701,
            alias = "Npc158701",
            script = "Actor/Npc/TempNPC",
            pos = "Q4091103Timaeus",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        }
    }
}