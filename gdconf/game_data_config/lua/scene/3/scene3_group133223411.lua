-- 基础信息
local base_info = {
	group_id = 133223411
}

-- DEFS_MISCS
defs = {
        group_id = 133223411,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[133223102] = 1}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
        hasChild = true, --表示是否切当前Group的suite，true表示切自己的
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
	{ config_id = 411001, gadget_id = 70290160, pos = { x = -5786.797, y = 210.054, z = -2598.123 }, rot = { x = 0.042, y = 94.663, z = 359.488 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1411002, name = "VARIABLE_CHANGE_411002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_411002", action = "action_EVENT_VARIABLE_CHANGE_411002" },
	{ config_id = 1411003, name = "VARIABLE_CHANGE_411003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_411003", action = "action_EVENT_VARIABLE_CHANGE_411003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 3, name = "Finish", value = 0, no_refresh = true },
	{ config_id = 4, name = "BirdStart", value = 0, no_refresh = true }
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
		gadgets = { 411001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_411002", "VARIABLE_CHANGE_411003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_411002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_411002(context, evt)
	-- 将configid为 411001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_411003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"BirdStart"为1
	if ScriptLib.GetGroupVariableValue(context, "BirdStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_411003(context, evt)
	-- 将configid为 411001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"