-- 基础信息
local base_info = {
	group_id = 133303083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83007, monster_id = 20011401, pos = { x = -1363.553, y = 177.285, z = 3146.299 }, rot = { x = 0.000, y = 119.869, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 83011, monster_id = 20011401, pos = { x = -1364.224, y = 177.442, z = 3144.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83003, gadget_id = 70710038, pos = { x = -1308.560, y = 178.685, z = 3151.064 }, rot = { x = 349.708, y = 320.033, z = 9.284 }, level = 1, area_id = 23 },
	{ config_id = 83004, gadget_id = 71700358, pos = { x = -1308.467, y = 178.937, z = 3150.899 }, rot = { x = 347.701, y = 27.226, z = 356.511 }, level = 1, area_id = 23 },
	{ config_id = 83006, gadget_id = 71700388, pos = { x = -1308.561, y = 179.211, z = 3150.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 83008, gadget_id = 70710038, pos = { x = -1364.765, y = 177.138, z = 3145.658 }, rot = { x = 355.909, y = 208.789, z = 355.732 }, level = 1, area_id = 23 },
	{ config_id = 83009, gadget_id = 71700358, pos = { x = -1364.797, y = 177.425, z = 3145.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 83010, gadget_id = 71700388, pos = { x = -1364.701, y = 177.713, z = 3145.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 83013, gadget_id = 71700521, pos = { x = -1309.464, y = 176.978, z = 3150.815 }, rot = { x = 0.000, y = 43.804, z = 352.077 }, level = 30, area_id = 23 },
	{ config_id = 83014, gadget_id = 71700521, pos = { x = -1365.229, y = 177.154, z = 3146.329 }, rot = { x = 0.000, y = 195.433, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083001, name = "ANY_GADGET_DIE_83001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83001", action = "action_EVENT_ANY_GADGET_DIE_83001" },
	{ config_id = 1083012, name = "ANY_GADGET_DIE_83012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83012", action = "action_EVENT_ANY_GADGET_DIE_83012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 83002, gadget_id = 70220021, pos = { x = -1309.464, y = 176.978, z = 3150.815 }, rot = { x = 0.000, y = 43.804, z = 352.077 }, level = 30, area_id = 23 },
		{ config_id = 83005, gadget_id = 70220021, pos = { x = -1365.229, y = 177.154, z = 3146.329 }, rot = { x = 0.000, y = 195.433, z = 0.000 }, level = 1, area_id = 23 }
	}
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
		gadgets = { 83013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_83001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 83003, 83004, 83006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 83014 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_83012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 83007, 83011 },
		gadgets = { 83008, 83009, 83010 },
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
function condition_EVENT_ANY_GADGET_DIE_83001(context, evt)
	if 83013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_83001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303083, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_83012(context, evt)
	if 83014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_83012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303083, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end