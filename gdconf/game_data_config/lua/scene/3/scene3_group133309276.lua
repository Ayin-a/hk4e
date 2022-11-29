-- 基础信息
local base_info = {
	group_id = 133309276
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900022,
	pointArrayNum = 2,
	gadget_shooter = 276001,
	gadget_shooterBase_1 = 276003,
	gadget_shooterBase_2 = 276002
}

-- DEFS_MISCS
--玩法设计关注：
--发射激光的点
defs.shootPoints={2}
--短暂停留的点
defs.shortStayPointList={2}
--短暂停留的时间
defs.stayTime={3}

--黑盒配置关注：
--停留点List
defs.stopPoints = {1,2}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_2,
}
--玩法结束时停留点
defs.finalShooterPoint = 2

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
	{ config_id = 276001, gadget_id = 70330280, pos = { x = -2193.144, y = 10.442, z = 5406.934 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, area_id = 27 },
	{ config_id = 276002, gadget_id = 70330300, pos = { x = -2183.571, y = 10.435, z = 5404.077 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 27 },
	{ config_id = 276003, gadget_id = 70330300, pos = { x = -2193.144, y = 10.442, z = 5406.934 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 276004, gadget_id = 70330430, pos = { x = -2182.521, y = 10.522, z = 5404.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276005, name = "ANY_GADGET_DIE_276005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_276005", action = "action_EVENT_ANY_GADGET_DIE_276005" },
	-- 运营埋点
	{ config_id = 1276007, name = "SELECT_OPTION_276007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_276007", action = "action_EVENT_SELECT_OPTION_276007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1276006, name = "GADGET_STATE_CHANGE_276006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_276006", action = "action_EVENT_GADGET_STATE_CHANGE_276006" }
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
		gadgets = { 276001, 276002, 276003, 276004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_276005", "SELECT_OPTION_276007" },
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
function condition_EVENT_ANY_GADGET_DIE_276005(context, evt)
	if 276004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_276005(context, evt)
	-- 将configid为 276002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_276007(context, evt)
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
function action_EVENT_SELECT_OPTION_276007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"