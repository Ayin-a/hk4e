-- 基础信息
local base_info = {
	group_id = 220140002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 25050401, pos = { x = 38.633, y = 70.760, z = 462.834 }, rot = { x = 0.000, y = 171.887, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 25050301, pos = { x = 36.660, y = 70.760, z = 460.137 }, rot = { x = 0.000, y = 171.887, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 25050301, pos = { x = 41.173, y = 70.760, z = 461.338 }, rot = { x = 0.000, y = 171.887, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 25050301, pos = { x = 37.340, y = 70.760, z = 467.998 }, rot = { x = 0.000, y = 171.887, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2007, gadget_id = 70690011, pos = { x = 35.308, y = 70.760, z = 471.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70360001, pos = { x = 39.313, y = 70.760, z = 466.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 37.585, y = 70.760, z = 466.238 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001" },
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" },
	{ config_id = 1002008, name = "ANY_GADGET_DIE_2008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_2008", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2001 },
		triggers = { "ENTER_REGION_2001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2002, 2003, 2004, 2005 },
		gadgets = { 2009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2006", "ANY_GADGET_DIE_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2007 },
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
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220140002, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220140002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140002, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2008(context, evt)
	if evt.param1 == 2009 then
		ScriptLib.ChangeToTargetLevelTag(context, 32)
	end
	
	return 0
end