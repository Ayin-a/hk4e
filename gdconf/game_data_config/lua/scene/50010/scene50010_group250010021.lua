-- 基础信息
local base_info = {
	group_id = 250010021
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
	{ config_id = 134, gadget_id = 70220032, pos = { x = 337.646, y = 24.000, z = -154.352 }, rot = { x = 0.000, y = 268.278, z = 0.000 }, level = 1 },
	{ config_id = 135, gadget_id = 70380002, pos = { x = 344.108, y = 24.000, z = -151.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11 },
	{ config_id = 136, gadget_id = 70380002, pos = { x = 344.130, y = 24.000, z = -152.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11 },
	{ config_id = 137, gadget_id = 70380002, pos = { x = 344.130, y = 24.000, z = -153.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11 },
	{ config_id = 138, gadget_id = 70380002, pos = { x = 344.130, y = 24.000, z = -154.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11 },
	{ config_id = 141, gadget_id = 70211031, pos = { x = 362.446, y = 4.000, z = -154.521 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000065, name = "GADGET_STATE_CHANGE_65", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65", action = "action_EVENT_GADGET_STATE_CHANGE_65", trigger_count = 0 },
	{ config_id = 1000066, name = "GADGET_STATE_CHANGE_66", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66", action = "action_EVENT_GADGET_STATE_CHANGE_66", trigger_count = 0 },
	{ config_id = 1000067, name = "ANY_GADGET_DIE_67", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_67", action = "action_EVENT_ANY_GADGET_DIE_67" }
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
		gadgets = { 134 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_65", "GADGET_STATE_CHANGE_66" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 135, 136, 137, 138 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65(context, evt)
	if 134 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250010021, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	if 134 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250010021, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250010021, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_67(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250010021) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_67(context, evt)
	-- 创建id为141的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 141 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end