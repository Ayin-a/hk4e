-- 基础信息
local base_info = {
	group_id = 133307071
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 71002,
	gadget_fireBase1 = 71001,
	gadget_fire1 = 71003,
	gadget_fireBase2 = 71004,
	gadget_fire2 = 71005,
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
	-- 1号基座
	{ config_id = 71001, gadget_id = 70330313, pos = { x = -2032.490, y = 90.104, z = 5976.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 71002, gadget_id = 70330278, pos = { x = -1979.790, y = 89.070, z = 5966.910 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 71003, gadget_id = 70330257, pos = { x = -2032.490, y = 92.069, z = 5976.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700018, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 71004, gadget_id = 70330279, pos = { x = -2012.490, y = 90.424, z = 5956.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 71005, gadget_id = 70330257, pos = { x = -2012.490, y = 92.224, z = 5956.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700019, persistent = true, area_id = 27 },
	{ config_id = 71006, gadget_id = 70211101, pos = { x = -1979.490, y = 89.362, z = 5963.410 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 71009, gadget_id = 70330225, pos = { x = -2042.490, y = 92.834, z = 5976.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 71013, gadget_id = 70330308, pos = { x = -1988.010, y = 88.701, z = 5966.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1071007, name = "GADGET_STATE_CHANGE_71007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71007", action = "action_EVENT_GADGET_STATE_CHANGE_71007" },
	-- 保底
	{ config_id = 1071008, name = "GROUP_LOAD_71008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_71008", action = "action_EVENT_GROUP_LOAD_71008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1071010, name = "GADGET_STATE_CHANGE_71010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71010", action = "action_EVENT_GADGET_STATE_CHANGE_71010" },
	-- 玩法进度埋点
	{ config_id = 1071011, name = "GADGET_STATE_CHANGE_71011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71011", action = "action_EVENT_GADGET_STATE_CHANGE_71011" },
	-- 运营埋点
	{ config_id = 1071012, name = "GADGET_STATE_CHANGE_71012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71012", action = "action_EVENT_GADGET_STATE_CHANGE_71012" }
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
		gadgets = { 71001, 71002, 71004, 71009, 71013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_71007", "GROUP_LOAD_71008", "GADGET_STATE_CHANGE_71010", "GADGET_STATE_CHANGE_71011", "GADGET_STATE_CHANGE_71012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71007(context, evt)
	if 71002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71007(context, evt)
	-- 将本组内变量名为 "isOff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isOff", 1, 133307126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 71013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为71006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 71006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
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
function condition_EVENT_GROUP_LOAD_71008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307071, 71002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71008(context, evt)
	-- 创建id为71006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 71006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71010(context, evt)
	if 71001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71011(context, evt)
	if 71004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71012(context, evt)
	if 71004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"