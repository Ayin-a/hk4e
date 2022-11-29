-- 基础信息
local base_info = {
	group_id = 133003911
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 911001, monster_id = 25010601, pos = { x = 2469.228, y = 208.007, z = -1127.764 }, rot = { x = 0.000, y = 341.087, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911002, monster_id = 25010401, pos = { x = 2465.300, y = 208.024, z = -1126.818 }, rot = { x = 0.000, y = 228.302, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911003, monster_id = 25010601, pos = { x = 2465.431, y = 207.899, z = -1130.414 }, rot = { x = 0.000, y = 318.775, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911006, monster_id = 25030201, pos = { x = 2467.075, y = 207.787, z = -1128.764 }, rot = { x = 0.000, y = 271.955, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911007, monster_id = 25010201, pos = { x = 2466.234, y = 208.006, z = -1126.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911008, monster_id = 25010201, pos = { x = 2464.923, y = 207.918, z = -1130.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911009, monster_id = 25010301, pos = { x = 2462.108, y = 208.018, z = -1129.740 }, rot = { x = 0.000, y = 17.320, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 911010, monster_id = 25020201, pos = { x = 2463.148, y = 208.341, z = -1125.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 911005, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2463.021, y = 208.039, z = -1128.557 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1911004, name = "ANY_MONSTER_DIE_911004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_911004", action = "action_EVENT_ANY_MONSTER_DIE_911004", trigger_count = 0 },
	{ config_id = 1911005, name = "ENTER_REGION_911005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_911005", action = "action_EVENT_ENTER_REGION_911005" },
	{ config_id = 1911011, name = "ANY_MONSTER_DIE_911011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_911011", action = "action_EVENT_ANY_MONSTER_DIE_911011" }
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
		monsters = { 911007, 911008, 911009, 911010 },
		gadgets = { },
		regions = { 911005 },
		triggers = { "ANY_MONSTER_DIE_911004", "ENTER_REGION_911005", "ANY_MONSTER_DIE_911011" },
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
function condition_EVENT_ANY_MONSTER_DIE_911004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_911004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_911005(context, evt)
	if evt.param1 ~= 911005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_911005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330039112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_911011(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_911011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 911001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 911003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 911002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 911006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2461.254,y=208.221,z=-1127.8}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end