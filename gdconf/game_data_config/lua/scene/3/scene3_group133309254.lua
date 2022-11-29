-- 基础信息
local base_info = {
	group_id = 133309254
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 254002,
	gadget_fireBase1 = 254004,
	gadget_fire1 = 254005,
	gadget_fireBase2 = 0,
	gadget_fire2 = 0,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	{ config_id = 254002, gadget_id = 70330278, pos = { x = -2561.000, y = -24.134, z = 5476.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 2号基座
	{ config_id = 254004, gadget_id = 70330279, pos = { x = -2520.696, y = -15.186, z = 5571.488 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 254005, gadget_id = 70330257, pos = { x = -2520.696, y = -13.392, z = 5571.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900083, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号激活
	{ config_id = 1254006, name = "GADGET_STATE_CHANGE_254006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254006", action = "action_EVENT_GADGET_STATE_CHANGE_254006" },
	-- 玩法完成
	{ config_id = 1254007, name = "GADGET_STATE_CHANGE_254007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254007", action = "action_EVENT_GADGET_STATE_CHANGE_254007" },
	-- 玩法开始埋点
	{ config_id = 1254008, name = "GADGET_STATE_CHANGE_254008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254008", action = "action_EVENT_GADGET_STATE_CHANGE_254008" },
	-- 玩法进度埋点
	{ config_id = 1254009, name = "GADGET_STATE_CHANGE_254009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_254009", action = "action_EVENT_GADGET_STATE_CHANGE_254009" },
	-- 火种释放
	{ config_id = 1254010, name = "VARIABLE_CHANGE_254010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_254010", action = "action_EVENT_VARIABLE_CHANGE_254010" },
	-- 火种释放保底
	{ config_id = 1254011, name = "GROUP_LOAD_254011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_254011", action = "action_EVENT_GROUP_LOAD_254011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 254001, gadget_id = 70330279, pos = { x = -2570.540, y = -14.444, z = 5620.223 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
		{ config_id = 254003, gadget_id = 70330257, pos = { x = -2570.540, y = -12.634, z = 5620.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900082, persistent = true, area_id = 27 }
	}
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
		gadgets = { 254002, 254004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_254006", "GADGET_STATE_CHANGE_254007", "GADGET_STATE_CHANGE_254008", "GADGET_STATE_CHANGE_254009", "VARIABLE_CHANGE_254010", "GROUP_LOAD_254011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254006(context, evt)
	-- 检测config_id为254004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 254004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254006(context, evt)
	-- 针对当前group内变量名为 "fight" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fight", 1, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254007(context, evt)
	if 254002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254007(context, evt)
	-- 针对当前group内变量名为 "chestopen" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chestopen", 1, 133309253) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254008(context, evt)
	if 254004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_254009(context, evt)
	if 254004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_254009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_254010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309254, 254004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_254010(context, evt)
	-- 将configid为 254004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 254004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_254011(context, evt)
	-- 判断变量"active"为1
	if ScriptLib.GetGroupVariableValue(context, "active") ~= 1 then
			return false
	end
	
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309254, 254004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_254011(context, evt)
	-- 将configid为 254004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 254004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"