-- 基础信息
local base_info = {
	group_id = 133105342
}

-- Trigger变量
local defs = {
	gadget_1 = 342011,
	gadget_2 = 342012,
	gadget_3 = 342013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 342001, monster_id = 26040103, pos = { x = 553.988, y = 210.050, z = -348.721 }, rot = { x = 0.000, y = 293.776, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 9 },
	{ config_id = 342002, monster_id = 26040101, pos = { x = 546.748, y = 206.014, z = -328.036 }, rot = { x = 0.000, y = 212.104, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 342003, gadget_id = 70290008, pos = { x = 534.988, y = 202.586, z = -345.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 342004, gadget_id = 70500000, pos = { x = 534.988, y = 202.586, z = -345.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 342003, area_id = 9 },
	{ config_id = 342005, gadget_id = 70290008, pos = { x = 530.228, y = 201.315, z = -340.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 342006, gadget_id = 70500000, pos = { x = 530.228, y = 201.315, z = -340.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 342005, area_id = 9 },
	{ config_id = 342007, gadget_id = 70290008, pos = { x = 536.565, y = 202.787, z = -338.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 342008, gadget_id = 70500000, pos = { x = 536.565, y = 202.787, z = -338.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 342007, area_id = 9 },
	{ config_id = 342011, gadget_id = 70220008, pos = { x = 534.569, y = 202.360, z = -311.418 }, rot = { x = 2.172, y = 151.315, z = 356.153 }, level = 24, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 342012, gadget_id = 70220008, pos = { x = 559.400, y = 212.765, z = -368.847 }, rot = { x = 0.000, y = 276.614, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 342013, gadget_id = 70220008, pos = { x = 533.943, y = 202.303, z = -341.397 }, rot = { x = 348.070, y = 92.061, z = 356.719 }, level = 24, isOneoff = true, persistent = true, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 342016, shape = RegionShape.SPHERE, radius = 40, pos = { x = 544.149, y = 206.297, z = -340.100 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1342014, name = "VARIABLE_CHANGE_342014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_342014", action = "action_EVENT_VARIABLE_CHANGE_342014" },
	{ config_id = 1342015, name = "ANY_GADGET_DIE_342015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_342015", action = "action_EVENT_ANY_GADGET_DIE_342015", trigger_count = 3 },
	{ config_id = 1342016, name = "ENTER_REGION_342016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_342016", action = "action_EVENT_ENTER_REGION_342016", trigger_count = 0 },
	{ config_id = 1342017, name = "ANY_MONSTER_DIE_342017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_342017", action = "action_EVENT_ANY_MONSTER_DIE_342017" }
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
		gadgets = { 342003, 342004, 342005, 342006, 342007, 342008, 342011, 342012, 342013 },
		regions = { 342016 },
		triggers = { "VARIABLE_CHANGE_342014", "ANY_GADGET_DIE_342015", "ENTER_REGION_342016", "ANY_MONSTER_DIE_342017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 342001, 342002 },
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
function condition_EVENT_VARIABLE_CHANGE_342014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_342014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105342, 2)
	
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "PuzzleFinish", 1, 133105342) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_342015(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_342015(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_342016(context, evt)
	if evt.param1 ~= 342016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_342016(context, evt)
	-- 创建id为0的gadget
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_342017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_342017(context, evt)
	--完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105342, 3) then
		return -1
	end
	
	return 0
end