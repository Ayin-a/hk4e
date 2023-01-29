-- 基础信息
local base_info = {
	group_id = 133307263
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 263002,
	gadget_fireBase1 = 263001,
	gadget_fire1 = 263003,
	gadget_fireBase2 = 263004,
	gadget_fire2 = 263005,
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
	{ config_id = 263001, gadget_id = 70330279, pos = { x = -1455.386, y = -28.348, z = 5660.882 }, rot = { x = 0.000, y = 284.202, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 263002, gadget_id = 70330278, pos = { x = -1360.065, y = -28.202, z = 5604.578 }, rot = { x = 0.000, y = 105.070, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 263003, gadget_id = 70330257, pos = { x = -1455.893, y = -26.799, z = 5661.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700063, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 263004, gadget_id = 70330279, pos = { x = -1387.198, y = -29.079, z = 5636.307 }, rot = { x = 0.000, y = 285.788, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 263005, gadget_id = 70330257, pos = { x = -1387.174, y = -27.422, z = 5636.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330700064, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1263007, name = "GADGET_STATE_CHANGE_263007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263007", action = "action_EVENT_GADGET_STATE_CHANGE_263007" },
	-- 保底
	{ config_id = 1263008, name = "GROUP_LOAD_263008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_263008", action = "action_EVENT_GROUP_LOAD_263008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1263009, name = "GADGET_STATE_CHANGE_263009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263009", action = "action_EVENT_GADGET_STATE_CHANGE_263009" },
	-- 玩法进度埋点
	{ config_id = 1263010, name = "GADGET_STATE_CHANGE_263010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263010", action = "action_EVENT_GADGET_STATE_CHANGE_263010" }
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
		gadgets = { 263001, 263002, 263004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_263007", "GROUP_LOAD_263008", "GADGET_STATE_CHANGE_263009", "GADGET_STATE_CHANGE_263010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263007(context, evt)
	if 263002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "fin_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_1", 1, 133307262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_263008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307263, 263002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_263008(context, evt)
	-- 将本组内变量名为 "fin_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fin_1", 1, 133307262) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263009(context, evt)
	if 263001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263010(context, evt)
	if 263004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"