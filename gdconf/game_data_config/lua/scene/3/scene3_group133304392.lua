-- 基础信息
local base_info = {
	group_id = 133304392
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
	{ config_id = 392001, gadget_id = 70900050, pos = { x = -1060.024, y = 172.042, z = 2193.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 392002, gadget_id = 70900050, pos = { x = -1042.834, y = 184.232, z = 2165.542 }, rot = { x = 16.138, y = 1.584, z = 11.141 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 392003, gadget_id = 70900050, pos = { x = -1064.798, y = 171.206, z = 2157.106 }, rot = { x = 341.536, y = 111.339, z = 8.527 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 392004, gadget_id = 70310200, pos = { x = -1060.024, y = 175.193, z = 2193.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 392005, gadget_id = 70310200, pos = { x = -1043.120, y = 187.221, z = 2166.099 }, rot = { x = 0.000, y = 308.533, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 392006, gadget_id = 70310200, pos = { x = -1065.223, y = 173.865, z = 2157.587 }, rot = { x = 0.000, y = 38.311, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 392007, gadget_id = 70330255, pos = { x = -1060.033, y = 176.546, z = 2193.325 }, rot = { x = 4.453, y = 185.620, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 392008, gadget_id = 70330255, pos = { x = -1042.970, y = 187.528, z = 2165.993 }, rot = { x = 28.253, y = 320.210, z = 357.215 }, level = 27, area_id = 24 },
	{ config_id = 392009, gadget_id = 70330255, pos = { x = -1064.947, y = 174.208, z = 2157.602 }, rot = { x = 335.694, y = 68.396, z = 1.017 }, level = 27, area_id = 24 },
	{ config_id = 392016, gadget_id = 70211131, pos = { x = -1055.513, y = 172.733, z = 2189.223 }, rot = { x = 354.110, y = 126.912, z = 357.269 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1392010, name = "GADGET_STATE_CHANGE_392010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_392010", action = "action_EVENT_GADGET_STATE_CHANGE_392010", trigger_count = 0 },
	{ config_id = 1392011, name = "GADGET_STATE_CHANGE_392011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_392011", action = "action_EVENT_GADGET_STATE_CHANGE_392011", trigger_count = 0 },
	{ config_id = 1392012, name = "GADGET_STATE_CHANGE_392012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_392012", action = "action_EVENT_GADGET_STATE_CHANGE_392012", trigger_count = 0 },
	-- init play
	{ config_id = 1392013, name = "VARIABLE_CHANGE_392013", event = EventType.EVENT_VARIABLE_CHANGE, source = "init", condition = "condition_EVENT_VARIABLE_CHANGE_392013", action = "action_EVENT_VARIABLE_CHANGE_392013", trigger_count = 0 },
	-- timeup rollback
	{ config_id = 1392014, name = "TIME_AXIS_PASS_392014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_392014", action = "action_EVENT_TIME_AXIS_PASS_392014", trigger_count = 0 },
	-- success&notify
	{ config_id = 1392015, name = "GADGET_STATE_CHANGE_392015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_392015", action = "action_EVENT_GADGET_STATE_CHANGE_392015", trigger_count = 0 },
	-- refresh if ongoing
	{ config_id = 1392017, name = "GROUP_LOAD_392017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_392017", action = "action_EVENT_GROUP_LOAD_392017", trigger_count = 0 },
	-- create chest if success
	{ config_id = 1392018, name = "GROUP_LOAD_392018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_392018", action = "action_EVENT_GROUP_LOAD_392018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "init", value = 0, no_refresh = false },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
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
		gadgets = { 392001, 392002, 392003, 392004, 392005, 392006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_392010", "GADGET_STATE_CHANGE_392011", "GADGET_STATE_CHANGE_392012", "VARIABLE_CHANGE_392013", "TIME_AXIS_PASS_392014", "GADGET_STATE_CHANGE_392015", "GROUP_LOAD_392017", "GROUP_LOAD_392018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 392007, 392008, 392009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_392010(context, evt)
	if 392004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_392010(context, evt)
	-- 将本组内变量名为 "init" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "init", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 392003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 392003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为392007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 392007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_392011(context, evt)
	if 392005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_392011(context, evt)
	-- 将本组内变量名为 "init" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "init", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 392001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 392001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为392008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 392008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_392012(context, evt)
	if 392006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_392012(context, evt)
	-- 将本组内变量名为 "init" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "init", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 392002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 392002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为392009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 392009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_392013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"init"为1
	if ScriptLib.GetGroupVariableValue(context, "init") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_392013(context, evt)
	-- 创建标识为"pass"，时间节点为{50}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "pass", {50}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_392014(context, evt)
	if "pass" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_392014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304392, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "init" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "init", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_392015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304392, 392001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304392, 392002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304392, 392003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_392015(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组133304026中， configid为26002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133304026, 26002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为392016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 392016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304392, 2)
	
	-- 停止标识为"pass"的时间轴
	ScriptLib.EndTimeAxis(context, "pass")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_392017(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_392017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304392, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_392018(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_392018(context, evt)
	-- 创建id为392016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 392016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end