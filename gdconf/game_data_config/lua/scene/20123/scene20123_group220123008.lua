-- 基础信息
local base_info = {
	group_id = 220123008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25010201, pos = { x = 6.416, y = -11.961, z = -33.769 }, rot = { x = 0.000, y = 222.864, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 8002, monster_id = 25010201, pos = { x = 4.585, y = -11.961, z = -33.205 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 8005, monster_id = 25010201, pos = { x = 5.473, y = -11.825, z = -31.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 9002 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8004, gadget_id = 70310008, pos = { x = 8.038, y = -13.612, z = -30.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8007, gadget_id = 70220070, pos = { x = 8.200, y = -8.060, z = -38.225 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 8008, gadget_id = 70220070, pos = { x = 9.055, y = -8.060, z = -37.811 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 }
}

-- 区域
regions = {
	-- 进入平台处刷怪
	{ config_id = 8003, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 4.000 }, pos = { x = -3.094, y = -6.253, z = -34.909 } },
	-- 进入此区域把怪给remove掉
	{ config_id = 8009, shape = RegionShape.CUBIC, size = { x = 11.000, y = 5.000, z = 15.000 }, pos = { x = 4.576, y = -7.001, z = -29.578 } },
	-- 进入平台处刷怪2
	{ config_id = 8011, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 4.000 }, pos = { x = 12.937, y = -7.494, z = -23.142 } }
}

-- 触发器
triggers = {
	-- 进入平台处刷怪
	{ config_id = 1008003, name = "ENTER_REGION_8003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8003", action = "action_EVENT_ENTER_REGION_8003" },
	-- 剧情时干掉所有怪物
	{ config_id = 1008006, name = "VARIABLE_CHANGE_8006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8006", action = "action_EVENT_VARIABLE_CHANGE_8006" },
	-- 进入此区域把怪给remove掉
	{ config_id = 1008009, name = "ENTER_REGION_8009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8009", action = "action_EVENT_ENTER_REGION_8009", trigger_count = 0 },
	-- 玩家开启隐形机关后加载suite3，进行判断
	{ config_id = 1008010, name = "VARIABLE_CHANGE_8010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8010", action = "action_EVENT_VARIABLE_CHANGE_8010" },
	-- 进入平台处刷怪2
	{ config_id = 1008011, name = "ENTER_REGION_8011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8011", action = "action_EVENT_ENTER_REGION_8011" },
	-- 增加保底，如果怪物全清了，则去掉再刷的逻辑
	{ config_id = 1008012, name = "ANY_MONSTER_DIE_8012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8012", action = "action_EVENT_ANY_MONSTER_DIE_8012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "END", value = 0, no_refresh = false },
	{ config_id = 2, name = "START", value = 0, no_refresh = false }
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
		gadgets = { 8004, 8007, 8008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_8006", "VARIABLE_CHANGE_8010", "ANY_MONSTER_DIE_8012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 正常刷怪,
		monsters = { },
		gadgets = { },
		regions = { 8003 },
		triggers = { "ENTER_REGION_8003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 玩家没进去，从另一侧刷怪,
		monsters = { },
		gadgets = { },
		regions = { 8009, 8011 },
		triggers = { "ENTER_REGION_8009", "ENTER_REGION_8011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8003(context, evt)
	if evt.param1 ~= 8003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123008, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123008, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"END"为1
	if ScriptLib.GetGroupVariableValue(context, "END") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123008, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123008, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123008, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8009(context, evt)
	if evt.param1 ~= 8009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"START"为1
	if ScriptLib.GetGroupVariableValue(context, "START") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8011(context, evt)
	if evt.param1 ~= 8011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8012(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123008, 4)
	
	return 0
end