-- 基础信息
local base_info = {
	group_id = 133309633
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900063,
	pointArrayNum = 2,
	gadget_shooter = 633001,
	gadget_shooterBase_1 = 633002,
	gadget_shooterBase_2 = 633003
}

-- DEFS_MISCS
--玩法关注：
--发射射线的点
defs.shootPoints={5}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={3}

--增删点后关注：
--停留点List
defs.stopPoints = {1,5}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[5]=defs.gadget_shooterBase_2,
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
	{ config_id = 633001, gadget_id = 70330280, pos = { x = -2379.875, y = 35.592, z = 5303.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 633002, gadget_id = 70330300, pos = { x = -2379.875, y = 35.592, z = 5303.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 633003, gadget_id = 70330300, pos = { x = -2384.179, y = 21.592, z = 5326.277 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1633004, name = "VARIABLE_CHANGE_633004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_633004", action = "action_EVENT_VARIABLE_CHANGE_633004" },
	{ config_id = 1633005, name = "GROUP_LOAD_633005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_633005", action = "action_EVENT_GROUP_LOAD_633005", trigger_count = 0 },
	-- 射线埋点
	{ config_id = 1633006, name = "SELECT_OPTION_633006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_633006", action = "action_EVENT_SELECT_OPTION_633006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true },
	{ config_id = 2, name = "unlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1633007, name = "VARIABLE_CHANGE_633007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_633007", action = "action_EVENT_VARIABLE_CHANGE_633007", trigger_count = 0 }
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
		gadgets = { 633001, 633002, 633003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_633004", "GROUP_LOAD_633005", "SELECT_OPTION_633006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_633004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_633004(context, evt)
	-- 将configid为 633003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 633003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_633005(context, evt)
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_633005(context, evt)
	-- 将configid为 633003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 633003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_633006(context, evt)
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
function action_EVENT_SELECT_OPTION_633006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/ChiWangShooter"