-- 基础信息
local base_info = {
	group_id = 133223428
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133223428,
	gadget_1 = 428001,
	gadget_2 = 428002,
	gadget_3 = 428003,
	gadget_4 = 428004,
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
	[428001] = { config_id = 428001, gadget_id = 70330122, pos = { x = -6035.575, y = 207.330, z = -2872.254 }, rot = { x = 359.809, y = 230.847, z = 7.646 }, level = 30, state = GadgetState.Action01, area_id = 18 },
	[428002] = { config_id = 428002, gadget_id = 70330123, pos = { x = -6041.577, y = 207.584, z = -2884.714 }, rot = { x = 5.258, y = 169.522, z = 26.361 }, level = 30, state = GadgetState.Action02, area_id = 18 },
	[428003] = { config_id = 428003, gadget_id = 70330122, pos = { x = -6055.912, y = 207.594, z = -2876.469 }, rot = { x = 11.254, y = 277.869, z = 1.545 }, level = 30, state = GadgetState.Action03, area_id = 18 },
	[428004] = { config_id = 428004, gadget_id = 70330124, pos = { x = -6048.444, y = 207.127, z = -2866.326 }, rot = { x = 336.547, y = 178.466, z = 18.653 }, level = 30, state = GadgetState.Action03, area_id = 18 },
	[428006] = { config_id = 428006, gadget_id = 70211150, pos = { x = -6043.549, y = 207.447, z = -2877.430 }, rot = { x = 0.000, y = 30.453, z = 0.000 }, level = 26, chest_drop_id = 21910037, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1428007, name = "VARIABLE_CHANGE_428007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_428007", action = "action_EVENT_VARIABLE_CHANGE_428007" },
	{ config_id = 1428008, name = "GROUP_LOAD_428008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_428008", action = "", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1428005, name = "GADGET_STATE_CHANGE_428005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_428005", action = "action_EVENT_GADGET_STATE_CHANGE_428005" }
	}
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
		gadgets = { 428001, 428002, 428003, 428004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_428007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 428006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 初始Suit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_428008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_428007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_428007(context, evt)
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133223425) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_428008(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightResonanceStone"