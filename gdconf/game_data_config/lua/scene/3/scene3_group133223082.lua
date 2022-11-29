-- 基础信息
local base_info = {
	group_id = 133223082
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
	{ config_id = 82001, gadget_id = 70350081, pos = { x = -5964.038, y = 169.284, z = -2710.083 }, rot = { x = 358.146, y = 259.055, z = 1.154 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 82002, gadget_id = 70380283, pos = { x = -5952.295, y = 163.440, z = -2711.409 }, rot = { x = 0.000, y = 297.550, z = 0.000 }, level = 33, route_id = 322300019, start_route = false, persistent = true, area_id = 18 },
	{ config_id = 82007, gadget_id = 70211111, pos = { x = -5968.290, y = 169.337, z = -2707.234 }, rot = { x = 0.000, y = 301.853, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 水面下降
	{ config_id = 1082003, name = "SELECT_OPTION_82003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82003", action = "action_EVENT_SELECT_OPTION_82003" },
	{ config_id = 1082004, name = "GROUP_LOAD_82004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82004", action = "action_EVENT_GROUP_LOAD_82004", trigger_count = 0 },
	{ config_id = 1082005, name = "GADGET_CREATE_82005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82005", action = "action_EVENT_GADGET_CREATE_82005", trigger_count = 0 },
	-- 解谜完成，机关启动
	{ config_id = 1082006, name = "VARIABLE_CHANGE_82006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_82006", action = "action_EVENT_VARIABLE_CHANGE_82006" },
	-- 延迟水位下降
	{ config_id = 1082008, name = "TIME_AXIS_PASS_82008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_82008", action = "action_EVENT_TIME_AXIS_PASS_82008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "water_level", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 82001, 82002 },
		regions = { },
		triggers = { "SELECT_OPTION_82003", "GROUP_LOAD_82004", "GADGET_CREATE_82005", "VARIABLE_CHANGE_82006", "TIME_AXIS_PASS_82008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_82003(context, evt)
	-- 判断是gadgetid 82001 option_id 24
	if 82001 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_82003(context, evt)
	-- 将本组内变量名为 "water_level" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "water_level", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133223082 ；指定config：82001；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223082, 82001, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为82007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 82007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 82001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Water_Start"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Water_Start", {1}, false)
	
	
	-- 通知场景上的所有玩家播放名字为322310003 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 322310003, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_82004(context, evt)
	-- 判断变量"water_level"为1
	if ScriptLib.GetGroupVariableValue(context, "water_level") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 82002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_82005(context, evt)
	-- 判断变量"finish"为3
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 3 then
			return false
	end
	
	if 82001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_82005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223082, 82001, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为3
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82006(context, evt)
	-- 将configid为 82001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223082, 82001, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_82008(context, evt)
	if "Water_Start" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_82008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 82002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end