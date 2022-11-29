-- 基础信息
local base_info = {
	group_id = 133212254
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133212254,
	gadget_1 = 254001,
	gadget_2 = 254002,
	gadget_3 = 254003,
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
	[254001] = { config_id = 254001, gadget_id = 70330073, pos = { x = -3826.228, y = 249.756, z = -2341.916 }, rot = { x = 0.000, y = 157.359, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 13 },
	[254002] = { config_id = 254002, gadget_id = 70330073, pos = { x = -3823.325, y = 249.777, z = -2340.755 }, rot = { x = 0.000, y = 159.089, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 13 },
	[254003] = { config_id = 254003, gadget_id = 70330073, pos = { x = -3820.418, y = 249.804, z = -2339.603 }, rot = { x = 0.003, y = 157.902, z = 0.158 }, level = 30, state = GadgetState.Action03, area_id = 13 },
	[254006] = { config_id = 254006, gadget_id = 70211111, pos = { x = -3817.568, y = 249.838, z = -2376.636 }, rot = { x = 0.000, y = 338.666, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254007, name = "VARIABLE_CHANGE_254007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_254007", action = "action_EVENT_VARIABLE_CHANGE_254007" }
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
		gadgets = { 254001, 254002, 254003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_254007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 254006 },
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
function condition_EVENT_VARIABLE_CHANGE_254007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_254007(context, evt)
	-- 将本组内变量名为 "num" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "num", 1, 133212270) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"