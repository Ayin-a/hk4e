-- 基础信息
local base_info = {
	group_id = 133213256
}

-- Trigger变量
local defs = {
	loop_mode = 1,
	group_ID = 133213256,
	gadget_1 = 256001,
	gadget_2 = 256002,
	gadget_3 = 256003,
	gadget_4 = 256004
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
	[256001] = { config_id = 256001, gadget_id = 70330073, pos = { x = -4073.632, y = 202.521, z = -3483.579 }, rot = { x = 350.503, y = 264.615, z = 1.990 }, level = 30, state = GadgetState.Action01, area_id = 12 },
	[256002] = { config_id = 256002, gadget_id = 70330073, pos = { x = -4083.366, y = 204.237, z = -3473.239 }, rot = { x = 355.917, y = 22.018, z = 342.718 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[256003] = { config_id = 256003, gadget_id = 70330073, pos = { x = -3954.843, y = 199.569, z = -3309.221 }, rot = { x = 35.911, y = 247.499, z = 3.610 }, level = 30, state = GadgetState.Action02, area_id = 12 },
	[256004] = { config_id = 256004, gadget_id = 70330073, pos = { x = -3949.472, y = 199.509, z = -3313.773 }, rot = { x = 37.289, y = 177.091, z = 355.956 }, level = 27, state = GadgetState.Action01, area_id = 12 },
	[256006] = { config_id = 256006, gadget_id = 70211111, pos = { x = -4082.197, y = 205.156, z = -3479.160 }, rot = { x = 0.632, y = 359.917, z = 344.989 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256007, name = "VARIABLE_CHANGE_256007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256007", action = "" }
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
		gadgets = { 256001, 256002, 256003, 256004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 256006 },
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
function condition_EVENT_VARIABLE_CHANGE_256007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"