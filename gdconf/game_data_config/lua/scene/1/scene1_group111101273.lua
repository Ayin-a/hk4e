-- 基础信息
local base_info = {
	group_id = 111101273
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
	-- 区域C的最终宝箱
	{ config_id = 273001, gadget_id = 70211022, pos = { x = 2276.592, y = 265.030, z = -1658.290 }, rot = { x = 0.507, y = 104.803, z = 354.594 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	-- 002火盆
	{ config_id = 273002, gadget_id = 70310001, pos = { x = 2276.591, y = 265.202, z = -1655.647 }, rot = { x = 356.462, y = 0.487, z = 355.511 }, level = 1 },
	-- 003火盆
	{ config_id = 273003, gadget_id = 70310001, pos = { x = 2278.165, y = 265.212, z = -1658.533 }, rot = { x = 354.882, y = 0.462, z = 358.457 }, level = 1 },
	-- 004火盆
	{ config_id = 273004, gadget_id = 70310001, pos = { x = 2266.948, y = 267.254, z = -1643.266 }, rot = { x = 14.296, y = 355.130, z = 336.754 }, level = 1 },
	-- 005火盆
	{ config_id = 273005, gadget_id = 70310001, pos = { x = 2276.520, y = 264.893, z = -1661.422 }, rot = { x = 2.522, y = 359.823, z = 351.987 }, level = 1 },
	-- 006火盆
	{ config_id = 273006, gadget_id = 70310001, pos = { x = 2267.387, y = 268.966, z = -1675.097 }, rot = { x = 0.000, y = 0.013, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 002火盆点火就加1
	{ config_id = 1273007, name = "GADGET_STATE_CHANGE_273007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273007", action = "action_EVENT_GADGET_STATE_CHANGE_273007", trigger_count = 0 },
	-- 002火盆熄火就减1
	{ config_id = 1273008, name = "GADGET_STATE_CHANGE_273008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273008", action = "action_EVENT_GADGET_STATE_CHANGE_273008", trigger_count = 0 },
	-- 003火盆点火就加1
	{ config_id = 1273009, name = "GADGET_STATE_CHANGE_273009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273009", action = "action_EVENT_GADGET_STATE_CHANGE_273009", trigger_count = 0 },
	-- 003火盆熄火就减1
	{ config_id = 1273010, name = "GADGET_STATE_CHANGE_273010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273010", action = "action_EVENT_GADGET_STATE_CHANGE_273010", trigger_count = 0 },
	-- 004火盆点火就加1
	{ config_id = 1273011, name = "GADGET_STATE_CHANGE_273011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273011", action = "action_EVENT_GADGET_STATE_CHANGE_273011", trigger_count = 0 },
	-- 004火盆熄火就减1
	{ config_id = 1273012, name = "GADGET_STATE_CHANGE_273012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273012", action = "action_EVENT_GADGET_STATE_CHANGE_273012", trigger_count = 0 },
	-- 005火盆点火就加1
	{ config_id = 1273013, name = "GADGET_STATE_CHANGE_273013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273013", action = "action_EVENT_GADGET_STATE_CHANGE_273013", trigger_count = 0 },
	-- 005火盆熄火就减1
	{ config_id = 1273014, name = "GADGET_STATE_CHANGE_273014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273014", action = "action_EVENT_GADGET_STATE_CHANGE_273014", trigger_count = 0 },
	-- 006火盆点火就加1
	{ config_id = 1273015, name = "GADGET_STATE_CHANGE_273015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273015", action = "action_EVENT_GADGET_STATE_CHANGE_273015", trigger_count = 0 },
	-- 006火盆熄火就减1
	{ config_id = 1273016, name = "GADGET_STATE_CHANGE_273016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273016", action = "action_EVENT_GADGET_STATE_CHANGE_273016", trigger_count = 0 },
	-- 检测variable是否等于5
	{ config_id = 1273017, name = "VARIABLE_CHANGE_273017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_273017", action = "action_EVENT_VARIABLE_CHANGE_273017", trigger_count = 0 },
	-- 对应区域D的3号方碑
	{ config_id = 1273018, name = "GADGET_STATE_CHANGE_273018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273018", action = "action_EVENT_GADGET_STATE_CHANGE_273018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "111", value = 0, no_refresh = false }
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
		gadgets = { 273001, 273002, 273003, 273004, 273005, 273006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_273007", "GADGET_STATE_CHANGE_273008", "GADGET_STATE_CHANGE_273009", "GADGET_STATE_CHANGE_273010", "GADGET_STATE_CHANGE_273011", "GADGET_STATE_CHANGE_273012", "GADGET_STATE_CHANGE_273013", "GADGET_STATE_CHANGE_273014", "GADGET_STATE_CHANGE_273015", "GADGET_STATE_CHANGE_273016", "VARIABLE_CHANGE_273017", "GADGET_STATE_CHANGE_273018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273007(context, evt)
	if 273002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273007(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273008(context, evt)
	if 273002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273008(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273009(context, evt)
	if 273003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273009(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273010(context, evt)
	if 273003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273010(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273011(context, evt)
	if 273004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273011(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273012(context, evt)
	if 273004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273012(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273013(context, evt)
	if 273005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273013(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273014(context, evt)
	if 0 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273014(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273015(context, evt)
	if 273006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273015(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273016(context, evt)
	if 273006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273016(context, evt)
	-- 针对当前group内变量名为 "111" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "111", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_273017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"111"为5
	if ScriptLib.GetGroupVariableValue(context, "111") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_273017(context, evt)
	-- 将configid为 273001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273018(context, evt)
	if 273001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273018(context, evt)
	-- 改变指定group组111101275中， configid为275003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101275, 275003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end