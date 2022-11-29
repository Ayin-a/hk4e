-- 基础信息
local base_info = {
	group_id = 133225122
}

-- DEFS_MISCS
defs = {
        group_id = 133225122,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
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
	{ config_id = 122001, gadget_id = 70290160, pos = { x = -6157.559, y = 202.862, z = -2766.684 }, rot = { x = 356.324, y = 239.564, z = 359.820 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 122002, gadget_id = 70310153, pos = { x = -6168.235, y = 202.655, z = -2775.626 }, rot = { x = 345.085, y = 68.991, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122003, name = "VARIABLE_CHANGE_122003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122003", action = "action_EVENT_VARIABLE_CHANGE_122003" },
	{ config_id = 1122004, name = "GADGET_STATE_CHANGE_122004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122004", action = "action_EVENT_GADGET_STATE_CHANGE_122004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 3, name = "BirdActive", value = 0, no_refresh = true }
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
		gadgets = { 122001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_122003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 122002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_122004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"BirdActive"为1
	if ScriptLib.GetGroupVariableValue(context, "BirdActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122003(context, evt)
	-- 将configid为 122001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122004(context, evt)
	if 122002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122004(context, evt)
	-- 将本组内变量名为 "BirdActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "BirdActive", 1, 133225123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiBirdFather"