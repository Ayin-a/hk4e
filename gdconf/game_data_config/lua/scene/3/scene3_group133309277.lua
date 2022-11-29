-- 基础信息
local base_info = {
	group_id = 133309277
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900023,
	pointArrayNum = 3,
	gadget_shooter = 277001,
	gadget_shooterBase_1 = 277002
}

-- DEFS_MISCS
--玩法设计关注：
--发射激光的点
defs.shootPoints={3}
--短暂停留的点
defs.shortStayPointList={2,3}
--短暂停留的时间
defs.stayTime={3}

--黑盒配置关注：
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
	{ config_id = 277001, gadget_id = 70330280, pos = { x = -2194.539, y = 10.441, z = 5402.262 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 277002, gadget_id = 70330300, pos = { x = -2194.539, y = 10.441, z = 5402.262 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1277003, name = "SELECT_OPTION_277003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_277003", action = "action_EVENT_SELECT_OPTION_277003" }
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
		gadgets = { 277001, 277002 },
		regions = { },
		triggers = { "SELECT_OPTION_277003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_277003(context, evt)
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
function action_EVENT_SELECT_OPTION_277003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"