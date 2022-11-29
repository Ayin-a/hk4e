-- 基础信息
local base_info = {
	group_id = 111102007
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
	-- 起点
	{ config_id = 7001, gadget_id = 70310020, pos = { x = 1824.668, y = 194.600, z = -1584.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70310020, pos = { x = 1829.344, y = 196.862, z = -1594.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70310020, pos = { x = 1820.670, y = 195.852, z = -1588.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70310020, pos = { x = 1826.189, y = 198.610, z = -1600.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, gadget_id = 70310020, pos = { x = 1825.169, y = 194.600, z = -1592.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70310020, pos = { x = 1827.722, y = 199.339, z = -1608.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70310020, pos = { x = 1834.808, y = 200.369, z = -1610.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70310020, pos = { x = 1841.300, y = 202.079, z = -1609.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70310020, pos = { x = 1845.865, y = 204.875, z = -1605.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70211001, pos = { x = 1873.815, y = 194.600, z = -1597.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 生成suite2，删除suite3
	{ config_id = 7006, shape = RegionShape.SPHERE, radius = 2.45, pos = { x = 1824.842, y = 195.311, z = -1584.138 } },
	-- 走到suite2终点创生suite3
	{ config_id = 7012, shape = RegionShape.SPHERE, radius = 2.02, pos = { x = 1826.284, y = 199.321, z = -1600.254 } },
	-- 走到终点生成宝箱、delete suite2
	{ config_id = 7014, shape = RegionShape.SPHERE, radius = 2.2, pos = { x = 1846.088, y = 205.586, z = -1605.330 } }
}

-- 触发器
triggers = {
	-- 生成suite2，删除suite3
	{ config_id = 1007006, name = "ENTER_REGION_7006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7006", action = "action_EVENT_ENTER_REGION_7006", trigger_count = 0 },
	-- 走到终点生成宝箱、delete suite2
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007" },
	-- 走到suite2终点创生suite3
	{ config_id = 1007012, name = "ENTER_REGION_7012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7012", action = "action_EVENT_ENTER_REGION_7012" },
	-- 走到终点生成宝箱、delete suite2
	{ config_id = 1007014, name = "ENTER_REGION_7014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7014", action = "action_EVENT_ENTER_REGION_7014" }
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
	end_suite = 5,
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
		gadgets = { 7001 },
		regions = { 7006 },
		triggers = { "ENTER_REGION_7006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7002, 7003, 7004, 7005 },
		regions = { 7012 },
		triggers = { "ENTER_REGION_7012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7008, 7009, 7010, 7011 },
		regions = { 7014 },
		triggers = { "ENTER_REGION_7014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7007" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 开了宝箱后的空Suite,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_7006(context, evt)
	if evt.param1 ~= 7006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102007, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111102007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	if 7015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111102007, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7012(context, evt)
	if evt.param1 ~= 7012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7014(context, evt)
	if evt.param1 ~= 7014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102007, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111102007, 2)
	
	return 0
end