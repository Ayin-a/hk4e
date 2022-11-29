-- 基础信息
local base_info = {
	group_id = 133104575
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 575001, monster_id = 25030201, pos = { x = 689.466, y = 208.200, z = 363.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 575002, monster_id = 25010201, pos = { x = 693.249, y = 208.214, z = 361.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 575003, monster_id = 25020201, pos = { x = 695.045, y = 208.349, z = 364.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 575004, monster_id = 25020201, pos = { x = 690.086, y = 208.564, z = 367.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 575006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 692.639, y = 208.235, z = 361.153 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1575005, name = "ANY_MONSTER_DIE_575005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_575005", action = "action_EVENT_ANY_MONSTER_DIE_575005" },
	{ config_id = 1575006, name = "ENTER_REGION_575006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_575006", action = "action_EVENT_ENTER_REGION_575006" }
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
		monsters = { 575001, 575002, 575003, 575004 },
		gadgets = { },
		regions = { 575006 },
		triggers = { "ANY_MONSTER_DIE_575005", "ENTER_REGION_575006" },
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
function condition_EVENT_ANY_MONSTER_DIE_575005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_575005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331045751") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_575006(context, evt)
	if evt.param1 ~= 575006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_575006(context, evt)
	-- 调用提示id为 1110135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end