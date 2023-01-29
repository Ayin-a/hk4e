-- 基础信息
local base_info = {
	group_id = 133313274
}

-- Trigger变量
local defs = {
	pointarray_ID = 331300007,
	pointArrayNum = 3,
	gadget_shooter = 274002,
	gadget_shooterBase_1 = 274001
}

-- DEFS_MISCS
--玩法关注
--发射射线的点
defs.shootPoints={2,3}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={1}

--增删点后关注：
--停留点List
defs.stopPoints = {1}
--停留点对应底座
defs.shooterBaseList={
}
--玩法结束时的停留点
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
	{ config_id = 274001, gadget_id = 70330300, pos = { x = -730.486, y = -229.438, z = 5804.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 274002, gadget_id = 70290867, pos = { x = -730.486, y = -229.438, z = 5804.092 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274003, name = "SELECT_OPTION_274003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_274003", action = "action_EVENT_SELECT_OPTION_274003", trigger_count = 0 }
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
		gadgets = { 274001, 274002 },
		regions = { },
		triggers = { "SELECT_OPTION_274003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_274003(context, evt)
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
function action_EVENT_SELECT_OPTION_274003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"