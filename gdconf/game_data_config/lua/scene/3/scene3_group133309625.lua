-- 基础信息
local base_info = {
	group_id = 133309625
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900059,
	pointArrayNum = 3,
	gadget_shooter = 625002,
	gadget_shooterBase_1 = 625001
}

-- DEFS_MISCS
--玩法关注
--发射射线的点
defs.shootPoints={3}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={3}

--增删点后关注：
--停留点List
defs.stopPoints = {1,2,3}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_1,
[3]=defs.gadget_shooterBase_1,
}
--玩法结束时停留点
defs.finalShooterPoint = 3


--Lua Require所需：
--添加的按钮id
defs.optionID=435
--发射器id
defs.shooterGadgetID=defs.gadget_shooter

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
	{ config_id = 625001, gadget_id = 70330300, pos = { x = -2831.831, y = 203.412, z = 5935.396 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 625002, gadget_id = 70330280, pos = { x = -2831.831, y = 203.412, z = 5935.396 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 625003, gadget_id = 70330281, pos = { x = -2831.831, y = 203.412, z = 5924.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 625004, gadget_id = 70330416, pos = { x = -2836.798, y = 203.687, z = 5920.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1625005, name = "GADGET_STATE_CHANGE_625005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_625005", action = "action_EVENT_GADGET_STATE_CHANGE_625005" },
	-- 保底开门
	{ config_id = 1625006, name = "GROUP_LOAD_625006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_625006", action = "action_EVENT_GROUP_LOAD_625006", trigger_count = 0 },
	{ config_id = 1625007, name = "SELECT_OPTION_625007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_625007", action = "action_EVENT_SELECT_OPTION_625007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true },
	{ config_id = 2, name = "finished", value = 0, no_refresh = true }
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
		gadgets = { 625001, 625002, 625003, 625004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_625005", "GROUP_LOAD_625006", "SELECT_OPTION_625007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_625005(context, evt)
	-- 检测config_id为625003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 625003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_625005(context, evt)
	-- 将configid为 625004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 625004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_625006(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_625006(context, evt)
	-- 将configid为 625004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 625004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_625007(context, evt)
	-- 判断是gadgetid 0 option_id 0
	if defs.gadget_shooterBase_1 ~= evt.param1 then
		return false	
	end
	
	if defs.optionID ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_625007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"