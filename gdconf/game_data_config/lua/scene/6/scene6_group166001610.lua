-- 基础信息
local base_info = {
	group_id = 166001610
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
	{ config_id = 610001, gadget_id = 70290212, pos = { x = 336.804, y = 401.355, z = 561.623 }, rot = { x = 16.400, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 610002, gadget_id = 70290218, pos = { x = 326.909, y = 402.938, z = 562.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 610003, gadget_id = 70290218, pos = { x = 336.376, y = 400.733, z = 568.311 }, rot = { x = 350.946, y = 245.670, z = 7.907 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 610004, gadget_id = 70290218, pos = { x = 334.048, y = 401.433, z = 569.438 }, rot = { x = 0.000, y = 318.265, z = 346.802 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 610005, gadget_id = 70290218, pos = { x = 332.089, y = 403.068, z = 556.059 }, rot = { x = 0.000, y = 58.610, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 610006, gadget_id = 70211101, pos = { x = 334.598, y = 401.328, z = 564.710 }, rot = { x = 2.957, y = 148.831, z = 11.634 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1610007, name = "ANY_GADGET_DIE_610007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_610007", action = "action_EVENT_ANY_GADGET_DIE_610007" },
	{ config_id = 1610008, name = "GADGET_STATE_CHANGE_610008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_610008", action = "action_EVENT_GADGET_STATE_CHANGE_610008" }
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
		gadgets = { 610001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_610007", "GADGET_STATE_CHANGE_610008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_610007(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001610}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_610007(context, evt)
	-- 创建id为610006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 610006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_610008(context, evt)
	if 610001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_610008(context, evt)
	-- 创建id为610002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 610002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为610003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 610003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为610004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 610004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为610005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 610005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end