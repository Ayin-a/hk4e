-- 基础信息
local base_info = {
	group_id = 133213262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 23050101, pos = { x = -3825.869, y = 321.429, z = -3068.862 }, rot = { x = 0.000, y = 40.812, z = 0.000 }, level = 29, drop_tag = "藏镜侍女", disableWander = true, area_id = 12 },
	{ config_id = 262002, monster_id = 23040101, pos = { x = -3822.104, y = 318.937, z = -3064.354 }, rot = { x = 0.000, y = 244.886, z = 0.000 }, level = 29, drop_tag = "召唤师", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262004, gadget_id = 70211021, pos = { x = -3826.847, y = 322.223, z = -3070.234 }, rot = { x = 0.000, y = 35.972, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262003, name = "VARIABLE_CHANGE_262003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_262003", action = "action_EVENT_VARIABLE_CHANGE_262003" },
	{ config_id = 1262005, name = "ANY_MONSTER_DIE_262005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262005", action = "action_EVENT_ANY_MONSTER_DIE_262005" },
	{ config_id = 1262006, name = "GROUP_LOAD_262006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_262006", action = "action_EVENT_GROUP_LOAD_262006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		triggers = { "VARIABLE_CHANGE_262003", "GROUP_LOAD_262006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 262001, 262002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_262003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_262003(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213262, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133213262) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262005(context, evt)
	-- 创建id为262004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 262004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_262006(context, evt)
	-- 判断变量"count1"为1
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 1 then
			return false
	end
	
	-- 判断变量"count2"为1
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213262, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end