-- 基础信息
local base_info = {
	group_id = 133309359
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900045,
	pointArrayNum = 8,
	gadget_shooter = 359001,
	gadget_shooterBase_1 = 359002,
	gadget_shooterBase_2 = 359003,
	gadget_shooterBase_3 = 359004
}

-- DEFS_MISCS
--玩法关注：
--发射射线的点
defs.shootPoints={5}
--短暂停留的点
defs.shortStayPointList={5}
--短暂停留的时间
defs.stayTime={15}

--增删点后关注：
--停留点List
defs.stopPoints = {1,5}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[5]=defs.gadget_shooterBase_3,
}
--玩法结束时停留点
defs.finalShooterPoint = 5


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
	{ config_id = 359001, gadget_id = 70330280, pos = { x = -2597.735, y = 14.550, z = 5687.369 }, rot = { x = 9.021, y = 298.448, z = 11.750 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 359002, gadget_id = 70330300, pos = { x = -2597.735, y = 14.550, z = 5687.369 }, rot = { x = 9.021, y = 298.448, z = 11.750 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 359003, gadget_id = 70330300, pos = { x = -2603.771, y = 12.451, z = 5674.701 }, rot = { x = 13.846, y = 299.028, z = 12.388 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 359004, gadget_id = 70330300, pos = { x = -2607.342, y = 11.807, z = 5661.762 }, rot = { x = 0.198, y = 355.013, z = 7.490 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1359005, name = "SELECT_OPTION_359005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_359005", action = "action_EVENT_SELECT_OPTION_359005" }
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
		gadgets = { 359001, 359002, 359003, 359004 },
		regions = { },
		triggers = { "SELECT_OPTION_359005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_359005(context, evt)
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
function action_EVENT_SELECT_OPTION_359005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"