-- 基础信息
local base_info = {
	group_id = 133001275
}

-- Trigger变量
local defs = {
	monster_id_1 = 520,
	monster_id_2 = 522,
	monster_id_3 = 521
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516, monster_id = 21030101, pos = { x = 1571.940, y = 252.229, z = -1629.948 }, rot = { x = 0.000, y = 226.867, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 2 },
	{ config_id = 517, monster_id = 20010801, pos = { x = 1571.076, y = 252.086, z = -1641.041 }, rot = { x = 0.000, y = 266.344, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 2 },
	{ config_id = 518, monster_id = 21030101, pos = { x = 1555.627, y = 252.181, z = -1653.801 }, rot = { x = 0.000, y = 18.312, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 2 },
	{ config_id = 519, monster_id = 20010801, pos = { x = 1566.251, y = 252.086, z = -1648.496 }, rot = { x = 0.000, y = 327.628, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 2 },
	{ config_id = 520, monster_id = 20010501, pos = { x = 1566.812, y = 252.090, z = -1631.946 }, rot = { x = 0.000, y = 199.658, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 },
	{ config_id = 521, monster_id = 20010501, pos = { x = 1558.537, y = 252.091, z = -1651.241 }, rot = { x = 0.000, y = 30.494, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 },
	{ config_id = 522, monster_id = 20010501, pos = { x = 1566.551, y = 252.087, z = -1649.186 }, rot = { x = 0.000, y = 337.190, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 },
	{ config_id = 638, monster_id = 21010201, pos = { x = 1572.369, y = 252.088, z = -1643.683 }, rot = { x = 0.000, y = 294.193, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 },
	{ config_id = 639, monster_id = 21020101, pos = { x = 1572.311, y = 252.089, z = -1646.889 }, rot = { x = 0.000, y = 304.165, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 },
	{ config_id = 640, monster_id = 21010201, pos = { x = 1568.710, y = 252.087, z = -1648.692 }, rot = { x = 0.000, y = 331.090, z = 0.000 }, level = 12, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000139, name = "TIMER_EVENT_139", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_139", action = "action_EVENT_TIMER_EVENT_139" },
	{ config_id = 1000411, name = "ANY_MONSTER_LIVE_411", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_411", action = "action_EVENT_ANY_MONSTER_LIVE_411" },
	{ config_id = 1000412, name = "ANY_MONSTER_DIE_412", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412", action = "action_EVENT_ANY_MONSTER_DIE_412" },
	{ config_id = 1000413, name = "ANY_MONSTER_DIE_413", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413", action = "action_EVENT_ANY_MONSTER_DIE_413" },
	{ config_id = 1000414, name = "ANY_MONSTER_DIE_414", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_414", action = "action_EVENT_ANY_MONSTER_DIE_414" },
	{ config_id = 1000415, name = "ANY_MONSTER_DIE_415", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_415", action = "action_EVENT_ANY_MONSTER_DIE_415" },
	{ config_id = 1000416, name = "ANY_MONSTER_DIE_416", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_416", action = "action_EVENT_ANY_MONSTER_DIE_416" },
	{ config_id = 1000417, name = "ANY_MONSTER_DIE_417", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_417", action = "action_EVENT_ANY_MONSTER_DIE_417" },
	{ config_id = 1000418, name = "ANY_MONSTER_DIE_418", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418", action = "action_EVENT_ANY_MONSTER_DIE_418" },
	{ config_id = 1000419, name = "VARIABLE_CHANGE_419", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_419", action = "action_EVENT_VARIABLE_CHANGE_419" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Boss", value = 0, no_refresh = false }
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
		monsters = { 516, 517, 518, 519 },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_139", "ANY_MONSTER_LIVE_411", "ANY_MONSTER_DIE_412", "ANY_MONSTER_DIE_413", "ANY_MONSTER_DIE_414", "ANY_MONSTER_DIE_415", "ANY_MONSTER_DIE_416", "ANY_MONSTER_DIE_417", "ANY_MONSTER_DIE_418", "VARIABLE_CHANGE_419" },
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
function condition_EVENT_TIMER_EVENT_139(context, evt)
	if "M1" ~= evt.source_name then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_139(context, evt)
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_3, delay_time = 0 }) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_411(context, evt)
	if 518 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_411(context, evt)
	-- 延迟20秒后,向groupId为：133001275的对象,请求一次调用,并将string参数："M1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001275, "M1", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412(context, evt)
	--判断死亡怪物的configid是否为 522
	if evt.param1 ~= 522 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413(context, evt)
	--判断死亡怪物的configid是否为 521
	if evt.param1 ~= 521 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_414(context, evt)
	--判断死亡怪物的configid是否为 520
	if evt.param1 ~= 520 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_414(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_415(context, evt)
	--判断死亡怪物的configid是否为 519
	if evt.param1 ~= 519 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_415(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_416(context, evt)
	--判断死亡怪物的configid是否为 518
	if evt.param1 ~= 518 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_416(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_417(context, evt)
	--判断死亡怪物的configid是否为 517
	if evt.param1 ~= 517 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_417(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_418(context, evt)
	--判断死亡怪物的configid是否为 516
	if evt.param1 ~= 516 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418(context, evt)
	-- 针对当前group内变量名为 "Boss" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Boss", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_419(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Boss"为7
	if ScriptLib.GetGroupVariableValue(context, "Boss") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_419(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 638, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 639, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 640, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "Boss" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Boss", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end