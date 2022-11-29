-- 基础信息
local base_info = {
	group_id = 133309205
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 205001, monster_id = 28060401, pos = { x = -2286.288, y = 74.031, z = 5165.208 }, rot = { x = 0.000, y = 110.608, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 205002, monster_id = 28060401, pos = { x = -2266.488, y = 73.992, z = 5170.050 }, rot = { x = 0.000, y = 230.872, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 205003, monster_id = 28060401, pos = { x = -2284.908, y = 74.100, z = 5170.273 }, rot = { x = 0.000, y = 133.351, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 205004, monster_id = 28060401, pos = { x = -2289.006, y = 74.343, z = 5146.378 }, rot = { x = 0.000, y = 26.261, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 205005, monster_id = 28060401, pos = { x = -2268.369, y = 74.280, z = 5147.749 }, rot = { x = 0.000, y = 327.328, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 205006, monster_id = 28060401, pos = { x = -2266.816, y = 74.211, z = 5153.104 }, rot = { x = 0.000, y = 277.014, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205015, gadget_id = 70211001, pos = { x = -2276.029, y = 73.972, z = 5164.103 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205007, name = "ANY_MONSTER_DIE_205007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_205007", trigger_count = 0 },
	{ config_id = 1205008, name = "VARIABLE_CHANGE_205008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205008", action = "action_EVENT_VARIABLE_CHANGE_205008" },
	{ config_id = 1205009, name = "VARIABLE_CHANGE_205009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205009", action = "action_EVENT_VARIABLE_CHANGE_205009" },
	{ config_id = 1205010, name = "VARIABLE_CHANGE_205010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205010", action = "action_EVENT_VARIABLE_CHANGE_205010" },
	{ config_id = 1205011, name = "VARIABLE_CHANGE_205011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205011", action = "action_EVENT_VARIABLE_CHANGE_205011" },
	{ config_id = 1205012, name = "VARIABLE_CHANGE_205012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205012", action = "action_EVENT_VARIABLE_CHANGE_205012" },
	{ config_id = 1205013, name = "VARIABLE_CHANGE_205013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205013", action = "action_EVENT_VARIABLE_CHANGE_205013" },
	{ config_id = 1205014, name = "VARIABLE_CHANGE_205014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_205014", action = "action_EVENT_VARIABLE_CHANGE_205014" },
	{ config_id = 1205016, name = "GROUP_LOAD_205016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_205016", action = "action_EVENT_GROUP_LOAD_205016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "vase1", value = 0, no_refresh = true },
	{ config_id = 2, name = "vase2", value = 0, no_refresh = true },
	{ config_id = 3, name = "vase3", value = 0, no_refresh = true },
	{ config_id = 4, name = "vase4", value = 0, no_refresh = true },
	{ config_id = 5, name = "vase5", value = 0, no_refresh = true },
	{ config_id = 6, name = "vase6", value = 0, no_refresh = true },
	{ config_id = 7, name = "monstercount", value = 0, no_refresh = true }
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
		triggers = { "ANY_MONSTER_DIE_205007", "VARIABLE_CHANGE_205008", "VARIABLE_CHANGE_205009", "VARIABLE_CHANGE_205010", "VARIABLE_CHANGE_205011", "VARIABLE_CHANGE_205012", "VARIABLE_CHANGE_205013", "VARIABLE_CHANGE_205014", "GROUP_LOAD_205016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_205007(context, evt)
	-- 针对当前group内变量名为 "monstercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monstercount", 1, 133309205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase1"为1
	if ScriptLib.GetGroupVariableValue(context, "vase1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase2"为1
	if ScriptLib.GetGroupVariableValue(context, "vase2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase3"为1
	if ScriptLib.GetGroupVariableValue(context, "vase3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase4"为1
	if ScriptLib.GetGroupVariableValue(context, "vase4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase5"为1
	if ScriptLib.GetGroupVariableValue(context, "vase5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"vase6"为1
	if ScriptLib.GetGroupVariableValue(context, "vase6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 205006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_205014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monstercount"为6
	if ScriptLib.GetGroupVariableValue(context, "monstercount") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_205014(context, evt)
	-- 创建id为205015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 205015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_205016(context, evt)
	-- 判断变量"monstercount"为6
	if ScriptLib.GetGroupVariableValue(context, "monstercount") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_205016(context, evt)
	-- 创建id为205015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 205015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end