-- 任务配置

-- 父任务id

main_id = 20047

sub_ids =
{
    2004701,
    2004702,
    2004703,
    2004704,
    2004705,
    2004706,
    2004707,
}

---存放断线重连生成内容，和questdata配的存档点对应

rewind_data = {}

quest_data = {}

finish_action = {}
fail_action = {}
cancel_action = {}

cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_REFRESH_GROUP_SUITE = 
		{
            {"3","133003490,1"},
		},
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
		}
	},
}
