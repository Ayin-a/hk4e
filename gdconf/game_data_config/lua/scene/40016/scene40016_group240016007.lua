-- 基础信息
local base_info = {
	group_id = 240016007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7003, monster_id = 21020301, pos = { x = -75.675, y = 279.334, z = -173.602 }, rot = { x = 0.000, y = 34.827, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 7004, monster_id = 21030301, pos = { x = -76.042, y = 279.332, z = -170.425 }, rot = { x = 0.000, y = 119.203, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 7005, monster_id = 21010701, pos = { x = -67.802, y = 279.340, z = -168.285 }, rot = { x = 0.000, y = 356.725, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 21010701, pos = { x = -79.119, y = 279.332, z = -164.061 }, rot = { x = 0.000, y = 36.290, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 7007, monster_id = 21011001, pos = { x = -72.245, y = 279.336, z = -173.442 }, rot = { x = 0.000, y = 347.380, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 7008, monster_id = 21011001, pos = { x = -81.046, y = 279.330, z = -172.349 }, rot = { x = 0.000, y = 80.970, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70690010, pos = { x = -43.174, y = 246.630, z = -131.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70900201, pos = { x = -56.518, y = 279.380, z = -148.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -58.714, y = 279.333, z = -151.852 } }
}

-- 触发器
triggers = {
	{ config_id = 1007002, name = "VARIABLE_CHANGE_7002", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_7002", action = "action_EVENT_VARIABLE_CHANGE_7002" },
	{ config_id = 1007009, name = "ANY_MONSTER_DIE_7009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7009", action = "action_EVENT_ANY_MONSTER_DIE_7009" },
	{ config_id = 1007011, name = "ENTER_REGION_7011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7011", action = "action_EVENT_ENTER_REGION_7011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		monsters = { 7003, 7004, 7005, 7006, 7007, 7008 },
		gadgets = { 7001, 7010 },
		regions = { 7011 },
		triggers = { "ANY_MONSTER_DIE_7009", "ENTER_REGION_7011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240016008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7011(context, evt)
	if evt.param1 ~= 7011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end