-- 基础信息
local base_info = {
	group_id = 133209014
}

-- DEFS_MISCS
local defs = {
        inner_region = 14023,
        outer_region = 14023,
        related_region = 14023,
        group_id = 133209014
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
	[14040] = { config_id = 14040, gadget_id = 70310008, pos = { x = -2184.930, y = 198.658, z = -3493.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	[14023] = { config_id = 14023, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 击飞挑战-Extra
	{ config_id = 1014001, name = "SELECT_DIFFICULTY_14001", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14001", action = "action_EVENT_SELECT_DIFFICULTY_14001", trigger_count = 0 },
	-- 遗迹怪-简单难度
	{ config_id = 1014002, name = "SELECT_DIFFICULTY_14002", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14002", action = "action_EVENT_SELECT_DIFFICULTY_14002", trigger_count = 0 },
	-- 遗迹怪-普通难度
	{ config_id = 1014003, name = "SELECT_DIFFICULTY_14003", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14003", action = "action_EVENT_SELECT_DIFFICULTY_14003", trigger_count = 0 },
	-- 遗迹怪-困难难度
	{ config_id = 1014004, name = "SELECT_DIFFICULTY_14004", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14004", action = "action_EVENT_SELECT_DIFFICULTY_14004", trigger_count = 0 },
	-- 深渊使徒/深渊咏者-简单难度
	{ config_id = 1014005, name = "SELECT_DIFFICULTY_14005", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14005", action = "action_EVENT_SELECT_DIFFICULTY_14005", trigger_count = 0 },
	-- 深渊使徒/深渊咏者-普通难度
	{ config_id = 1014006, name = "SELECT_DIFFICULTY_14006", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14006", action = "action_EVENT_SELECT_DIFFICULTY_14006", trigger_count = 0 },
	-- 深渊使徒/深渊咏者-困难难度
	{ config_id = 1014007, name = "SELECT_DIFFICULTY_14007", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14007", action = "action_EVENT_SELECT_DIFFICULTY_14007", trigger_count = 0 },
	-- 雷电力场-简单难度
	{ config_id = 1014008, name = "SELECT_DIFFICULTY_14008", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14008", action = "action_EVENT_SELECT_DIFFICULTY_14008", trigger_count = 0 },
	-- 雷电力场-普通难度
	{ config_id = 1014009, name = "SELECT_DIFFICULTY_14009", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14009", action = "action_EVENT_SELECT_DIFFICULTY_14009", trigger_count = 0 },
	-- 雷电力场-困难难度
	{ config_id = 1014010, name = "SELECT_DIFFICULTY_14010", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14010", action = "action_EVENT_SELECT_DIFFICULTY_14010", trigger_count = 0 },
	-- 击飞挑战-简单难度
	{ config_id = 1014011, name = "SELECT_DIFFICULTY_14011", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14011", action = "action_EVENT_SELECT_DIFFICULTY_14011", trigger_count = 0 },
	-- 击飞挑战-普通难度
	{ config_id = 1014012, name = "SELECT_DIFFICULTY_14012", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14012", action = "action_EVENT_SELECT_DIFFICULTY_14012", trigger_count = 0 },
	-- 击飞挑战-困难难度
	{ config_id = 1014013, name = "SELECT_DIFFICULTY_14013", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14013", action = "action_EVENT_SELECT_DIFFICULTY_14013", trigger_count = 0 },
	-- 雷暴石挑战-简单难度
	{ config_id = 1014014, name = "SELECT_DIFFICULTY_14014", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14014", action = "action_EVENT_SELECT_DIFFICULTY_14014", trigger_count = 0 },
	-- 雷暴石挑战-普通难度
	{ config_id = 1014015, name = "SELECT_DIFFICULTY_14015", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14015", action = "action_EVENT_SELECT_DIFFICULTY_14015", trigger_count = 0 },
	-- 雷暴石挑战-困难难度
	{ config_id = 1014016, name = "SELECT_DIFFICULTY_14016", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14016", action = "action_EVENT_SELECT_DIFFICULTY_14016", trigger_count = 0 },
	-- 电桩挑战-简单难度
	{ config_id = 1014017, name = "SELECT_DIFFICULTY_14017", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14017", action = "action_EVENT_SELECT_DIFFICULTY_14017", trigger_count = 0 },
	-- 电桩挑战-普通难度
	{ config_id = 1014018, name = "SELECT_DIFFICULTY_14018", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14018", action = "action_EVENT_SELECT_DIFFICULTY_14018", trigger_count = 0 },
	-- 电桩挑战-困难难度
	{ config_id = 1014019, name = "SELECT_DIFFICULTY_14019", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14019", action = "action_EVENT_SELECT_DIFFICULTY_14019", trigger_count = 0 },
	-- 飞雷核挑战-简单难度
	{ config_id = 1014020, name = "SELECT_DIFFICULTY_14020", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14020", action = "action_EVENT_SELECT_DIFFICULTY_14020", trigger_count = 0 },
	-- 飞雷核挑战-普通难度
	{ config_id = 1014021, name = "SELECT_DIFFICULTY_14021", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14021", action = "action_EVENT_SELECT_DIFFICULTY_14021", trigger_count = 0 },
	-- 飞雷核挑战-困难难度
	{ config_id = 1014022, name = "SELECT_DIFFICULTY_14022", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14022", action = "action_EVENT_SELECT_DIFFICULTY_14022", trigger_count = 0 },
	-- 雷暴石挑战-Extra
	{ config_id = 1014025, name = "SELECT_DIFFICULTY_14025", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14025", action = "action_EVENT_SELECT_DIFFICULTY_14025", trigger_count = 0 },
	-- 电桩挑战-Extra
	{ config_id = 1014026, name = "SELECT_DIFFICULTY_14026", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14026", action = "action_EVENT_SELECT_DIFFICULTY_14026", trigger_count = 0 },
	{ config_id = 1014027, name = "SELECT_OPTION_14027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14027", action = "action_EVENT_SELECT_OPTION_14027" },
	{ config_id = 1014028, name = "SELECT_OPTION_14028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14028", action = "action_EVENT_SELECT_OPTION_14028" },
	{ config_id = 1014029, name = "SELECT_OPTION_14029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14029", action = "action_EVENT_SELECT_OPTION_14029" },
	{ config_id = 1014030, name = "SELECT_OPTION_14030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14030", action = "action_EVENT_SELECT_OPTION_14030" },
	-- 飞雷核挑战-Extra
	{ config_id = 1014031, name = "SELECT_DIFFICULTY_14031", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14031", action = "action_EVENT_SELECT_DIFFICULTY_14031", trigger_count = 0 },
	-- 深渊使徒/深渊咏者-Extra
	{ config_id = 1014032, name = "SELECT_DIFFICULTY_14032", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14032", action = "action_EVENT_SELECT_DIFFICULTY_14032", trigger_count = 0 },
	-- 遗迹怪-Extra
	{ config_id = 1014033, name = "SELECT_DIFFICULTY_14033", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14033", action = "action_EVENT_SELECT_DIFFICULTY_14033", trigger_count = 0 },
	-- 雷电力场-Extra
	{ config_id = 1014034, name = "SELECT_DIFFICULTY_14034", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_14034", action = "action_EVENT_SELECT_DIFFICULTY_14034", trigger_count = 0 }
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
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 14040 },
		regions = { 14023 },
		triggers = { "SELECT_DIFFICULTY_14001", "SELECT_DIFFICULTY_14002", "SELECT_DIFFICULTY_14003", "SELECT_DIFFICULTY_14004", "SELECT_DIFFICULTY_14005", "SELECT_DIFFICULTY_14006", "SELECT_DIFFICULTY_14007", "SELECT_DIFFICULTY_14008", "SELECT_DIFFICULTY_14009", "SELECT_DIFFICULTY_14010", "SELECT_DIFFICULTY_14011", "SELECT_DIFFICULTY_14012", "SELECT_DIFFICULTY_14013", "SELECT_DIFFICULTY_14014", "SELECT_DIFFICULTY_14015", "SELECT_DIFFICULTY_14016", "SELECT_DIFFICULTY_14017", "SELECT_DIFFICULTY_14018", "SELECT_DIFFICULTY_14019", "SELECT_DIFFICULTY_14020", "SELECT_DIFFICULTY_14021", "SELECT_DIFFICULTY_14022", "SELECT_DIFFICULTY_14025", "SELECT_DIFFICULTY_14026", "SELECT_OPTION_14027", "SELECT_OPTION_14028", "SELECT_OPTION_14029", "SELECT_OPTION_14030", "SELECT_DIFFICULTY_14031", "SELECT_DIFFICULTY_14032", "SELECT_DIFFICULTY_14033", "SELECT_DIFFICULTY_14034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14001(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14001(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209010, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14002(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14002(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209013, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14003(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14003(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209013, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14004(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14004(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209013, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14005(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14005(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14006(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14006(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14007(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14007(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209012, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14008(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14008(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14009(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14009(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14010(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14010(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14011(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14011(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14012(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14012(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209010, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14013(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14013(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14014(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14014(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14015(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14015(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14016(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14016(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14017(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14017(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14018(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14018(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14019(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14019(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14020(context, evt)
	
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14020(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14021(context, evt)
	
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14021(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14022(context, evt)
	
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14022(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14025(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14025(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14026(context, evt)
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14026(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14027(context, evt)
	-- 判断是gadgetid 14025 option_id 4100
	if 14025 ~= evt.param1 then
		return false	
	end
	
	if 4100 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14027(context, evt)
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4100；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4101；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14028(context, evt)
	-- 判断是gadgetid 14025 option_id 4101
	if 14025 ~= evt.param1 then
		return false	
	end
	
	if 4101 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14028(context, evt)
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4100；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4101；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14029(context, evt)
	-- 判断是gadgetid 14025 option_id 4102
	if 14025 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14029(context, evt)
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4100；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4101；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14030(context, evt)
	-- 判断是gadgetid 14025 option_id 4103
	if 14025 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14030(context, evt)
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4100；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4101；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133209014 ；指定config：14025；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209014, 14025, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14031(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14031(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14032(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14032(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209012, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14033(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14033(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209013, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_14034(context, evt)
	
	
	if 4 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_14034(context, evt)
	-- 改变指定group组133209029中， configid为29001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133209029, 29001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 5)
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"