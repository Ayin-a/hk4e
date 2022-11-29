-- 基础信息
local base_info = {
	group_id = 201062012
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
	{ config_id = 12002, gadget_id = 70900205, pos = { x = -2.858, y = -24.870, z = -20.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12001, shape = RegionShape.CUBIC, size = { x = 27.000, y = 10.000, z = 35.000 }, pos = { x = 5.335, y = -15.652, z = -23.033 } },
	{ config_id = 12003, shape = RegionShape.CUBIC, size = { x = 33.000, y = 10.000, z = 35.000 }, pos = { x = 76.064, y = -11.873, z = -18.765 } },
	{ config_id = 12004, shape = RegionShape.CUBIC, size = { x = 27.000, y = 10.000, z = 40.000 }, pos = { x = 150.929, y = -8.030, z = -18.902 } }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "ENTER_REGION_12001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12001", action = "action_EVENT_ENTER_REGION_12001", trigger_count = 0 },
	{ config_id = 1012003, name = "ENTER_REGION_12003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12003", action = "action_EVENT_ENTER_REGION_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "ENTER_REGION_12004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12004", action = "action_EVENT_ENTER_REGION_12004", trigger_count = 0 }
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
		gadgets = { 12002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12002 },
		regions = { 12001 },
		triggers = { "ENTER_REGION_12001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 12002 },
		regions = { 12003 },
		triggers = { "ENTER_REGION_12003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 12002 },
		regions = { 12004 },
		triggers = { "ENTER_REGION_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_12001(context, evt)
	if evt.param1 ~= 12001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062001, 2)
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 201062001, EntityType.MONSTER, 1013)
	
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12003(context, evt)
	if evt.param1 ~= 12003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062002, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12004(context, evt)
	if evt.param1 ~= 12004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062003, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062003, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 4)
	
	return 0
end