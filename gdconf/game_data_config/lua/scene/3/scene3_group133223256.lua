-- 基础信息
local base_info = {
	group_id = 133223256
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133223256,
	gadget_1 = 256001,
	gadget_2 = 256002,
	gadget_3 = 256003,
	gadget_4 = 256004,
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
	[256001] = { config_id = 256001, gadget_id = 70330073, pos = { x = -6061.329, y = 218.633, z = -2891.058 }, rot = { x = 0.000, y = 300.645, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[256002] = { config_id = 256002, gadget_id = 70330074, pos = { x = -6056.150, y = 218.613, z = -2891.012 }, rot = { x = 0.000, y = 117.111, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[256003] = { config_id = 256003, gadget_id = 70330074, pos = { x = -6054.149, y = 218.320, z = -2887.356 }, rot = { x = 349.001, y = 115.411, z = 21.881 }, level = 30, state = GadgetState.Action03, area_id = 18 },
	[256004] = { config_id = 256004, gadget_id = 70330074, pos = { x = -6058.137, y = 208.142, z = -2881.979 }, rot = { x = 310.992, y = 126.702, z = 337.958 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[256006] = { config_id = 256006, gadget_id = 70211101, pos = { x = -6049.971, y = 218.563, z = -2894.038 }, rot = { x = 0.000, y = 298.441, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256007, name = "VARIABLE_CHANGE_256007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256007", action = "action_EVENT_VARIABLE_CHANGE_256007" }
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
		triggers = { "VARIABLE_CHANGE_256007" },
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

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256007(context, evt)
	-- 将本组内变量名为 "Bird_Start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Bird_Start", 1, 133223425) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"