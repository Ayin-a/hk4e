-- 基础信息
local base_info = {
	group_id = 133309195
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900012,
	pointArrayNum = 13,
	gadget_shooter = 195001,
	gadget_shooterBase_1 = 195002,
	gadget_shooterBase_2 = 195003,
	gadget_shooterBase_3 = 195004
}

-- DEFS_MISCS
--玩法关注：
--发射射线的点
defs.shootPoints={8}
--短暂停留的点
defs.shortStayPointList={8}
--短暂停留的时间
defs.stayTime={10}

--增删点后关注：
--停留点List
defs.stopPoints = {1,4,8}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[4]=defs.gadget_shooterBase_2,
[8]=defs.gadget_shooterBase_3,
}
--玩法结束时停留点
defs.finalShooterPoint = 8


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
	{ config_id = 195001, gadget_id = 70330280, pos = { x = -2598.021, y = -85.828, z = 5674.229 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 195002, gadget_id = 70330300, pos = { x = -2598.021, y = -85.828, z = 5674.229 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 195003, gadget_id = 70330300, pos = { x = -2618.626, y = -85.828, z = 5663.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 195004, gadget_id = 70330300, pos = { x = -2638.498, y = -85.828, z = 5674.188 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195006, name = "SELECT_OPTION_195006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_195006", action = "action_EVENT_SELECT_OPTION_195006" },
	{ config_id = 1195009, name = "GROUP_LOAD_195009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_195009", action = "action_EVENT_GROUP_LOAD_195009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true },
	{ config_id = 4, name = "isOpen", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 195005, gadget_id = 70330430, pos = { x = -2638.844, y = -86.078, z = 5673.567 }, rot = { x = 0.000, y = 133.239, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	triggers = {
		{ config_id = 1195007, name = "ANY_GADGET_DIE_195007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_195007", action = "action_EVENT_ANY_GADGET_DIE_195007" },
		{ config_id = 1195008, name = "GROUP_LOAD_195008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_195008", action = "action_EVENT_GROUP_LOAD_195008", trigger_count = 0 }
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
		gadgets = { 195001, 195002, 195003, 195004 },
		regions = { },
		triggers = { "SELECT_OPTION_195006", "GROUP_LOAD_195009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_195006(context, evt)
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
function action_EVENT_SELECT_OPTION_195006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_195009(context, evt)
	if GadgetState.Action01 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309195, 195004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_195009(context, evt)
	-- 将configid为 195004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/ChiWangShooter"