-- 基础信息
local base_info = {
	group_id = 133225133
}

-- DEFS_MISCS
defs = {
        group_id = 133225133,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[0] = 0}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
}

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
	{ config_id = 133001, gadget_id = 70290160, pos = { x = -6221.842, y = 214.172, z = -2804.617 }, rot = { x = 0.000, y = 211.323, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 133002, gadget_id = 70230055, pos = { x = -6220.412, y = 214.537, z = -2806.714 }, rot = { x = 0.000, y = 31.258, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133003, name = "VARIABLE_CHANGE_133003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_133003", action = "action_EVENT_VARIABLE_CHANGE_133003", trigger_count = 0 },
	{ config_id = 1133004, name = "VARIABLE_CHANGE_133004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_133004", action = "action_EVENT_VARIABLE_CHANGE_133004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "start", value = 0, no_refresh = false }
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
		gadgets = { 133001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_133003", "VARIABLE_CHANGE_133004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133002 },
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
function condition_EVENT_VARIABLE_CHANGE_133003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133003(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133225134) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_133004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133004(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"