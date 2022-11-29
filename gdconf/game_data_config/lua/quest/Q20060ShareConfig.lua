-- 任务配置

-- 父任务id

main_id = 20060

sub_ids =
{
    2006001,
    2006002,
    2006003,
    2006004,
    2006005,
    2006006,
    2006007,
    2006008,
    2006009,
    2006010,
}

rewind_data = {}


quest_data = {}

finish_action = {}
fail_action = {}
cancel_action = {}

cancel_action = 
{
	CLIENT = {},
	SERVER = {	
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 
		{
			{"100351"},
		}
	},
}