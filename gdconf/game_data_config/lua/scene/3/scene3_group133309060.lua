-- 基础信息
local base_info = {
	group_id = 133309060
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 60002,
	gadget_fireBase1 = 60001,
	gadget_fire1 = 60003,
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
	{ config_id = 60001, gadget_id = 70330279, pos = { x = -2366.006, y = 158.497, z = 5163.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 60002, gadget_id = 70330278, pos = { x = -2321.003, y = 163.149, z = 5253.856 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 1号火种
	{ config_id = 60003, gadget_id = 70330257, pos = { x = -2366.006, y = 160.314, z = 5163.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900126, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始埋点
	{ config_id = 1060004, name = "GADGET_STATE_CHANGE_60004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60004", action = "action_EVENT_GADGET_STATE_CHANGE_60004" },
	-- 玩法完成
	{ config_id = 1060007, name = "GADGET_STATE_CHANGE_60007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60007", action = "action_EVENT_GADGET_STATE_CHANGE_60007" }
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
		gadgets = { 60001, 60002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_60004", "GADGET_STATE_CHANGE_60007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60004(context, evt)
	if 60001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60004(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_60007(context, evt)
	if 60002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60007(context, evt)
	-- 针对当前group内变量名为 "active" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "active", 1, 133309165) then
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

require "BlackBoxPlay/DesertEnergySpark"