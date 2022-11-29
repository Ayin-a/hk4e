-- 基础信息
local base_info = {
	group_id = 133003790
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 790001, monster_id = 23010401, pos = { x = 2755.996, y = 265.776, z = -1185.683 }, rot = { x = 0.000, y = 261.992, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 1 },
	{ config_id = 790002, monster_id = 23010501, pos = { x = 2747.641, y = 265.024, z = -1189.942 }, rot = { x = 0.000, y = 52.145, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 790003, monster_id = 23010601, pos = { x = 2747.250, y = 267.291, z = -1182.895 }, rot = { x = 0.000, y = 127.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 1 },
	{ config_id = 790004, monster_id = 23010301, pos = { x = 2764.117, y = 264.455, z = -1193.182 }, rot = { x = 0.000, y = 309.491, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 790006, gadget_id = 70310004, pos = { x = 2735.449, y = 287.182, z = -1170.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 790009, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2750.403, y = 266.179, z = -1184.852 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1790005, name = "ANY_MONSTER_DIE_790005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_790005" },
	{ config_id = 1790007, name = "ANY_MONSTER_DIE_790007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_790007", action = "action_EVENT_ANY_MONSTER_DIE_790007" },
	{ config_id = 1790008, name = "SPECIFIC_MONSTER_HP_CHANGE_790008", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "790004", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_790008", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_790008" },
	{ config_id = 1790009, name = "ENTER_REGION_790009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_790009", action = "action_EVENT_ENTER_REGION_790009" }
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
	suite = 3,
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
		monsters = { 790001, 790002, 790003 },
		gadgets = { },
		regions = { 790009 },
		triggers = { "ANY_MONSTER_DIE_790005", "ANY_MONSTER_DIE_790007", "ENTER_REGION_790009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 790004 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_790008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 790006 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_790005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_790007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_790007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003790, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2753.453,y=265.5874,z=-1186.584}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_790008(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_790008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003790, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_790009(context, evt)
	if evt.param1 ~= 790009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_790009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end