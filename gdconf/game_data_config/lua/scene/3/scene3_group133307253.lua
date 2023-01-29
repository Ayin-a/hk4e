-- 基础信息
local base_info = {
	group_id = 133307253
}

-- Trigger变量
local defs = {
	pointarray_ID = 330700005,
	pointArrayNum = 4,
	gadget_shooter = 253001,
	gadget_shooterBase_1 = 253002,
	gadget_shooterBase_2 = 253003,
	group_shooter = 133307253
}

-- DEFS_MISCS
--玩法关注：
--发射射线的点
defs.shootPoints={4}
--短暂停留的点
defs.shortStayPointList={4}
--短暂停留的时间
defs.stayTime={3}

--增删点后关注：
--停留点List
defs.stopPoints = {1,4}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[4]=defs.gadget_shooterBase_2,
}
--玩法结束时停留点
defs.finalShooterPoint = 2


--Lua Require所需：
--添加的按钮id
defs.optionID=436
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
	{ config_id = 253001, gadget_id = 70330280, pos = { x = -1195.612, y = 23.872, z = 5285.557 }, rot = { x = 0.000, y = 15.231, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 253002, gadget_id = 70330300, pos = { x = -1195.612, y = 23.872, z = 5285.557 }, rot = { x = 0.000, y = 72.851, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 253003, gadget_id = 70330300, pos = { x = -1209.940, y = 15.992, z = 5303.099 }, rot = { x = 0.000, y = 46.769, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 射线埋点
	{ config_id = 1253004, name = "SELECT_OPTION_253004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_253004", action = "action_EVENT_SELECT_OPTION_253004" },
	{ config_id = 1253005, name = "VARIABLE_CHANGE_253005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_253005", action = "action_EVENT_VARIABLE_CHANGE_253005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
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
		gadgets = { 253001, 253002, 253003 },
		regions = { },
		triggers = { "SELECT_OPTION_253004", "VARIABLE_CHANGE_253005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_253004(context, evt)
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
function action_EVENT_SELECT_OPTION_253004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253005(context, evt)
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_shooter,defs.shooterBaseList[defs.finalShooterPoint] , defs.optionID) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

require "V3_1/ChiWangShooter"