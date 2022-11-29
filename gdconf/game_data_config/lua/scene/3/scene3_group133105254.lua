-- 基础信息
local base_info = {
	group_id = 133105254
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 254001, monster_id = 21020101, pos = { x = 1093.656, y = 200.387, z = 59.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, isElite = true, area_id = 9 },
	{ config_id = 254002, monster_id = 21010601, pos = { x = 1096.106, y = 200.386, z = 57.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 9 },
	{ config_id = 254003, monster_id = 21010601, pos = { x = 1090.915, y = 200.387, z = 57.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 9 },
	{ config_id = 254004, monster_id = 21010601, pos = { x = 1099.878, y = 200.327, z = 59.633 }, rot = { x = 0.000, y = 344.008, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 9 },
	{ config_id = 254005, monster_id = 21030201, pos = { x = 1093.648, y = 200.387, z = 55.931 }, rot = { x = 0.000, y = 358.617, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 254006, shape = RegionShape.SPHERE, radius = 4.08, pos = { x = 1093.523, y = 200.094, z = 71.100 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1254006, name = "ENTER_REGION_254006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_254006", action = "action_EVENT_ENTER_REGION_254006" },
	{ config_id = 1254007, name = "ANY_MONSTER_DIE_254007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_254007", action = "action_EVENT_ANY_MONSTER_DIE_254007" }
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
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 254006 },
		triggers = { "ENTER_REGION_254006", "ANY_MONSTER_DIE_254007" },
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
function condition_EVENT_ENTER_REGION_254006(context, evt)
	if evt.param1 ~= 254006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_254006(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1093, y=200, z=71}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254002, delay_time = 1.2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254003, delay_time = 1.2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254004, delay_time = 1.2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1.2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 254005, delay_time = 1.2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_254007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_254007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310525402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end