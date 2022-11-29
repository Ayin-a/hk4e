-- 基础信息
local base_info = {
	group_id = 133225131
}

-- DEFS_MISCS
defs = {
        group_id = 133225131,        --当前Group的ID
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
	{ config_id = 131001, gadget_id = 70290160, pos = { x = -6235.240, y = 215.746, z = -2826.583 }, rot = { x = 0.000, y = 191.976, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 131002, gadget_id = 70230054, pos = { x = -6235.391, y = 216.221, z = -2828.705 }, rot = { x = 347.867, y = 226.479, z = 21.423 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131003, name = "VARIABLE_CHANGE_131003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_131003", action = "action_EVENT_VARIABLE_CHANGE_131003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = false }
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
		gadgets = { 131001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_131003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 131002 },
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
function condition_EVENT_VARIABLE_CHANGE_131003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_131003(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133225132) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_2/TsurumiBirdFather"