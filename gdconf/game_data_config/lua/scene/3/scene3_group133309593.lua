-- 基础信息
local base_info = {
	group_id = 133309593
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 593001, gadget_id = 70330416, pos = { x = -2437.457, y = -24.695, z = 5660.112 }, rot = { x = 0.000, y = 215.129, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 593002, gadget_id = 70330283, pos = { x = -2442.192, y = -24.754, z = 5660.908 }, rot = { x = 0.000, y = 215.129, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 2}, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 593009, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2437.457, y = -24.695, z = 5660.112 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1593003, name = "SELECT_OPTION_593003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_593003", action = "action_EVENT_SELECT_OPTION_593003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1593004, name = "GADGET_STATE_CHANGE_593004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_593004", action = "action_EVENT_GADGET_STATE_CHANGE_593004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1593005, name = "GROUP_LOAD_593005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_593005", action = "action_EVENT_GROUP_LOAD_593005", trigger_count = 0 },
	{ config_id = 1593009, name = "ENTER_REGION_593009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_593009", action = "action_EVENT_ENTER_REGION_593009" }
}

-- 变量
variables = {
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
		gadgets = { 593001, 593002 },
		regions = { 593009 },
		triggers = { "SELECT_OPTION_593003", "GADGET_STATE_CHANGE_593004", "GROUP_LOAD_593005", "ENTER_REGION_593009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_593003(context, evt)
	-- 判断是gadgetid 593002 option_id 431
	if 593002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_593003(context, evt)
	-- 将configid为 593002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_593004(context, evt)
	if 593002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_593004(context, evt)
	-- 将configid为 593001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_593005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309593, 593002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_593005(context, evt)
	-- 将configid为 593001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_593009(context, evt)
	if evt.param1 ~= 593009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_593009(context, evt)
	-- 调用提示id为 1000060014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/PermissonOperator"