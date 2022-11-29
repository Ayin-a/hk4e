-- 基础信息
local base_info = {
	group_id = 111101159
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 111101159,
	gadget_1 = 159001,
	gadget_2 = 159002,
	gadget_3 = 159003,
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
	[159001] = { config_id = 159001, gadget_id = 70330073, pos = { x = 2891.015, y = 269.875, z = -1301.554 }, rot = { x = 0.000, y = 280.160, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	[159002] = { config_id = 159002, gadget_id = 70330074, pos = { x = 2890.427, y = 269.874, z = -1296.692 }, rot = { x = 0.000, y = 235.959, z = 0.000 }, level = 1, state = GadgetState.Action02 },
	[159003] = { config_id = 159003, gadget_id = 70330075, pos = { x = 2886.517, y = 269.871, z = -1293.414 }, rot = { x = 0.000, y = 208.061, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	[159006] = { config_id = 159006, gadget_id = 70211111, pos = { x = 2882.721, y = 269.958, z = -1298.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159007, name = "VARIABLE_CHANGE_159007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_159007", action = "" }
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
		gadgets = { 159001, 159002, 159003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 159006 },
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
function condition_EVENT_VARIABLE_CHANGE_159007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"