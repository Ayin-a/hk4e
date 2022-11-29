-- 基础信息
local base_info = {
	group_id = 133309168
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900004,
	pointArrayNum = 4,
	gadget_shooter = 168001,
	gadget_shooterBase_1 = 168003,
	gadget_shooterBase_2 = 168004
}

-- DEFS_MISCS
--增加路径点后修改路径点数ponitArrayNum和停留的点stopPoints
--GearAction1：901为底座上锁，锁住底座可以阻止发射器继续移动，不要锁定短暂停留点的下一个底座，以免出现不可预料的错误

--发射激光的点
defs.shootPoints={3}
--停留点List
defs.stopPoints = {1,3}
--短暂停留的点
defs.shortStayPointList={2,4}

--添加的按钮id
defs.optionID=436
--发射器id
defs.shooterGadgetID=defs.gadget_shooter
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[3]=defs.gadget_shooterBase_2,
}
--玩法结束时停留点
defs.finalShooterPoint = 3

--短暂停留的时间
defs.stayTime={1}

local markList = {168005,168007}

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
	{ config_id = 168001, gadget_id = 70330280, pos = { x = -2303.368, y = -89.368, z = 5974.921 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 168003, gadget_id = 70330300, pos = { x = -2303.368, y = -89.368, z = 5974.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 168004, gadget_id = 70330300, pos = { x = -2303.002, y = -95.229, z = 5993.109 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 168005, gadget_id = 70330264, pos = { x = -2303.005, y = -95.919, z = 5979.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 射线埋点
	{ config_id = 1168008, name = "SELECT_OPTION_168008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168008", action = "action_EVENT_SELECT_OPTION_168008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 168002, gadget_id = 70330281, pos = { x = -2303.002, y = -95.229, z = 5977.377 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
		{ config_id = 168007, gadget_id = 70330264, pos = { x = -2298.007, y = -94.942, z = 5984.403 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 }
	},
	triggers = {
		{ config_id = 1168006, name = "GADGET_STATE_CHANGE_168006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168006", action = "" },
		{ config_id = 1168009, name = "VARIABLE_CHANGE_168009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_168009", action = "action_EVENT_VARIABLE_CHANGE_168009" }
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
		gadgets = { 168001, 168003, 168004, 168005 },
		regions = { },
		triggers = { "SELECT_OPTION_168008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_168008(context, evt)
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
function action_EVENT_SELECT_OPTION_168008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"
require "V3_1/Transparent_Mark"