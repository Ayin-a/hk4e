-- 基础信息
local base_info = {
	group_id = 133001152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 779, monster_id = 20011001, pos = { x = 1839.939, y = 226.298, z = -1103.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 780, monster_id = 20011001, pos = { x = 1840.267, y = 226.527, z = -1107.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 781, monster_id = 20011001, pos = { x = 1836.412, y = 226.635, z = -1101.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 1076, monster_id = 20011101, pos = { x = 1834.778, y = 225.752, z = -1099.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 190, shape = RegionShape.SPHERE, radius = 27.7, pos = { x = 1999.754, y = 197.271, z = -1281.554 }, area_id = 2 },
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 18.4, pos = { x = 2004.913, y = 199.856, z = -1214.684 }, area_id = 2 },
	{ config_id = 262, shape = RegionShape.SPHERE, radius = 46.3, pos = { x = 1925.659, y = 197.189, z = -1391.112 }, area_id = 2 },
	{ config_id = 324, shape = RegionShape.SPHERE, radius = 23.1, pos = { x = 1954.803, y = 193.661, z = -1220.576 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000190, name = "ENTER_REGION_190", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190", action = "action_EVENT_ENTER_REGION_190", trigger_count = 0 },
	{ config_id = 1000191, name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", trigger_count = 0 },
	{ config_id = 1000262, name = "ENTER_REGION_262", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262", action = "action_EVENT_ENTER_REGION_262" },
	{ config_id = 1000324, name = "ENTER_REGION_324", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_324", action = "action_EVENT_ENTER_REGION_324", trigger_count = 0 },
	{ config_id = 1000325, name = "TIMER_EVENT_325", event = EventType.EVENT_TIMER_EVENT, source = "s_unlock", condition = "", action = "action_EVENT_TIMER_EVENT_325", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "lock", value = 0, no_refresh = false }
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
		regions = { 190, 191, 324 },
		triggers = { "ENTER_REGION_190", "ENTER_REGION_191", "ENTER_REGION_324", "TIMER_EVENT_325" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_190(context, evt)
	if evt.param1 ~= 190 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{780,781}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {780,781}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟3600秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 3600) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{781,779}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {781,779}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟3600秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 3600) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262(context, evt)
	if evt.param1 ~= 262 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{781,779,780,1076}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {781,779,780,1076}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_324(context, evt)
	if evt.param1 ~= 324 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"lock"为0
	if ScriptLib.GetGroupVariableValue(context, "lock") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_324(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{780,781}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {780,781}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	-- 将本组内变量名为 "lock" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟3600秒后,向groupId为：133001152的对象,请求一次调用,并将string参数："s_unlock" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001152, "s_unlock", 3600) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_325(context, evt)
	-- 将本组内变量名为 "lock" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lock", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end