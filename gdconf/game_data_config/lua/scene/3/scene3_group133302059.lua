-- 基础信息
local base_info = {
	group_id = 133302059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 20010101, pos = { x = -1050.545, y = 224.574, z = 2745.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 59002, monster_id = 20010101, pos = { x = -1049.699, y = 225.946, z = 2749.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 59006, monster_id = 26010201, pos = { x = -1050.713, y = 225.512, z = 2747.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59004, gadget_id = 70540041, pos = { x = -1050.749, y = 225.540, z = 2747.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 59003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1051.009, y = 225.748, z = 2743.993 }, area_id = 21 },
	{ config_id = 59005, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1052.542, y = 224.858, z = 2736.297 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1059003, name = "ENTER_REGION_59003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59003", action = "action_EVENT_ENTER_REGION_59003" },
	{ config_id = 1059005, name = "ENTER_REGION_59005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59005", action = "action_EVENT_ENTER_REGION_59005" },
	{ config_id = 1059007, name = "ANY_MONSTER_DIE_59007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59007", action = "action_EVENT_ANY_MONSTER_DIE_59007" }
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
		monsters = { 59001, 59002 },
		gadgets = { 59004 },
		regions = { 59003 },
		triggers = { "ENTER_REGION_59003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 59001, 59002, 59006 },
		gadgets = { 59004 },
		regions = { 59005 },
		triggers = { "ENTER_REGION_59005", "ANY_MONSTER_DIE_59007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_59003(context, evt)
	if evt.param1 ~= 59003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302059, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59005(context, evt)
	if evt.param1 ~= 59005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59005(context, evt)
	-- 调用提示id为 400195 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59007(context, evt)
	--判断死亡怪物的configid是否为 59006
	if evt.param1 ~= 59006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q731041301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end