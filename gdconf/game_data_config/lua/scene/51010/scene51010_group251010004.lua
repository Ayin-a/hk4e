-- 基础信息
local base_info = {
	group_id = 251010004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4008, monster_id = 21010101, pos = { x = -29.485, y = 12.941, z = 7.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 4009, monster_id = 21010101, pos = { x = -7.660, y = 12.944, z = 17.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 4014, monster_id = 21010901, pos = { x = -19.521, y = 12.940, z = 17.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 4015, monster_id = 21010502, pos = { x = -25.994, y = 12.961, z = -7.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 4016, monster_id = 20040101, pos = { x = -16.589, y = 14.981, z = 4.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70900039, pos = { x = -25.375, y = 12.954, z = 19.273 }, rot = { x = 0.228, y = 0.000, z = 0.123 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4002, gadget_id = 70900039, pos = { x = 0.922, y = 12.938, z = 10.240 }, rot = { x = 359.956, y = 0.000, z = 0.279 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4003, gadget_id = 70900039, pos = { x = -17.352, y = 12.923, z = -13.503 }, rot = { x = 359.783, y = 0.001, z = 359.749 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4013, gadget_id = 70211021, pos = { x = -16.887, y = 12.928, z = 5.198 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 4017, gadget_id = 70800195, pos = { x = -12.754, y = 12.911, z = 3.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "GADGET_STATE_CHANGE_4004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4004", action = "action_EVENT_GADGET_STATE_CHANGE_4004" },
	{ config_id = 1004005, name = "GADGET_STATE_CHANGE_4005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4005", action = "action_EVENT_GADGET_STATE_CHANGE_4005" },
	{ config_id = 1004006, name = "GADGET_STATE_CHANGE_4006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4006", action = "action_EVENT_GADGET_STATE_CHANGE_4006" },
	{ config_id = 1004007, name = "VARIABLE_CHANGE_4007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4007", action = "action_EVENT_VARIABLE_CHANGE_4007" },
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011" },
	{ config_id = 1004012, name = "ANY_MONSTER_DIE_4012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4012", action = "action_EVENT_ANY_MONSTER_DIE_4012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "方碑count", value = 0, no_refresh = false }
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
		gadgets = { 4001, 4002, 4003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4004", "GADGET_STATE_CHANGE_4005", "GADGET_STATE_CHANGE_4006", "VARIABLE_CHANGE_4007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4008, 4009, 4014, 4015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4004(context, evt)
	-- 针对当前group内变量名为 "方碑count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "方碑count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	-- 针对当前group内变量名为 "方碑count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "方碑count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4006(context, evt)
	-- 针对当前group内变量名为 "方碑count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "方碑count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"方碑count"为3
	if ScriptLib.GetGroupVariableValue(context, "方碑count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010004, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 251010004, EntityType.GADGET, 4017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为4013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end