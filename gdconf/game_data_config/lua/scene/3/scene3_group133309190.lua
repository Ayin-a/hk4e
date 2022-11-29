-- 基础信息
local base_info = {
	group_id = 133309190
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 190002,
	gadget_fireBase1 = 190001,
	gadget_fire1 = 190003,
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
	-- 1号基座
	{ config_id = 190001, gadget_id = 70330279, pos = { x = -2615.333, y = -63.007, z = 5669.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 190002, gadget_id = 70330278, pos = { x = -2611.000, y = -74.421, z = 5736.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 190003, gadget_id = 70330257, pos = { x = -2615.333, y = -61.179, z = 5669.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900040, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1190004, name = "GADGET_STATE_CHANGE_190004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190004", action = "action_EVENT_GADGET_STATE_CHANGE_190004" },
	-- 玩法完成
	{ config_id = 1190007, name = "GADGET_STATE_CHANGE_190007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_190007", action = "action_EVENT_GADGET_STATE_CHANGE_190007" },
	-- 保底
	{ config_id = 1190008, name = "GROUP_LOAD_190008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_190008", action = "action_EVENT_GROUP_LOAD_190008", trigger_count = 0 }
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
		gadgets = { 190001, 190002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_190004", "GADGET_STATE_CHANGE_190007", "GROUP_LOAD_190008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_190004(context, evt)
	if 190001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_190007(context, evt)
	if 190002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_190007(context, evt)
	-- 改变指定group组133309174中， configid为174020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309174, 174020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309499) then
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
function condition_EVENT_GROUP_LOAD_190008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309190, 190002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_190008(context, evt)
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "torch3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "torch3", 1, 133309499) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"