-- 基础信息
local base_info = {
	group_id = 133220480
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220480,
	gadget_1 = 480001,
	gadget_2 = 480002,
	gadget_3 = 480003,
	gadget_4 = 0,
	gadget_5 = 0
}

-- DEFS_MISCS


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
	[480001] = { config_id = 480001, gadget_id = 70330073, pos = { x = -2428.437, y = 324.651, z = -4373.616 }, rot = { x = 356.790, y = 58.549, z = 356.009 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[480002] = { config_id = 480002, gadget_id = 70330074, pos = { x = -2427.987, y = 324.478, z = -4366.437 }, rot = { x = 358.987, y = 280.314, z = 4.859 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[480003] = { config_id = 480003, gadget_id = 70330075, pos = { x = -2431.268, y = 323.545, z = -4356.827 }, rot = { x = 0.000, y = 125.006, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[480006] = { config_id = 480006, gadget_id = 70211111, pos = { x = -2426.750, y = 324.778, z = -4371.352 }, rot = { x = 0.000, y = 56.022, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1480007, name = "VARIABLE_CHANGE_480007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_480007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 480005, gadget_id = 70330073, pos = { x = -2430.452, y = 318.699, z = -4356.797 }, rot = { x = 0.421, y = 109.413, z = 356.622 }, level = 2, state = GadgetState.Action01, area_id = 11 }
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
		gadgets = { 480001, 480002, 480003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 480006 },
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
function condition_EVENT_VARIABLE_CHANGE_480007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"