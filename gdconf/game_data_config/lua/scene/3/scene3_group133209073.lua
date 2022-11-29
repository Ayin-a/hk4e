-- 基础信息
local base_info = {
	group_id = 133209073
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73001, gadget_id = 70710694, pos = { x = -2569.636, y = 210.877, z = -3800.696 }, rot = { x = 0.000, y = 68.524, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73002, gadget_id = 70710694, pos = { x = -2571.979, y = 210.877, z = -3798.411 }, rot = { x = 0.000, y = 22.733, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73003, gadget_id = 70710694, pos = { x = -2575.299, y = 210.914, z = -3798.422 }, rot = { x = 0.000, y = 337.709, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73004, gadget_id = 70710694, pos = { x = -2577.670, y = 210.923, z = -3800.802 }, rot = { x = 0.000, y = 291.698, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73005, gadget_id = 70710694, pos = { x = -2577.689, y = 210.877, z = -3804.190 }, rot = { x = 0.000, y = 246.070, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73006, gadget_id = 70710695, pos = { x = -2569.636, y = 210.877, z = -3800.696 }, rot = { x = 0.000, y = 68.524, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73007, gadget_id = 70710696, pos = { x = -2571.979, y = 210.877, z = -3798.411 }, rot = { x = 0.000, y = 22.733, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73008, gadget_id = 70710697, pos = { x = -2575.299, y = 210.914, z = -3798.422 }, rot = { x = 0.000, y = 337.709, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73009, gadget_id = 70710698, pos = { x = -2577.670, y = 210.923, z = -3800.802 }, rot = { x = 0.000, y = 291.698, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73010, gadget_id = 70710700, pos = { x = -2577.689, y = 210.877, z = -3804.190 }, rot = { x = 0.000, y = 246.070, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73011, gadget_id = 70710699, pos = { x = -2577.694, y = 210.877, z = -3804.180 }, rot = { x = 0.000, y = 246.070, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 73012, gadget_id = 70710724, pos = { x = -2577.959, y = 212.371, z = -3804.503 }, rot = { x = 0.000, y = 247.925, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 翠光篇CG后刷到suite2
	{ config_id = 1073013, name = "QUEST_FINISH_73013", event = EventType.EVENT_QUEST_FINISH, source = "4006301", condition = "", action = "action_EVENT_QUEST_FINISH_73013", trigger_count = 0 },
	-- 葵之翁CG后刷到suite3
	{ config_id = 1073014, name = "QUEST_FINISH_73014", event = EventType.EVENT_QUEST_FINISH, source = "4006302", condition = "", action = "action_EVENT_QUEST_FINISH_73014", trigger_count = 0 },
	-- 赤人与墨染CG后刷到suite4
	{ config_id = 1073015, name = "QUEST_FINISH_73015", event = EventType.EVENT_QUEST_FINISH, source = "4006303", condition = "", action = "action_EVENT_QUEST_FINISH_73015", trigger_count = 0 },
	-- 结束的早上刷到suite5
	{ config_id = 1073016, name = "QUEST_FINISH_73016", event = EventType.EVENT_QUEST_FINISH, source = "4006304", condition = "", action = "action_EVENT_QUEST_FINISH_73016", trigger_count = 0 },
	-- 揭幕开始刷到suite6
	{ config_id = 1073017, name = "QUEST_FINISH_73017", event = EventType.EVENT_QUEST_FINISH, source = "4006305", condition = "", action = "action_EVENT_QUEST_FINISH_73017", trigger_count = 0 },
	-- 容彩祭主线结束后刷到suite7
	{ config_id = 1073018, name = "QUEST_FINISH_73018", event = EventType.EVENT_QUEST_FINISH, source = "4006307", condition = "", action = "action_EVENT_QUEST_FINISH_73018", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false,
	father_quest = 40063,
	quest_config = {
		[4006301] = {
			{
				state = 3,
				suite = 2
			}
		},
		[4006302] = {
			{
				state = 3,
				suite = 3
			}
		},
		[4006303] = {
			{
				state = 3,
				suite = 4
			}
		},
		[4006304] = {
			{
				state = 3,
				suite = 5
			}
		},
		[4006305] = {
			{
				state = 3,
				suite = 6
			}
		},
		[4006307] = {
			{
				state = 3,
				suite = 7
			}
		}
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 73001, state = 0 },
			{ config_id = 73002, state = 0 },
			{ config_id = 73003, state = 0 },
			{ config_id = 73004, state = 0 },
			{ config_id = 73005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73013" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 73002, state = 0 },
			{ config_id = 73003, state = 0 },
			{ config_id = 73004, state = 0 },
			{ config_id = 73005, state = 0 },
			{ config_id = 73006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73014" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 73003, state = 0 },
			{ config_id = 73004, state = 0 },
			{ config_id = 73005, state = 0 },
			{ config_id = 73006, state = 0 },
			{ config_id = 73007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73015" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 73005, state = 0 },
			{ config_id = 73006, state = 0 },
			{ config_id = 73007, state = 0 },
			{ config_id = 73008, state = 0 },
			{ config_id = 73009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73016" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 73006, state = 0 },
			{ config_id = 73007, state = 0 },
			{ config_id = 73008, state = 0 },
			{ config_id = 73009, state = 0 },
			{ config_id = 73010, state = 0 },
			{ config_id = 73011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73017" },
		npcs = { },
		variables = {
		}
	},
	[6] = {
		gadgets = {
			{ config_id = 73006, state = 0 },
			{ config_id = 73007, state = 0 },
			{ config_id = 73008, state = 0 },
			{ config_id = 73009, state = 0 },
			{ config_id = 73010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_FINISH_73018" },
		npcs = { },
		variables = {
		}
	},
	[7] = {
		gadgets = {
			{ config_id = 73006, state = 0 },
			{ config_id = 73007, state = 0 },
			{ config_id = 73008, state = 0 },
			{ config_id = 73009, state = 0 },
			{ config_id = 73010, state = 0 },
			{ config_id = 73012, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_73013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_73014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_73015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_73016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_73017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_73018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209073, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end