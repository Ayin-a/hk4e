-- 基础信息
local base_info = {
	group_id = 133303009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 强化版
	{ config_id = 9001, monster_id = 26120201, pos = { x = -1726.838, y = 229.472, z = 3387.627 }, rot = { x = 0.000, y = 168.012, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1007, 1010 }, pose_id = 201, area_id = 23 },
	-- 弱鸡版
	{ config_id = 9006, monster_id = 26120201, pos = { x = -1726.838, y = 229.472, z = 3387.627 }, rot = { x = 0.000, y = 168.012, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1047 }, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 9003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1724.093, y = 228.978, z = 3391.287 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "ANY_MONSTER_DIE_9002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9002", action = "action_EVENT_ANY_MONSTER_DIE_9002" },
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003" },
	-- 雨天刷强化
	{ config_id = 1009004, name = "GROUP_LOAD_9004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9004", action = "action_EVENT_GROUP_LOAD_9004", trigger_count = 0 },
	-- 晴天刷弱鸡
	{ config_id = 1009005, name = "GROUP_LOAD_9005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9005", action = "action_EVENT_GROUP_LOAD_9005", trigger_count = 0 },
	-- 雨天刷强化
	{ config_id = 1009007, name = "GROUP_REFRESH_9007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_9007", action = "action_EVENT_GROUP_REFRESH_9007", trigger_count = 0 },
	-- 晴天刷弱鸡
	{ config_id = 1009008, name = "GROUP_REFRESH_9008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_9008", action = "action_EVENT_GROUP_REFRESH_9008", trigger_count = 0 }
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
		regions = { 9003 },
		triggers = { "ANY_MONSTER_DIE_9002", "ENTER_REGION_9003", "GROUP_LOAD_9004", "GROUP_LOAD_9005", "GROUP_REFRESH_9007", "GROUP_REFRESH_9008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 9001, 9006 },
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
function condition_EVENT_ANY_MONSTER_DIE_9002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301405_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
	-- 调用提示id为 1111243 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111243) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9004(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303009, EntityType.MONSTER, 9006)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9005(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303009, EntityType.MONSTER, 9001)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_9007(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_9007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303009, EntityType.MONSTER, 9006)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_9008(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_9008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 9006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133303009, EntityType.MONSTER, 9001)
	
		
	
	return 0
end