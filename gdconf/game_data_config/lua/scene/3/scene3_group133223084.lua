-- 基础信息
local base_info = {
	group_id = 133223084
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133223084,
	gadget_1 = 84001,
	gadget_2 = 84002,
	gadget_3 = 84003,
	gadget_4 = 84004,
	gadget_5 = 84005
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
	[84001] = { config_id = 84001, gadget_id = 70330122, pos = { x = -6040.591, y = 200.276, z = -3298.707 }, rot = { x = 0.000, y = 43.011, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[84002] = { config_id = 84002, gadget_id = 70330122, pos = { x = -6045.959, y = 200.575, z = -3296.479 }, rot = { x = 11.326, y = 183.012, z = 0.269 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[84003] = { config_id = 84003, gadget_id = 70330124, pos = { x = -6049.930, y = 199.808, z = -3292.485 }, rot = { x = 8.608, y = 169.882, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[84004] = { config_id = 84004, gadget_id = 70330122, pos = { x = -6055.772, y = 200.556, z = -3296.803 }, rot = { x = 354.779, y = 14.525, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[84005] = { config_id = 84005, gadget_id = 70330122, pos = { x = -6059.386, y = 200.571, z = -3302.719 }, rot = { x = 348.224, y = 278.002, z = 11.478 }, level = 2, state = GadgetState.Action03, area_id = 18 },
	[84006] = { config_id = 84006, gadget_id = 70211101, pos = { x = -6048.287, y = 199.620, z = -3285.115 }, rot = { x = 0.000, y = 11.617, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084007, name = "VARIABLE_CHANGE_84007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_84007", action = "action_EVENT_VARIABLE_CHANGE_84007" },
	{ config_id = 1084008, name = "GROUP_LOAD_84008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_84008", action = "action_EVENT_GROUP_LOAD_84008", trigger_count = 0 }
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
	suite = 3,
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
		gadgets = { 84001, 84002, 84003, 84004, 84005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_84007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 84006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 开始Suit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_84008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_84007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_84007(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133223472) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_84008(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_84008(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223084, 1)
	
	return 0
end

require "BlackBoxPlay/LightResonanceStone"