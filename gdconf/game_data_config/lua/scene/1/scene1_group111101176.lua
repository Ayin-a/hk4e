-- 基础信息
local base_info = {
	group_id = 111101176
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 111101176,
	gadget_1 = 176001,
	gadget_2 = 176002,
	gadget_3 = 176003,
	gadget_4 = 176004
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
	[176001] = { config_id = 176001, gadget_id = 70950055, pos = { x = 2475.635, y = 292.949, z = -1538.556 }, rot = { x = 356.927, y = 204.258, z = 349.965 }, level = 1, state = GadgetState.Action02 },
	[176002] = { config_id = 176002, gadget_id = 70950055, pos = { x = 2474.401, y = 292.341, z = -1534.313 }, rot = { x = 352.082, y = 143.566, z = 355.077 }, level = 1, state = GadgetState.Action01 },
	[176003] = { config_id = 176003, gadget_id = 70950055, pos = { x = 2471.921, y = 291.645, z = -1531.559 }, rot = { x = 348.562, y = 106.896, z = 2.036 }, level = 1, state = GadgetState.Action01 },
	[176004] = { config_id = 176004, gadget_id = 70950055, pos = { x = 2468.160, y = 291.073, z = -1531.250 }, rot = { x = 352.607, y = 59.743, z = 10.256 }, level = 1, state = GadgetState.Action02 },
	[176006] = { config_id = 176006, gadget_id = 70211111, pos = { x = 2470.703, y = 292.063, z = -1537.281 }, rot = { x = 4.746, y = 0.411, z = 9.900 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176007, name = "VARIABLE_CHANGE_176007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_176007", action = "" }
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
		gadgets = { 176001, 176002, 176003, 176004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 176006 },
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
function condition_EVENT_VARIABLE_CHANGE_176007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"