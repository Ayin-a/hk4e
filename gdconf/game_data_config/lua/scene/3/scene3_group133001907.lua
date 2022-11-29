-- 基础信息
local base_info = {
	group_id = 133001907
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 907001, monster_id = 20011001, pos = { x = 1808.962, y = 194.731, z = -1405.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 2 },
	{ config_id = 907002, monster_id = 20011001, pos = { x = 1810.786, y = 194.833, z = -1406.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 2 },
	{ config_id = 907003, monster_id = 20011001, pos = { x = 1807.399, y = 194.781, z = -1406.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 2 },
	{ config_id = 907005, monster_id = 20011101, pos = { x = 1809.431, y = 195.008, z = -1412.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000900, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 907006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1810.153, y = 195.046, z = -1410.500 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1907004, name = "ANY_MONSTER_DIE_907004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_907004", action = "action_EVENT_ANY_MONSTER_DIE_907004", trigger_count = 0 },
	{ config_id = 1907006, name = "ENTER_REGION_907006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_907006", action = "action_EVENT_ENTER_REGION_907006", trigger_count = 0 }
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
		monsters = { 907001, 907002, 907003 },
		gadgets = { },
		regions = { 907006 },
		triggers = { "ANY_MONSTER_DIE_907004", "ENTER_REGION_907006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 907005 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_907004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_907004(context, evt)
	-- 调用提示id为 1110107 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001907, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_907006(context, evt)
	if evt.param1 ~= 907006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_907006(context, evt)
	-- 调用提示id为 1110106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end