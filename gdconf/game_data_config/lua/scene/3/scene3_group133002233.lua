-- 基础信息
local base_info = {
	group_id = 133002233
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 611, monster_id = 20010801, pos = { x = 1861.072, y = 201.158, z = -171.721 }, rot = { x = 0.000, y = 152.535, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 612, monster_id = 20010801, pos = { x = 1857.646, y = 201.331, z = -175.069 }, rot = { x = 0.000, y = 147.985, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 746, monster_id = 20010801, pos = { x = 1863.672, y = 201.283, z = -174.808 }, rot = { x = 0.000, y = 173.419, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 798, monster_id = 20010901, pos = { x = 1857.483, y = 200.594, z = -169.826 }, rot = { x = 0.000, y = 149.681, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 870, monster_id = 22010301, pos = { x = 1881.026, y = 202.241, z = -176.628 }, rot = { x = 0.000, y = 202.747, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 3 },
	{ config_id = 871, monster_id = 21030101, pos = { x = 1883.024, y = 202.414, z = -178.641 }, rot = { x = 0.000, y = 217.052, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 3 },
	{ config_id = 872, monster_id = 21010901, pos = { x = 1878.090, y = 201.999, z = -177.207 }, rot = { x = 0.000, y = 167.116, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 3 },
	{ config_id = 233002, monster_id = 20010801, pos = { x = 1857.771, y = 201.349, z = -175.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 233003, monster_id = 20010801, pos = { x = 1861.181, y = 201.170, z = -171.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 233004, monster_id = 20010801, pos = { x = 1863.754, y = 201.287, z = -174.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 233005, monster_id = 20010901, pos = { x = 1857.376, y = 200.593, z = -169.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 287, shape = RegionShape.SPHERE, radius = 14.4, pos = { x = 1860.365, y = 201.000, z = -173.521 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000287, name = "ENTER_REGION_287", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287", action = "action_EVENT_ENTER_REGION_287" },
	{ config_id = 1233001, name = "ANY_MONSTER_DIE_233001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_233001", action = "action_EVENT_ANY_MONSTER_DIE_233001", trigger_count = 0 },
	{ config_id = 1233006, name = "ANY_MONSTER_DIE_233006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_233006" },
	{ config_id = 1233007, name = "QUEST_FINISH_233007", event = EventType.EVENT_QUEST_FINISH, source = "2006306", condition = "condition_EVENT_QUEST_FINISH_233007", action = "action_EVENT_QUEST_FINISH_233007" },
	{ config_id = 1233008, name = "QUEST_FINISH_233008", event = EventType.EVENT_QUEST_FINISH, source = "2006308", condition = "", action = "action_EVENT_QUEST_FINISH_233008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_monster_killed", value = 1, no_refresh = false }
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
		monsters = { 611, 612, 746, 798 },
		gadgets = { },
		regions = { 287 },
		triggers = { "ENTER_REGION_287" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 870, 871, 872 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 233002, 233003, 233004, 233005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_233001", "ANY_MONSTER_DIE_233006", "QUEST_FINISH_233007", "QUEST_FINISH_233008" },
		rand_weight = 0,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_287(context, evt)
	if evt.param1 ~= 287 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_233001(context, evt)
	if 233005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022331") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233006(context, evt)
	-- 变量"is_monster_killed"赋值为0
	ScriptLib.SetGroupVariableValue(context, "is_monster_killed", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_233007(context, evt)
	-- 判断变量"is_monster_killed"为0
	if ScriptLib.GetGroupVariableValue(context, "is_monster_killed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_233007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002233, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_233008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002233, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end