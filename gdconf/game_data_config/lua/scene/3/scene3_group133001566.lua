-- 基础信息
local base_info = {
	group_id = 133001566
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 566013, monster_id = 20011001, pos = { x = 2099.513, y = 209.229, z = -1255.392 }, rot = { x = 0.000, y = 204.692, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 566014, monster_id = 20011001, pos = { x = 2101.302, y = 209.815, z = -1258.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 566015, monster_id = 20011001, pos = { x = 2095.627, y = 208.220, z = -1258.416 }, rot = { x = 0.000, y = 47.545, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 566016, monster_id = 20011001, pos = { x = 2097.891, y = 209.743, z = -1262.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 566001, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2099.057, y = 209.196, z = -1256.763 }, area_id = 1 },
	{ config_id = 566003, shape = RegionShape.SPHERE, radius = 16, pos = { x = 2099.057, y = 209.196, z = -1256.763 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1566001, name = "ENTER_REGION_566001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_566001", action = "action_EVENT_ENTER_REGION_566001" },
	{ config_id = 1566002, name = "ANY_MONSTER_DIE_566002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_566002", action = "action_EVENT_ANY_MONSTER_DIE_566002" },
	{ config_id = 1566003, name = "ENTER_REGION_566003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_566003", action = "action_EVENT_ENTER_REGION_566003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "prekill", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		regions = { 566001, 566003 },
		triggers = { "ENTER_REGION_566001", "ENTER_REGION_566003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 566013, 566014, 566015, 566016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_566002" },
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
function condition_EVENT_ENTER_REGION_566001(context, evt)
	if evt.param1 ~= 566001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_566001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2099,y=209,z=-1256}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021107, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_566002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_566002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2097,y=209,z=-1257}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021109, pos, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015662") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_566003(context, evt)
	if evt.param1 ~= 566003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_566003(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2099,y=209,z=-1256}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021108, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015661") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001566, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end