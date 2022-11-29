-- 基础信息
local base_info = {
	group_id = 133309169
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900005,
	pointArrayNum = 2,
	gadget_shooter = 169001,
	gadget_shooterBase_1 = 169003,
	gadget_shooterBase_2 = 169004
}

-- DEFS_MISCS
--增加路径点后修改路径点数ponitArrayNum和停留的点stopPoints
--GearAction1：901为底座上锁，锁住底座可以阻止发射器继续移动，不要锁定短暂停留点的下一个底座，以免出现不可预料的错误

--发射激光的点
defs.shootPoints={2}
--停留点List
defs.stopPoints = {1,2}
--短暂停留的点
defs.shortStayPointList={}

--添加的按钮id
defs.optionID=436
--发射器id
defs.shooterGadgetID=defs.gadget_shooter
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_2,
}
--玩法结束时停留点
defs.finalShooterPoint = 2

--短暂停留的时间
defs.stayTime={1}

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
	{ config_id = 169001, gadget_id = 70330280, pos = { x = -2282.345, y = -95.301, z = 5984.486 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 169003, gadget_id = 70330300, pos = { x = -2282.345, y = -95.415, z = 5984.486 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 169004, gadget_id = 70330300, pos = { x = -2293.786, y = -95.438, z = 5984.451 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 射线埋点
	{ config_id = 1169005, name = "SELECT_OPTION_169005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_169005", action = "action_EVENT_SELECT_OPTION_169005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 169002, gadget_id = 70330281, pos = { x = -2300.926, y = -95.438, z = 5984.451 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	triggers = {
		{ config_id = 1169006, name = "GADGET_STATE_CHANGE_169006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_169006", action = "" },
		{ config_id = 1169007, name = "VARIABLE_CHANGE_169007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_169007", action = "action_EVENT_VARIABLE_CHANGE_169007" }
	}
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
		gadgets = { 169001, 169003, 169004 },
		regions = { },
		triggers = { "SELECT_OPTION_169005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_169005(context, evt)
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
function action_EVENT_SELECT_OPTION_169005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"