-- 基础信息
local base_info = {
	group_id = 133220559
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133220559,
	gadget_1 = 559001,
	gadget_2 = 559002,
	gadget_3 = 559003,
	gadget_4 = 559004,
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
	[559001] = { config_id = 559001, gadget_id = 70330073, pos = { x = -3016.329, y = 206.797, z = -4489.897 }, rot = { x = 330.933, y = 304.345, z = 4.664 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[559002] = { config_id = 559002, gadget_id = 70330074, pos = { x = -3014.809, y = 207.028, z = -4487.407 }, rot = { x = 29.573, y = 131.107, z = 1.938 }, level = 30, state = GadgetState.Action02, area_id = 11 },
	[559003] = { config_id = 559003, gadget_id = 70330075, pos = { x = -3013.016, y = 206.931, z = -4485.210 }, rot = { x = 29.457, y = 134.380, z = 5.740 }, level = 30, state = GadgetState.Action03, area_id = 11 },
	[559004] = { config_id = 559004, gadget_id = 70330074, pos = { x = -3010.802, y = 206.683, z = -4482.527 }, rot = { x = 30.959, y = 133.922, z = 8.079 }, level = 30, state = GadgetState.Action01, area_id = 11 },
	[559006] = { config_id = 559006, gadget_id = 70211111, pos = { x = -3016.360, y = 205.450, z = -4498.778 }, rot = { x = 0.000, y = 357.230, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1559007, name = "VARIABLE_CHANGE_559007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_559007", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 559005, gadget_id = 70950055, pos = { x = -3008.528, y = 204.136, z = -4481.029 }, rot = { x = 0.000, y = 312.258, z = 0.000 }, level = 2, state = GadgetState.Action02, area_id = 11 }
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
		gadgets = { 559001, 559002, 559003, 559004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 559006 },
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
function condition_EVENT_VARIABLE_CHANGE_559007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"