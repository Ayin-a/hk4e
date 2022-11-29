-- 基础信息
local base_info = {
	group_id = 133223440
}

-- DEFS_MISCS
defs = {
        group_id = 133223440,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[0] = 0}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
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
	{ config_id = 440001, gadget_id = 70230049, pos = { x = -5893.192, y = 201.963, z = -2516.361 }, rot = { x = 0.143, y = 60.473, z = 0.164 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440002, gadget_id = 70230044, pos = { x = -5895.130, y = 202.005, z = -2507.219 }, rot = { x = 0.125, y = 97.472, z = 356.486 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440003, gadget_id = 70230048, pos = { x = -5886.963, y = 202.102, z = -2498.954 }, rot = { x = 359.792, y = 174.305, z = 0.064 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440004, gadget_id = 70230046, pos = { x = -5877.065, y = 202.138, z = -2501.844 }, rot = { x = 359.825, y = 227.965, z = 359.871 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440005, gadget_id = 70230050, pos = { x = -5873.748, y = 202.094, z = -2513.079 }, rot = { x = 0.096, y = 307.657, z = 359.805 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440006, gadget_id = 70230045, pos = { x = -5884.393, y = 201.850, z = -2519.080 }, rot = { x = 0.213, y = 359.829, z = 359.956 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 440007, gadget_id = 70290160, pos = { x = -5886.043, y = 201.406, z = -2509.740 }, rot = { x = 0.213, y = 359.829, z = 359.956 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1440008, name = "VARIABLE_CHANGE_440008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_440008", action = "action_EVENT_VARIABLE_CHANGE_440008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 3, name = "Finish", value = 0, no_refresh = true }
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
		gadgets = { 440007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_440008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 440001, 440002, 440003, 440004, 440005, 440006 },
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
function condition_EVENT_VARIABLE_CHANGE_440008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_440008(context, evt)
	-- 将configid为 440007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"