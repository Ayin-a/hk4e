-- 任务配置

--@region
main_id = 400

sub_ids =
{
    40001,
}
--@endregion

--@region 任务回滚配置
rewind_data = {}

rewind_data["40001"] = 
{
    npcs = {
    }
}
--@endregion

--@region 服务器信息配置
quest_data = {}

quest_data["40001"] = 
{
	npcs = 
	{
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q39604Wendy3",
            scene_id  = 3,
            room_id = 0,
            data_index = 1,
        },
    },
}
--@endregion