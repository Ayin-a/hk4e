-- 基础信息
local base_info = {
	group_id = 133309540
}

-- DEFS_MISCS
local engineerLaserConfigID = 540001
local turnOption = 435
local correctState = 0

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
	{ config_id = 540001, gadget_id = 70330311, pos = { x = -2103.115, y = -56.418, z = 5739.302 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 540003, gadget_id = 70330225, pos = { x = -2218.619, y = -57.356, z = 5770.337 }, rot = { x = 0.000, y = 15.348, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1540002, name = "GADGET_STATE_CHANGE_540002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_540002", action = "action_EVENT_GADGET_STATE_CHANGE_540002" },
	-- 运营埋点
	{ config_id = 1540004, name = "GADGET_STATE_CHANGE_540004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_540004", action = "action_EVENT_GADGET_STATE_CHANGE_540004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 540001, 540003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_540002", "GADGET_STATE_CHANGE_540004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_540002(context, evt)
	-- 检测config_id为540001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 540001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_540002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_540004(context, evt)
	-- 检测config_id为540001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 540001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_540004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Laser"