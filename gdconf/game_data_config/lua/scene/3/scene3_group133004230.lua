-- 基础信息
local base_info = {
	group_id = 133004230
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
	{ config_id = 1334, gadget_id = 70500000, pos = { x = 2475.663, y = 211.451, z = -417.244 }, rot = { x = 0.000, y = 151.344, z = 0.000 }, level = 20, point_type = 2003, area_id = 4 },
	{ config_id = 1335, gadget_id = 70500000, pos = { x = 2479.530, y = 211.632, z = -417.308 }, rot = { x = 0.000, y = 287.017, z = 0.000 }, level = 20, point_type = 2003, area_id = 4 },
	{ config_id = 1336, gadget_id = 70500000, pos = { x = 2477.477, y = 211.531, z = -419.042 }, rot = { x = 0.000, y = 87.575, z = 0.000 }, level = 20, point_type = 2003, area_id = 4 },
	{ config_id = 1337, gadget_id = 70500000, pos = { x = 2477.583, y = 211.548, z = -415.306 }, rot = { x = 0.000, y = 257.088, z = 0.000 }, level = 20, point_type = 2003, area_id = 4 },
	{ config_id = 1338, gadget_id = 70211101, pos = { x = 2477.567, y = 211.532, z = -417.296 }, rot = { x = 0.000, y = 181.071, z = 0.000 }, level = 16, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000250, name = "GATHER_250", event = EventType.EVENT_GATHER, source = "1334", condition = "condition_EVENT_GATHER_250", action = "action_EVENT_GATHER_250" },
	{ config_id = 1000251, name = "GATHER_251", event = EventType.EVENT_GATHER, source = "1337", condition = "condition_EVENT_GATHER_251", action = "action_EVENT_GATHER_251" },
	{ config_id = 1000252, name = "GATHER_252", event = EventType.EVENT_GATHER, source = "1335", condition = "condition_EVENT_GATHER_252", action = "action_EVENT_GATHER_252" },
	{ config_id = 1000253, name = "GATHER_253", event = EventType.EVENT_GATHER, source = "1336", condition = "condition_EVENT_GATHER_253", action = "action_EVENT_GATHER_253" }
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
		gadgets = { 1334, 1335, 1336, 1337 },
		regions = { },
		triggers = { "GATHER_250", "GATHER_251", "GATHER_252", "GATHER_253" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_250(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_250(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_251(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_251(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_252(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_252(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_253(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004230}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_253(context, evt)
	-- 创建id为1338的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1338 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end