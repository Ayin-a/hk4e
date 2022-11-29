-- 基础信息
local base_info = {
	group_id = 166001497
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
	{ config_id = 497001, gadget_id = 70290212, pos = { x = 658.403, y = 380.647, z = 732.565 }, rot = { x = 353.461, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 497002, gadget_id = 70290218, pos = { x = 668.628, y = 380.746, z = 730.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 497003, gadget_id = 70290218, pos = { x = 657.228, y = 379.801, z = 712.278 }, rot = { x = 0.000, y = 309.363, z = 347.429 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 497004, gadget_id = 70290218, pos = { x = 648.136, y = 381.018, z = 737.705 }, rot = { x = 0.000, y = 338.388, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 497005, gadget_id = 70290218, pos = { x = 676.342, y = 380.673, z = 727.645 }, rot = { x = 0.000, y = 58.610, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 497006, gadget_id = 70211101, pos = { x = 661.327, y = 381.117, z = 735.667 }, rot = { x = 0.000, y = 187.466, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1497007, name = "ANY_GADGET_DIE_497007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_497007", action = "action_EVENT_ANY_GADGET_DIE_497007" },
	{ config_id = 1497008, name = "GADGET_STATE_CHANGE_497008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_497008", action = "action_EVENT_GADGET_STATE_CHANGE_497008" }
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
		gadgets = { 497001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_497007", "GADGET_STATE_CHANGE_497008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_497007(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001497}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_497007(context, evt)
	-- 创建id为497006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 497006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_497008(context, evt)
	if 497001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_497008(context, evt)
	-- 创建id为497002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 497002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为497003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 497003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为497004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 497004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为497005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 497005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end