-- 基础信息
local base_info = {
	group_id = 133313109
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 109002,
	gadget_fireBase1 = 109001,
	gadget_fire1 = 109003,
	gadget_fireBase2 = 109004,
	gadget_fire2 = 109005,
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
	{ config_id = 109001, gadget_id = 70330279, pos = { x = -422.452, y = -35.477, z = 5560.923 }, rot = { x = 0.000, y = 255.528, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 109002, gadget_id = 70330278, pos = { x = -324.106, y = -32.091, z = 5579.938 }, rot = { x = 0.000, y = 255.263, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 109003, gadget_id = 70330257, pos = { x = -422.443, y = -33.713, z = 5560.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300028, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 109004, gadget_id = 70330279, pos = { x = -348.826, y = -32.370, z = 5590.967 }, rot = { x = 0.000, y = 345.445, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 109005, gadget_id = 70330257, pos = { x = -348.863, y = -30.696, z = 5590.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300029, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1109007, name = "GADGET_STATE_CHANGE_109007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109007", action = "action_EVENT_GADGET_STATE_CHANGE_109007" },
	-- 保底
	{ config_id = 1109008, name = "GROUP_LOAD_109008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_109008", action = "action_EVENT_GROUP_LOAD_109008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1109009, name = "GADGET_STATE_CHANGE_109009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109009", action = "action_EVENT_GADGET_STATE_CHANGE_109009" },
	-- 玩法进度埋点
	{ config_id = 1109010, name = "GADGET_STATE_CHANGE_109010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109010", action = "action_EVENT_GADGET_STATE_CHANGE_109010" }
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
		-- description = Fire_1,
		monsters = { },
		gadgets = { 109001, 109002, 109004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109007", "GROUP_LOAD_109008", "GADGET_STATE_CHANGE_109009", "GADGET_STATE_CHANGE_109010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	if 109002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	-- 将本组内变量名为 "fire_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fire_1", 1, 133313111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
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
function condition_EVENT_GROUP_LOAD_109008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313109, 109002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_109008(context, evt)
	-- 将本组内变量名为 "fire_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fire_1", 1, 133313111) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109009(context, evt)
	if 109001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_109010(context, evt)
	if 109004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"