-- 基础信息
local base_info = {
	group_id = 133225108
}

-- DEFS_MISCS
defs = {
        group_id = 133225108,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[133225209] = 1}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
        hasChild = true, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 1, --需要切的自己的suite
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
	{ config_id = 108001, gadget_id = 70290160, pos = { x = -6309.719, y = 246.562, z = -2801.217 }, rot = { x = 0.000, y = 247.148, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108006, name = "VARIABLE_CHANGE_108006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_108006", action = "action_EVENT_VARIABLE_CHANGE_108006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 3, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 108002, gadget_id = 70211001, pos = { x = -6312.500, y = 247.557, z = -2794.754 }, rot = { x = 10.133, y = 151.432, z = 356.867 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
		{ config_id = 108003, gadget_id = 70900402, pos = { x = -6313.777, y = 246.563, z = -2799.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 108004, gadget_id = 70900402, pos = { x = -6308.372, y = 247.194, z = -2796.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	triggers = {
		{ config_id = 1108005, name = "GADGET_STATE_CHANGE_108005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_108005", action = "action_EVENT_GADGET_STATE_CHANGE_108005" }
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
		gadgets = { 108001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_108006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_108006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_108006(context, evt)
	-- 将configid为 108001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"