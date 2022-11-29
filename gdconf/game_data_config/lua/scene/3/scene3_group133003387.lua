-- 基础信息
local base_info = {
	group_id = 133003387
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1330, monster_id = 28020201, pos = { x = 2641.159, y = 248.869, z = -1227.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 },
	{ config_id = 1331, monster_id = 28020201, pos = { x = 2642.772, y = 248.773, z = -1226.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3807, gadget_id = 70500000, pos = { x = 2706.255, y = 248.883, z = -1227.039 }, rot = { x = 0.000, y = 191.410, z = 0.000 }, level = 30, point_type = 2003, area_id = 1 },
	{ config_id = 3808, gadget_id = 70500000, pos = { x = 2710.118, y = 249.180, z = -1227.215 }, rot = { x = 0.000, y = 45.546, z = 0.000 }, level = 30, point_type = 2003, area_id = 1 },
	{ config_id = 3809, gadget_id = 70500000, pos = { x = 2708.523, y = 249.209, z = -1229.168 }, rot = { x = 0.000, y = 112.648, z = 0.000 }, level = 30, point_type = 2003, area_id = 1 },
	{ config_id = 3810, gadget_id = 70500000, pos = { x = 2708.409, y = 249.011, z = -1225.202 }, rot = { x = 0.000, y = 56.013, z = 0.000 }, level = 30, point_type = 2003, area_id = 1 },
	{ config_id = 3811, gadget_id = 70211101, pos = { x = 2708.425, y = 249.080, z = -1227.147 }, rot = { x = 0.000, y = 343.574, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000472, name = "GATHER_472", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_472", action = "action_EVENT_GATHER_472" },
	{ config_id = 1000473, name = "GATHER_473", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_473", action = "action_EVENT_GATHER_473" },
	{ config_id = 1000474, name = "GATHER_474", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_474", action = "action_EVENT_GATHER_474" },
	{ config_id = 1000475, name = "GATHER_475", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_475", action = "action_EVENT_GATHER_475" }
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
		gadgets = { 3807, 3808, 3809, 3810 },
		regions = { },
		triggers = { "GATHER_472", "GATHER_473", "GATHER_474", "GATHER_475" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_472(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003387}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_472(context, evt)
	-- 创建id为3811的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3811 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_473(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003387}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_473(context, evt)
	-- 创建id为3811的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3811 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_474(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003387}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_474(context, evt)
	-- 创建id为3811的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3811 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_475(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133003387}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_475(context, evt)
	-- 创建id为3811的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3811 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end