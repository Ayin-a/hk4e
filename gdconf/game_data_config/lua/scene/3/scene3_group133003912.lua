-- 基础信息
local base_info = {
	group_id = 133003912
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 912001, monster_id = 25010201, pos = { x = 2352.644, y = 206.730, z = -1147.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 912002, monster_id = 25010401, pos = { x = 2352.644, y = 206.593, z = -1140.891 }, rot = { x = 0.000, y = 188.752, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 912003, monster_id = 25010301, pos = { x = 2355.814, y = 206.524, z = -1144.408 }, rot = { x = 0.000, y = 268.605, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 },
	{ config_id = 912004, monster_id = 25010601, pos = { x = 2348.979, y = 206.265, z = -1144.408 }, rot = { x = 0.000, y = 97.179, z = 0.000 }, level = 2, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 912005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 2352.118, y = 206.499, z = -1144.550 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1912005, name = "ENTER_REGION_912005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_912005", action = "action_EVENT_ENTER_REGION_912005" },
	{ config_id = 1912006, name = "ANY_MONSTER_DIE_912006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_912006", action = "action_EVENT_ANY_MONSTER_DIE_912006", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 912005 },
		triggers = { "ENTER_REGION_912005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 912001, 912002, 912003, 912004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_912006" },
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
function condition_EVENT_ENTER_REGION_912005(context, evt)
	if evt.param1 ~= 912005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_912005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039122") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003912, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_912006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_912006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039121") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end