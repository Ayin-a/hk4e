-- 基础信息
local base_info = {
	group_id = 133310387
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 387011, monster_id = 28020604, pos = { x = -2174.068, y = 212.777, z = 4565.754 }, rot = { x = 0.000, y = 193.367, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 387001, gadget_id = 70330266, pos = { x = -2181.482, y = 215.892, z = 4552.498 }, rot = { x = 348.171, y = 224.718, z = 5.617 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 387002, gadget_id = 70330266, pos = { x = -2167.438, y = 211.513, z = 4558.784 }, rot = { x = 20.968, y = 94.544, z = 5.803 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 387003, gadget_id = 70330266, pos = { x = -2172.149, y = 213.608, z = 4550.669 }, rot = { x = 0.922, y = 159.510, z = 17.270 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 387004, gadget_id = 70330266, pos = { x = -2182.616, y = 215.139, z = 4561.757 }, rot = { x = 351.174, y = 296.081, z = 349.893 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 387005, gadget_id = 70211101, pos = { x = -2175.144, y = 213.723, z = 4558.633 }, rot = { x = 354.040, y = 148.327, z = 5.483 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	-- 刷面具鼬
	{ config_id = 387006, gadget_id = 70330266, pos = { x = -2173.933, y = 212.758, z = 4565.664 }, rot = { x = 12.546, y = 28.831, z = 351.941 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1387007, name = "VARIABLE_CHANGE_387007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_387007", action = "action_EVENT_VARIABLE_CHANGE_387007" },
	{ config_id = 1387008, name = "GROUP_LOAD_387008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_387008", action = "action_EVENT_GROUP_LOAD_387008", trigger_count = 0 },
	{ config_id = 1387010, name = "ANY_GADGET_DIE_387010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_387010", action = "action_EVENT_ANY_GADGET_DIE_387010" },
	{ config_id = 1387012, name = "ANY_GADGET_DIE_387012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_387012", action = "action_EVENT_ANY_GADGET_DIE_387012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 387001, 387002, 387003, 387004, 387006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_387007", "GROUP_LOAD_387008", "ANY_GADGET_DIE_387010", "ANY_GADGET_DIE_387012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_387007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_387007(context, evt)
	-- 创建id为387005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 387005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_387008(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_387008(context, evt)
	-- 创建id为387005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 387005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_387010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133310387}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_387010(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_387012(context, evt)
	if 387006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_387012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 387011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end