-- 基础信息
local base_info = {
	group_id = 133303008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 增强版
	{ config_id = 8001, monster_id = 26120301, pos = { x = -1578.174, y = 220.014, z = 3295.287 }, rot = { x = 0.000, y = 169.182, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1007, 1010 }, pose_id = 101, area_id = 23 },
	-- 弱鸡版
	{ config_id = 8005, monster_id = 26120301, pos = { x = -1578.174, y = 220.014, z = 3295.287 }, rot = { x = 0.000, y = 169.182, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1047 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- reminder
	{ config_id = 8003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1576.187, y = 219.961, z = 3294.994 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "ANY_MONSTER_DIE_8002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8002", action = "action_EVENT_ANY_MONSTER_DIE_8002" },
	-- reminder
	{ config_id = 1008003, name = "ENTER_REGION_8003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8003", action = "action_EVENT_ENTER_REGION_8003" },
	-- 判断雨天刷增强版
	{ config_id = 1008004, name = "GROUP_LOAD_8004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8004", action = "action_EVENT_GROUP_LOAD_8004", trigger_count = 0 },
	-- 判断晴天刷弱鸡版
	{ config_id = 1008006, name = "GROUP_LOAD_8006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8006", action = "action_EVENT_GROUP_LOAD_8006", trigger_count = 0 },
	-- 判断雨天刷增强版
	{ config_id = 1008007, name = "GROUP_REFRESH_8007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_8007", action = "action_EVENT_GROUP_REFRESH_8007", trigger_count = 0 },
	-- 判断晴天刷弱鸡版
	{ config_id = 1008008, name = "GROUP_REFRESH_8008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_8008", action = "action_EVENT_GROUP_REFRESH_8008", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { 8003 },
		triggers = { "ANY_MONSTER_DIE_8002", "ENTER_REGION_8003", "GROUP_LOAD_8004", "GROUP_LOAD_8006", "GROUP_REFRESH_8007", "GROUP_REFRESH_8008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8001, 8005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301404_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8003(context, evt)
	if evt.param1 ~= 8003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8003(context, evt)
	-- 调用提示id为 1111243 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111243) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8004(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303008, EntityType.MONSTER, 8005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8006(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303008, EntityType.MONSTER, 8001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_8007(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_8007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303008, EntityType.MONSTER, 8005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_8008(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_8008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303008, EntityType.MONSTER, 8001)
	
		
	
	return 0
end