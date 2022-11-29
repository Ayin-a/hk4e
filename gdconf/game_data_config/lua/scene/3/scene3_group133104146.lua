-- 基础信息
local base_info = {
	group_id = 133104146
}

-- Trigger变量
local defs = {
	gadget_1 = 146011,
	gadget_2 = 146012,
	gadget_3 = 146013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146001, monster_id = 26040102, pos = { x = 483.640, y = 203.097, z = 606.438 }, rot = { x = 0.000, y = 42.754, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 6 },
	{ config_id = 146002, monster_id = 26040101, pos = { x = 508.067, y = 203.805, z = 597.259 }, rot = { x = 0.000, y = 342.244, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146003, gadget_id = 70290009, pos = { x = 499.810, y = 202.666, z = 620.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 146004, gadget_id = 70500000, pos = { x = 499.810, y = 202.666, z = 620.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 146003, area_id = 6 },
	{ config_id = 146007, gadget_id = 70290009, pos = { x = 508.668, y = 203.116, z = 617.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 146008, gadget_id = 70500000, pos = { x = 508.668, y = 203.116, z = 617.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 146007, area_id = 6 },
	{ config_id = 146009, gadget_id = 70290009, pos = { x = 515.187, y = 203.548, z = 611.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 146010, gadget_id = 70500000, pos = { x = 515.187, y = 203.548, z = 611.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 146009, area_id = 6 },
	{ config_id = 146011, gadget_id = 70220008, pos = { x = 507.709, y = 203.589, z = 615.009 }, rot = { x = 7.011, y = 150.987, z = 356.127 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 146012, gadget_id = 70220008, pos = { x = 511.635, y = 203.038, z = 617.345 }, rot = { x = 354.701, y = 202.063, z = 353.777 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 146013, gadget_id = 70220008, pos = { x = 507.531, y = 202.630, z = 619.541 }, rot = { x = 14.907, y = 90.526, z = 356.678 }, level = 24, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 146016, shape = RegionShape.SPHERE, radius = 40, pos = { x = 504.322, y = 204.509, z = 608.901 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1146014, name = "VARIABLE_CHANGE_146014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_146014", action = "action_EVENT_VARIABLE_CHANGE_146014" },
	{ config_id = 1146015, name = "ANY_GADGET_DIE_146015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_146015", action = "action_EVENT_ANY_GADGET_DIE_146015", trigger_count = 3 },
	{ config_id = 1146016, name = "ENTER_REGION_146016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_146016", action = "action_EVENT_ENTER_REGION_146016", trigger_count = 0 },
	{ config_id = 1146017, name = "ANY_MONSTER_DIE_146017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146017", action = "action_EVENT_ANY_MONSTER_DIE_146017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = false },
	{ config_id = 2, name = "PuzzleFinish", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 146003, 146004, 146007, 146008, 146009, 146010, 146011, 146012, 146013 },
		regions = { 146016 },
		triggers = { "VARIABLE_CHANGE_146014", "ANY_GADGET_DIE_146015", "ENTER_REGION_146016", "ANY_MONSTER_DIE_146017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 146001, 146002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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
function condition_EVENT_VARIABLE_CHANGE_146014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104146, 2)
	
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "PuzzleFinish", 1, 133104146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_146015(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_146015(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_146016(context, evt)
	if evt.param1 ~= 146016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_146016(context, evt)
	-- 创建id为0的gadget
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146017(context, evt)
	-- 完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104146, 3) then
		return -1
	end
	
	return 0
end