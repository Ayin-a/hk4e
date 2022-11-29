-- 基础信息
local base_info = {
	group_id = 177005161
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
	{ config_id = 161001, gadget_id = 70290279, pos = { x = 305.041, y = 125.656, z = 882.343 }, rot = { x = 0.000, y = 190.811, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 161002, gadget_id = 70310011, pos = { x = 321.879, y = 119.659, z = 881.743 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 161003, gadget_id = 70310011, pos = { x = 297.875, y = 123.092, z = 865.239 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 161004, gadget_id = 70310011, pos = { x = 301.061, y = 123.168, z = 879.591 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 161006, gadget_id = 70211160, pos = { x = 307.939, y = 121.139, z = 876.399 }, rot = { x = 2.283, y = 95.640, z = 359.415 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161005, name = "GADGET_STATE_CHANGE_161005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161005", action = "action_EVENT_GADGET_STATE_CHANGE_161005", trigger_count = 0 },
	{ config_id = 1161007, name = "GADGET_STATE_CHANGE_161007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161007", action = "action_EVENT_GADGET_STATE_CHANGE_161007", trigger_count = 0 },
	{ config_id = 1161008, name = "VARIABLE_CHANGE_161008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_161008", action = "action_EVENT_VARIABLE_CHANGE_161008" },
	{ config_id = 1161010, name = "GADGET_STATE_CHANGE_161010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161010", action = "action_EVENT_GADGET_STATE_CHANGE_161010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "change", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 161001, 161002, 161003, 161004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_161005", "GADGET_STATE_CHANGE_161007", "VARIABLE_CHANGE_161008", "GADGET_STATE_CHANGE_161010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161005(context, evt)
	if 161002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161005(context, evt)
	-- 针对当前group内变量名为 "change" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161007(context, evt)
	if 161003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161007(context, evt)
	-- 针对当前group内变量名为 "change" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_161008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"change"为3
	if ScriptLib.GetGroupVariableValue(context, "change") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_161008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为161006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161010(context, evt)
	if 161004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_161010(context, evt)
	-- 针对当前group内变量名为 "change" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end