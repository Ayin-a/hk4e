-- 基础信息
local base_info = {
	group_id = 133004097
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
	{ config_id = 370, gadget_id = 70500000, pos = { x = 2277.600, y = 271.827, z = -239.074 }, rot = { x = 0.000, y = 151.344, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 371, gadget_id = 70500000, pos = { x = 2281.465, y = 271.898, z = -239.140 }, rot = { x = 0.000, y = 287.017, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 372, gadget_id = 70500000, pos = { x = 2279.414, y = 271.824, z = -240.873 }, rot = { x = 0.000, y = 87.575, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 373, gadget_id = 70500000, pos = { x = 2279.521, y = 271.978, z = -237.138 }, rot = { x = 0.000, y = 257.088, z = 0.000 }, level = 15, point_type = 2003, area_id = 3 },
	{ config_id = 374, gadget_id = 70211101, pos = { x = 2279.508, y = 271.849, z = -239.127 }, rot = { x = 0.000, y = 181.071, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000123, name = "GATHER_123", event = EventType.EVENT_GATHER, source = "370", condition = "condition_EVENT_GATHER_123", action = "action_EVENT_GATHER_123" },
	{ config_id = 1000124, name = "GATHER_124", event = EventType.EVENT_GATHER, source = "373", condition = "condition_EVENT_GATHER_124", action = "action_EVENT_GATHER_124" },
	{ config_id = 1000125, name = "GATHER_125", event = EventType.EVENT_GATHER, source = "371", condition = "condition_EVENT_GATHER_125", action = "action_EVENT_GATHER_125" },
	{ config_id = 1000126, name = "GATHER_126", event = EventType.EVENT_GATHER, source = "372", condition = "condition_EVENT_GATHER_126", action = "action_EVENT_GATHER_126" }
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
	rand_suite = true
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
		gadgets = { 370, 371, 372, 373 },
		regions = { },
		triggers = { "GATHER_123", "GATHER_124", "GATHER_125", "GATHER_126" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_123(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004097}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_123(context, evt)
	-- 创建id为374的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_124(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004097}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_124(context, evt)
	-- 创建id为374的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_125(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004097}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_125(context, evt)
	-- 创建id为374的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_126(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004097}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_126(context, evt)
	-- 创建id为374的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 374 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end