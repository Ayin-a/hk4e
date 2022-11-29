-- 基础信息
local base_info = {
	group_id = 133001364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 20010201, pos = { x = 1936.917, y = 196.922, z = -1366.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, pose_id = 201, area_id = 2 },
	{ config_id = 364003, monster_id = 20010101, pos = { x = 1935.013, y = 196.740, z = -1366.894 }, rot = { x = 0.000, y = 49.554, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 2 },
	{ config_id = 364004, monster_id = 20010101, pos = { x = 1939.063, y = 197.272, z = -1368.760 }, rot = { x = 0.000, y = 304.650, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 2 },
	{ config_id = 364005, monster_id = 20010101, pos = { x = 1938.677, y = 196.914, z = -1363.457 }, rot = { x = 0.000, y = 214.972, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 2 }
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
	{ config_id = 1364002, name = "ANY_MONSTER_DIE_364002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364002", action = "action_EVENT_ANY_MONSTER_DIE_364002" },
	{ config_id = 1364006, name = "ANY_MONSTER_DIE_364006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364006", action = "action_EVENT_ANY_MONSTER_DIE_364006" }
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
		monsters = { 364001, 364003, 364004, 364005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_364002", "ANY_MONSTER_DIE_364006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001364) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001364") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364006(context, evt)
	if 364001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364006(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001364, monsters = {364003,364004,364005}, gadgets = {} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end