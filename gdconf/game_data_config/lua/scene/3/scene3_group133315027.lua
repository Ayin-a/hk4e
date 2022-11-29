-- 基础信息
local base_info = {
	group_id = 133315027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 28060101, pos = { x = -307.138, y = 132.000, z = 2450.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 27003, monster_id = 28060102, pos = { x = -311.358, y = 132.000, z = 2455.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isElite = true, pose_id = 1, title_id = 10108, special_name_id = 10141, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 接任务用
	{ config_id = 27004, shape = RegionShape.SPHERE, radius = 80, pos = { x = -310.142, y = 132.000, z = 2447.483 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1027002, name = "ANY_MONSTER_DIE_27002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27002", action = "action_EVENT_ANY_MONSTER_DIE_27002" },
	-- 接任务用
	{ config_id = 1027004, name = "ENTER_REGION_27004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1027005, name = "GROUP_LOAD_27005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_27005", action = "action_EVENT_GROUP_LOAD_27005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = true }
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
		monsters = { 27001, 27003 },
		gadgets = { },
		regions = { 27004 },
		triggers = { "ANY_MONSTER_DIE_27002", "ENTER_REGION_27004", "GROUP_LOAD_27005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27002(context, evt)
	--判断死亡怪物的configid是否为 27003
	if evt.param1 ~= 27003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7307602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "baodi" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_27005(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_27005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7307602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end