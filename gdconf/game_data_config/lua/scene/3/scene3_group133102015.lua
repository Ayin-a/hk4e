-- 基础信息
local base_info = {
	group_id = 133102015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15003, monster_id = 23010101, pos = { x = 1669.575, y = 212.484, z = 693.055 }, rot = { x = 0.000, y = 264.293, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, affix = { 1008, 1018 }, isElite = true, pose_id = 9011, area_id = 5 }
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
	{ config_id = 1015004, name = "ANY_MONSTER_DIE_15004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15004", action = "action_EVENT_ANY_MONSTER_DIE_15004" },
	{ config_id = 1015027, name = "SPECIFIC_MONSTER_HP_CHANGE_15027", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "15003", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_15027", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_15027" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 15003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15004", "SPECIFIC_MONSTER_HP_CHANGE_15027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15004(context, evt)
	if 15003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331020151") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_15027(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_15027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331020151") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end