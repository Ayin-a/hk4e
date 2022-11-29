-- 基础信息
local base_info = {
	group_id = 133310375
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
	-- 1
	{ config_id = 375001, gadget_id = 70400001, pos = { x = -3116.825, y = 133.313, z = 4334.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 2
	{ config_id = 375002, gadget_id = 70400001, pos = { x = -3000.217, y = 142.505, z = 4435.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 3
	{ config_id = 375003, gadget_id = 70400001, pos = { x = -3021.728, y = 112.599, z = 4260.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 4
	{ config_id = 375004, gadget_id = 70400001, pos = { x = -2965.583, y = 4.181, z = 4290.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 5
	{ config_id = 375005, gadget_id = 70400001, pos = { x = -3027.854, y = 116.717, z = 4461.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 6
	{ config_id = 375006, gadget_id = 70400001, pos = { x = -3182.238, y = 80.169, z = 4442.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 7
	{ config_id = 375007, gadget_id = 70400001, pos = { x = -3139.886, y = 71.509, z = 4473.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 8
	{ config_id = 375008, gadget_id = 70400001, pos = { x = -3047.689, y = 38.912, z = 4466.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 9
	{ config_id = 375009, gadget_id = 70400001, pos = { x = -3055.008, y = 35.133, z = 4396.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 10
	{ config_id = 375010, gadget_id = 70400001, pos = { x = -2989.070, y = 16.142, z = 4399.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	-- 11
	{ config_id = 375011, gadget_id = 70400001, pos = { x = -3007.521, y = 17.007, z = 4359.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1375012, name = "VARIABLE_CHANGE_375012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375012", action = "action_EVENT_VARIABLE_CHANGE_375012", trigger_count = 0 },
	-- 2
	{ config_id = 1375013, name = "VARIABLE_CHANGE_375013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375013", action = "action_EVENT_VARIABLE_CHANGE_375013", trigger_count = 0 },
	-- 3
	{ config_id = 1375014, name = "VARIABLE_CHANGE_375014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375014", action = "action_EVENT_VARIABLE_CHANGE_375014", trigger_count = 0 },
	-- 4
	{ config_id = 1375015, name = "VARIABLE_CHANGE_375015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375015", action = "action_EVENT_VARIABLE_CHANGE_375015", trigger_count = 0 },
	-- 5
	{ config_id = 1375016, name = "VARIABLE_CHANGE_375016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375016", action = "action_EVENT_VARIABLE_CHANGE_375016", trigger_count = 0 },
	-- 6
	{ config_id = 1375017, name = "VARIABLE_CHANGE_375017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375017", action = "action_EVENT_VARIABLE_CHANGE_375017", trigger_count = 0 },
	-- 7
	{ config_id = 1375018, name = "VARIABLE_CHANGE_375018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375018", action = "action_EVENT_VARIABLE_CHANGE_375018", trigger_count = 0 },
	-- 8
	{ config_id = 1375019, name = "VARIABLE_CHANGE_375019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375019", action = "action_EVENT_VARIABLE_CHANGE_375019", trigger_count = 0 },
	-- 9
	{ config_id = 1375020, name = "VARIABLE_CHANGE_375020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375020", action = "action_EVENT_VARIABLE_CHANGE_375020", trigger_count = 0 },
	-- 10
	{ config_id = 1375021, name = "VARIABLE_CHANGE_375021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375021", action = "action_EVENT_VARIABLE_CHANGE_375021", trigger_count = 0 },
	-- 11
	{ config_id = 1375022, name = "VARIABLE_CHANGE_375022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_375022", action = "action_EVENT_VARIABLE_CHANGE_375022", trigger_count = 0 },
	-- 1
	{ config_id = 1375023, name = "GROUP_LOAD_375023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375023", action = "action_EVENT_GROUP_LOAD_375023", trigger_count = 0 },
	-- 2
	{ config_id = 1375024, name = "GROUP_LOAD_375024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375024", action = "action_EVENT_GROUP_LOAD_375024", trigger_count = 0 },
	-- 3
	{ config_id = 1375025, name = "GROUP_LOAD_375025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375025", action = "action_EVENT_GROUP_LOAD_375025", trigger_count = 0 },
	-- 4
	{ config_id = 1375026, name = "GROUP_LOAD_375026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375026", action = "action_EVENT_GROUP_LOAD_375026", trigger_count = 0 },
	-- 5
	{ config_id = 1375027, name = "GROUP_LOAD_375027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375027", action = "action_EVENT_GROUP_LOAD_375027", trigger_count = 0 },
	-- 6
	{ config_id = 1375028, name = "GROUP_LOAD_375028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375028", action = "action_EVENT_GROUP_LOAD_375028", trigger_count = 0 },
	-- 7
	{ config_id = 1375029, name = "GROUP_LOAD_375029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375029", action = "action_EVENT_GROUP_LOAD_375029", trigger_count = 0 },
	-- 8
	{ config_id = 1375030, name = "GROUP_LOAD_375030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375030", action = "action_EVENT_GROUP_LOAD_375030", trigger_count = 0 },
	-- 9
	{ config_id = 1375031, name = "GROUP_LOAD_375031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375031", action = "action_EVENT_GROUP_LOAD_375031", trigger_count = 0 },
	-- 10
	{ config_id = 1375032, name = "GROUP_LOAD_375032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375032", action = "action_EVENT_GROUP_LOAD_375032", trigger_count = 0 },
	-- 11
	{ config_id = 1375033, name = "GROUP_LOAD_375033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375033", action = "action_EVENT_GROUP_LOAD_375033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone01", value = 0, no_refresh = true },
	{ config_id = 2, name = "stone02", value = 1, no_refresh = true },
	{ config_id = 3, name = "stone03", value = 0, no_refresh = true },
	{ config_id = 4, name = "stone04", value = 0, no_refresh = true },
	{ config_id = 5, name = "stone05", value = 0, no_refresh = true },
	{ config_id = 6, name = "stone06", value = 0, no_refresh = true },
	{ config_id = 7, name = "stone07", value = 1, no_refresh = true },
	{ config_id = 8, name = "stone08", value = 1, no_refresh = true },
	{ config_id = 9, name = "stone09", value = 1, no_refresh = true },
	{ config_id = 10, name = "stone10", value = 1, no_refresh = true },
	{ config_id = 11, name = "stone11", value = 1, no_refresh = true }
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
		gadgets = { 375001, 375002, 375003, 375004, 375005, 375006, 375007, 375008, 375009, 375010, 375011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_375012", "VARIABLE_CHANGE_375013", "VARIABLE_CHANGE_375014", "VARIABLE_CHANGE_375015", "VARIABLE_CHANGE_375016", "VARIABLE_CHANGE_375017", "VARIABLE_CHANGE_375018", "VARIABLE_CHANGE_375019", "VARIABLE_CHANGE_375020", "VARIABLE_CHANGE_375021", "VARIABLE_CHANGE_375022", "GROUP_LOAD_375023", "GROUP_LOAD_375024", "GROUP_LOAD_375025", "GROUP_LOAD_375026", "GROUP_LOAD_375027", "GROUP_LOAD_375028", "GROUP_LOAD_375029", "GROUP_LOAD_375030", "GROUP_LOAD_375031", "GROUP_LOAD_375032", "GROUP_LOAD_375033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone01"为1
	if ScriptLib.GetGroupVariableValue(context, "stone01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone02"为1
	if ScriptLib.GetGroupVariableValue(context, "stone02") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone03"为1
	if ScriptLib.GetGroupVariableValue(context, "stone03") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone04"为1
	if ScriptLib.GetGroupVariableValue(context, "stone04") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone05"为1
	if ScriptLib.GetGroupVariableValue(context, "stone05") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone06"为1
	if ScriptLib.GetGroupVariableValue(context, "stone06") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone07"为1
	if ScriptLib.GetGroupVariableValue(context, "stone07") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375018(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone08"为1
	if ScriptLib.GetGroupVariableValue(context, "stone08") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone09"为1
	if ScriptLib.GetGroupVariableValue(context, "stone09") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375020(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone10"为1
	if ScriptLib.GetGroupVariableValue(context, "stone10") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_375022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone11"为1
	if ScriptLib.GetGroupVariableValue(context, "stone11") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375023(context, evt)
	-- 判断变量"stone01"为1
	if ScriptLib.GetGroupVariableValue(context, "stone01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375023(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375024(context, evt)
	-- 判断变量"stone02"为1
	if ScriptLib.GetGroupVariableValue(context, "stone02") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375025(context, evt)
	-- 判断变量"stone03"为1
	if ScriptLib.GetGroupVariableValue(context, "stone03") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375026(context, evt)
	-- 判断变量"stone04"为1
	if ScriptLib.GetGroupVariableValue(context, "stone04") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375026(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375027(context, evt)
	-- 判断变量"stone05"为1
	if ScriptLib.GetGroupVariableValue(context, "stone05") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375027(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375028(context, evt)
	-- 判断变量"stone06"为1
	if ScriptLib.GetGroupVariableValue(context, "stone06") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375029(context, evt)
	-- 判断变量"stone07"为1
	if ScriptLib.GetGroupVariableValue(context, "stone07") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375029(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375030(context, evt)
	-- 判断变量"stone08"为1
	if ScriptLib.GetGroupVariableValue(context, "stone08") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375030(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375031(context, evt)
	-- 判断变量"stone09"为1
	if ScriptLib.GetGroupVariableValue(context, "stone09") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375031(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375032(context, evt)
	-- 判断变量"stone10"为1
	if ScriptLib.GetGroupVariableValue(context, "stone10") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375032(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375033(context, evt)
	-- 判断变量"stone11"为1
	if ScriptLib.GetGroupVariableValue(context, "stone11") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375033(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133310375, EntityType.GADGET, 375011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end