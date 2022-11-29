-- 基础信息
local base_info = {
	group_id = 133302084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84001, monster_id = 25210501, pos = { x = -343.406, y = 249.601, z = 2753.390 }, rot = { x = 0.000, y = 225.649, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 24 },
	{ config_id = 84002, monster_id = 25210201, pos = { x = -345.779, y = 249.601, z = 2751.398 }, rot = { x = 0.000, y = 235.807, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 24 },
	{ config_id = 84004, monster_id = 25210401, pos = { x = -344.320, y = 249.601, z = 2749.061 }, rot = { x = 0.000, y = 249.503, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 24 },
	{ config_id = 84005, monster_id = 25210302, pos = { x = -338.249, y = 249.601, z = 2763.554 }, rot = { x = 0.000, y = 211.980, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 24 },
	{ config_id = 84006, monster_id = 25210201, pos = { x = -333.760, y = 249.601, z = 2745.804 }, rot = { x = 0.000, y = 297.005, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084003, name = "ANY_MONSTER_DIE_84003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84003", action = "action_EVENT_ANY_MONSTER_DIE_84003" },
	-- suite2计算变量1
	{ config_id = 1084007, name = "ANY_MONSTER_DIE_84007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84007", action = "action_EVENT_ANY_MONSTER_DIE_84007" },
	-- suite2计算变量2
	{ config_id = 1084008, name = "ANY_MONSTER_DIE_84008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84008", action = "action_EVENT_ANY_MONSTER_DIE_84008" },
	{ config_id = 1084009, name = "VARIABLE_CHANGE_84009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_84009", action = "action_EVENT_VARIABLE_CHANGE_84009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		monsters = { 84001, 84002, 84004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84003", "ANY_MONSTER_DIE_84007", "ANY_MONSTER_DIE_84008", "VARIABLE_CHANGE_84009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 84005, 84006 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_84003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302084, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84007(context, evt)
	--判断死亡怪物的configid是否为 84005
	if evt.param1 ~= 84005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	--判断死亡怪物的configid是否为 84006
	if evt.param1 ~= 84006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_84009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_84009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020841") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end