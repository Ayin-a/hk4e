-- 基础信息
local base_info = {
	group_id = 133102104
}

-- Trigger变量
local defs = {
	gadget_1 = 104011,
	gadget_2 = 104012,
	gadget_3 = 104013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 26040101, pos = { x = 1319.076, y = 203.558, z = 466.053 }, rot = { x = 0.000, y = 129.098, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 5 },
	{ config_id = 104002, monster_id = 26040104, pos = { x = 1311.015, y = 202.362, z = 453.804 }, rot = { x = 0.000, y = 76.597, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104003, gadget_id = 70290010, pos = { x = 1317.864, y = 200.566, z = 440.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 104004, gadget_id = 70500000, pos = { x = 1317.864, y = 200.566, z = 440.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 104003, area_id = 5 },
	{ config_id = 104005, gadget_id = 70290010, pos = { x = 1333.772, y = 200.052, z = 443.453 }, rot = { x = 0.000, y = 328.235, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 104006, gadget_id = 70500000, pos = { x = 1333.771, y = 200.052, z = 443.453 }, rot = { x = 0.000, y = 328.235, z = 0.000 }, level = 1, point_type = 3006, owner = 104005, area_id = 5 },
	{ config_id = 104011, gadget_id = 70220008, pos = { x = 1357.014, y = 201.554, z = 440.002 }, rot = { x = 7.011, y = 150.987, z = 356.127 }, level = 24, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 104012, gadget_id = 70220008, pos = { x = 1301.672, y = 201.487, z = 450.122 }, rot = { x = 354.701, y = 202.063, z = 353.777 }, level = 24, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 104013, gadget_id = 70220008, pos = { x = 1344.792, y = 201.260, z = 457.423 }, rot = { x = 14.907, y = 90.526, z = 356.678 }, level = 24, isOneoff = true, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 104016, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1324.067, y = 202.100, z = 456.239 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1104014, name = "VARIABLE_CHANGE_104014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_104014", action = "action_EVENT_VARIABLE_CHANGE_104014" },
	{ config_id = 1104015, name = "ANY_GADGET_DIE_104015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104015", action = "action_EVENT_ANY_GADGET_DIE_104015", trigger_count = 3 },
	{ config_id = 1104016, name = "ENTER_REGION_104016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104016", action = "action_EVENT_ENTER_REGION_104016", trigger_count = 0 },
	{ config_id = 1104017, name = "ANY_MONSTER_DIE_104017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104017", action = "action_EVENT_ANY_MONSTER_DIE_104017" }
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
		gadgets = { 104003, 104004, 104005, 104006, 104011, 104012, 104013 },
		regions = { 104016 },
		triggers = { "VARIABLE_CHANGE_104014", "ANY_GADGET_DIE_104015", "ENTER_REGION_104016", "ANY_MONSTER_DIE_104017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 104001, 104002 },
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
function condition_EVENT_VARIABLE_CHANGE_104014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102104, 2)
	
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "PuzzleFinish", 1, 133102104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104015(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104015(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104016(context, evt)
	if evt.param1 ~= 104016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104016(context, evt)
	-- 创建id为0的gadget
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_104017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104017(context, evt)
	--完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102104, 3) then
		return -1
	end
	
	return 0
end