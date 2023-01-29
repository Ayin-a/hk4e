-- 基础信息
local base_info = {
	group_id = 133313201
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 201002,
	gadget_fireBase1 = 201001,
	gadget_fire1 = 201003,
	gadget_fireBase2 = 201004,
	gadget_fire2 = 201005,
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
	{ config_id = 201001, gadget_id = 70330279, pos = { x = -772.645, y = -268.628, z = 5687.039 }, rot = { x = 0.000, y = 354.337, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 201002, gadget_id = 70330278, pos = { x = -800.421, y = -263.857, z = 5773.092 }, rot = { x = 0.000, y = 354.290, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 201003, gadget_id = 70330257, pos = { x = -772.613, y = -266.874, z = 5687.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300068, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 201004, gadget_id = 70330279, pos = { x = -761.156, y = -263.154, z = 5723.197 }, rot = { x = 0.000, y = 354.315, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 201005, gadget_id = 70330257, pos = { x = -761.160, y = -261.534, z = 5723.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300069, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1201007, name = "GADGET_STATE_CHANGE_201007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201007", action = "action_EVENT_GADGET_STATE_CHANGE_201007" },
	-- 保底
	{ config_id = 1201008, name = "GROUP_LOAD_201008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_201008", action = "action_EVENT_GROUP_LOAD_201008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1201009, name = "GADGET_STATE_CHANGE_201009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201009", action = "action_EVENT_GADGET_STATE_CHANGE_201009" },
	-- 玩法进度埋点
	{ config_id = 1201010, name = "GADGET_STATE_CHANGE_201010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_201010", action = "action_EVENT_GADGET_STATE_CHANGE_201010" }
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
		gadgets = { 201001, 201002, 201004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_201007", "GROUP_LOAD_201008", "GADGET_STATE_CHANGE_201009", "GADGET_STATE_CHANGE_201010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_201007(context, evt)
	if 201002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "unlock_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_2", 1, 133313196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_201008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313201, 201002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_201008(context, evt)
	-- 将本组内变量名为 "unlock_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_2", 1, 133313196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_201009(context, evt)
	if 201001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	if 201004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_201010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"