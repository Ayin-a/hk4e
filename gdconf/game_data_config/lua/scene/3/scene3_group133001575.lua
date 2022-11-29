-- 基础信息
local base_info = {
	group_id = 133001575
}

-- DEFS_MISCS
local defs = {
	RegionID =  575001
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
	[575010] = { config_id = 575010, gadget_id = 70360146, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	[575001] = { config_id = 575001, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1575011, name = "SELECT_DIFFICULTY_575011", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575011", action = "action_EVENT_SELECT_DIFFICULTY_575011", trigger_count = 0 },
	{ config_id = 1575012, name = "SELECT_DIFFICULTY_575012", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575012", action = "action_EVENT_SELECT_DIFFICULTY_575012", trigger_count = 0 },
	{ config_id = 1575013, name = "SELECT_DIFFICULTY_575013", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575013", action = "action_EVENT_SELECT_DIFFICULTY_575013", trigger_count = 0 },
	{ config_id = 1575014, name = "SELECT_DIFFICULTY_575014", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575014", action = "action_EVENT_SELECT_DIFFICULTY_575014", trigger_count = 0 },
	{ config_id = 1575015, name = "SELECT_DIFFICULTY_575015", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575015", action = "action_EVENT_SELECT_DIFFICULTY_575015", trigger_count = 0 },
	{ config_id = 1575016, name = "SELECT_DIFFICULTY_575016", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575016", action = "action_EVENT_SELECT_DIFFICULTY_575016", trigger_count = 0 },
	{ config_id = 1575017, name = "SELECT_DIFFICULTY_575017", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575017", action = "action_EVENT_SELECT_DIFFICULTY_575017", trigger_count = 0 },
	{ config_id = 1575018, name = "SELECT_DIFFICULTY_575018", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575018", action = "action_EVENT_SELECT_DIFFICULTY_575018", trigger_count = 0 },
	{ config_id = 1575019, name = "SELECT_DIFFICULTY_575019", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575019", action = "action_EVENT_SELECT_DIFFICULTY_575019", trigger_count = 0 },
	{ config_id = 1575020, name = "SELECT_DIFFICULTY_575020", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575020", action = "action_EVENT_SELECT_DIFFICULTY_575020", trigger_count = 0 },
	{ config_id = 1575021, name = "SELECT_DIFFICULTY_575021", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575021", action = "action_EVENT_SELECT_DIFFICULTY_575021", trigger_count = 0 },
	{ config_id = 1575022, name = "SELECT_DIFFICULTY_575022", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575022", action = "action_EVENT_SELECT_DIFFICULTY_575022", trigger_count = 0 },
	{ config_id = 1575023, name = "SELECT_DIFFICULTY_575023", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575023", action = "action_EVENT_SELECT_DIFFICULTY_575023", trigger_count = 0 },
	{ config_id = 1575024, name = "SELECT_DIFFICULTY_575024", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575024", action = "action_EVENT_SELECT_DIFFICULTY_575024", trigger_count = 0 },
	{ config_id = 1575025, name = "SELECT_DIFFICULTY_575025", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575025", action = "action_EVENT_SELECT_DIFFICULTY_575025", trigger_count = 0 },
	{ config_id = 1575026, name = "SELECT_DIFFICULTY_575026", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575026", action = "action_EVENT_SELECT_DIFFICULTY_575026", trigger_count = 0 },
	{ config_id = 1575027, name = "SELECT_DIFFICULTY_575027", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575027", action = "action_EVENT_SELECT_DIFFICULTY_575027", trigger_count = 0 },
	{ config_id = 1575028, name = "SELECT_DIFFICULTY_575028", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575028", action = "action_EVENT_SELECT_DIFFICULTY_575028", trigger_count = 0 },
	{ config_id = 1575029, name = "SELECT_DIFFICULTY_575029", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575029", action = "action_EVENT_SELECT_DIFFICULTY_575029", trigger_count = 0 },
	{ config_id = 1575030, name = "SELECT_DIFFICULTY_575030", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575030", action = "action_EVENT_SELECT_DIFFICULTY_575030", trigger_count = 0 },
	{ config_id = 1575031, name = "SELECT_DIFFICULTY_575031", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_575031", action = "action_EVENT_SELECT_DIFFICULTY_575031", trigger_count = 0 }
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
		gadgets = { 575010 },
		regions = { 575001 },
		triggers = { "SELECT_DIFFICULTY_575011", "SELECT_DIFFICULTY_575012", "SELECT_DIFFICULTY_575013", "SELECT_DIFFICULTY_575014", "SELECT_DIFFICULTY_575015", "SELECT_DIFFICULTY_575016", "SELECT_DIFFICULTY_575017", "SELECT_DIFFICULTY_575018", "SELECT_DIFFICULTY_575019", "SELECT_DIFFICULTY_575020", "SELECT_DIFFICULTY_575021", "SELECT_DIFFICULTY_575022", "SELECT_DIFFICULTY_575023", "SELECT_DIFFICULTY_575024", "SELECT_DIFFICULTY_575025", "SELECT_DIFFICULTY_575026", "SELECT_DIFFICULTY_575027", "SELECT_DIFFICULTY_575028", "SELECT_DIFFICULTY_575029", "SELECT_DIFFICULTY_575030", "SELECT_DIFFICULTY_575031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575011(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575011(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001576, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575012(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575012(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001576, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575013(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 1 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575013(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001576, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575014(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575014(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001577, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575015(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575015(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001577, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575016(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575016(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001577, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575017(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575017(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001578, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575018(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575018(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001578, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575019(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 4 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575019(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001578, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575020(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575020(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001579, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575021(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575021(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001579, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575022(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 5 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575022(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001579, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575023(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575023(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001580, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575024(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575024(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001580, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575025(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 7 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575025(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001580, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575026(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575026(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001581, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575027(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575027(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001581, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575028(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 6 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575028(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001581, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575029(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575029(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575030(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575030(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_575031(context, evt)
	if 575010 ~= evt.param1 then
		return false	
	end
	
	if 3 ~= evt.param2 then
		return false
	end
	
	if 3 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_575031(context, evt)
	-- 将configid为 575010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 575010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001582, 4)
	
	return 0
end

require "Activity_ArenaChallengeMain"