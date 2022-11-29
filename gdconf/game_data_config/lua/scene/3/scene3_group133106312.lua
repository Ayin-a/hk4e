-- 基础信息
local base_info = {
	group_id = 133106312
}

-- Trigger变量
local defs = {
	gadget_1 = 312013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312001, monster_id = 25010201, pos = { x = -620.132, y = 219.050, z = 1309.205 }, rot = { x = 0.000, y = 1.144, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 312002, monster_id = 25010301, pos = { x = -615.003, y = 219.622, z = 1312.159 }, rot = { x = 0.000, y = 195.404, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 8 },
	{ config_id = 312004, monster_id = 25010301, pos = { x = -613.189, y = 219.401, z = 1307.474 }, rot = { x = 0.000, y = 252.625, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 312005, monster_id = 25030201, pos = { x = -616.534, y = 218.978, z = 1308.011 }, rot = { x = 353.556, y = 231.572, z = 355.257 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 312006, monster_id = 25010201, pos = { x = -618.761, y = 218.605, z = 1306.231 }, rot = { x = 0.000, y = 200.201, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 312013, shape = RegionShape.SPHERE, radius = 25, pos = { x = -612.789, y = 219.651, z = 1310.272 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1312011, name = "ANY_MONSTER_DIE_312011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_312011", action = "action_EVENT_ANY_MONSTER_DIE_312011", trigger_count = 0 },
	{ config_id = 1312013, name = "ENTER_REGION_312013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_312013", action = "", trigger_count = 0 }
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
		monsters = { 312001, 312002, 312004, 312005, 312006 },
		gadgets = { },
		regions = { 312013 },
		triggers = { "ANY_MONSTER_DIE_312011", "ENTER_REGION_312013" },
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
function condition_EVENT_ANY_MONSTER_DIE_312011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_312011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331063121") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_312013(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7082306) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end