-- 基础信息
local base_info = {
	group_id = 133309036
}

-- Trigger变量
local defs = {
	bossConfigId = 36001,
	inner_region = 36004,
	outer_region = 36004,
	related_region = 36004,
	group_id = 133309036
}

-- DEFS_MISCS
local BossConfigID = 36001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 24050101, pos = { x = -2349.509, y = 462.131, z = 5530.325 }, rot = { x = 0.000, y = 163.077, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5221 }, pose_id = 1, title_id = 10136, special_name_id = 10190, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 36004, shape = RegionShape.POLYGON, pos = { x = -2349.386, y = 465.000, z = 5530.024 }, height = 70.000, point_array = { { x = -2312.232, y = 5529.877 }, { x = -2349.426, y = 5567.211 }, { x = -2386.540, y = 5530.034 }, { x = -2349.375, y = 5492.838 } }, area_id = 27, vision_type_list = { 33090021 } }
}

-- 触发器
triggers = {
	{ config_id = 1036002, name = "ANY_MONSTER_DIE_36002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36002", action = "action_EVENT_ANY_MONSTER_DIE_36002" },
	{ config_id = 1036003, name = "GROUP_LOAD_36003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36003", action = "action_EVENT_GROUP_LOAD_36003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
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
		monsters = { 36001 },
		gadgets = { },
		regions = { 36004 },
		triggers = { "ANY_MONSTER_DIE_36002", "GROUP_LOAD_36003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36002(context, evt)
	if 36001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308317") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36003(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308317") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V3.0"
require "V2_7/BW_NearBossAuthorityChange"
require "V3_1/ResetBoss"