-- 基础信息
local base_info = {
	group_id = 133223096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96005, monster_id = 24020101, pos = { x = -5794.440, y = 210.013, z = -2579.230 }, rot = { x = 0.000, y = 128.805, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 96006, monster_id = 24020101, pos = { x = -5794.938, y = 210.022, z = -2588.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96004, gadget_id = 70211150, pos = { x = -5793.946, y = 210.008, z = -2584.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21900007, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096002, name = "VARIABLE_CHANGE_96002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_96002", action = "action_EVENT_VARIABLE_CHANGE_96002" },
	{ config_id = 1096003, name = "VARIABLE_CHANGE_96003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_96003", action = "action_EVENT_VARIABLE_CHANGE_96003" },
	{ config_id = 1096007, name = "ANY_MONSTER_DIE_96007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96007", action = "action_EVENT_ANY_MONSTER_DIE_96007" },
	{ config_id = 1096009, name = "GROUP_LOAD_96009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_96009", action = "action_EVENT_GROUP_LOAD_96009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "puzzle_progress", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 96001, gadget_id = 70211101, pos = { x = -5793.854, y = 210.064, z = -2582.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1096008, name = "GADGET_STATE_CHANGE_96008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96008", action = "action_EVENT_GADGET_STATE_CHANGE_96008" }
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_96002", "VARIABLE_CHANGE_96003", "GROUP_LOAD_96009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗,
		monsters = { 96005, 96006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_96007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_96002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"puzzle_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "puzzle_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_96002(context, evt)
	-- 将本组内变量名为 "BirdStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "BirdStart", 1, 133223411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_96003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"puzzle_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "puzzle_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_96003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223096, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_96007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96007(context, evt)
	-- 创建id为96004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 96004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_96009(context, evt)
	-- 判断变量"puzzle_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "puzzle_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_96009(context, evt)
	-- 将本组内变量名为 "BirdStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "BirdStart", 1, 133223411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end