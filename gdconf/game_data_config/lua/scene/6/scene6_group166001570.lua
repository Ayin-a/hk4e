-- 基础信息
local base_info = {
	group_id = 166001570
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 570001, gadget_id = 70290212, pos = { x = 1077.003, y = 918.111, z = 555.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 570002, gadget_id = 70290218, pos = { x = 1071.938, y = 917.968, z = 548.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 570003, gadget_id = 70290218, pos = { x = 1074.881, y = 918.015, z = 545.315 }, rot = { x = 10.883, y = 243.570, z = 8.052 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 570004, gadget_id = 70290218, pos = { x = 1084.149, y = 918.887, z = 559.390 }, rot = { x = 0.000, y = 230.970, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 570005, gadget_id = 70290218, pos = { x = 1088.206, y = 919.015, z = 555.578 }, rot = { x = 0.000, y = 22.999, z = 25.030 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 570006, gadget_id = 70211001, pos = { x = 1081.043, y = 918.474, z = 554.516 }, rot = { x = 4.317, y = 283.985, z = 2.295 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1570007, name = "ANY_GADGET_DIE_570007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_570007", action = "action_EVENT_ANY_GADGET_DIE_570007" },
	{ config_id = 1570008, name = "GADGET_STATE_CHANGE_570008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_570008", action = "action_EVENT_GADGET_STATE_CHANGE_570008" }
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
		gadgets = { 570001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_570007", "GADGET_STATE_CHANGE_570008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_570007(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001570}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_570007(context, evt)
	-- 创建id为570006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_570008(context, evt)
	if 570001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_570008(context, evt)
	-- 创建id为570002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为570005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 570005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end