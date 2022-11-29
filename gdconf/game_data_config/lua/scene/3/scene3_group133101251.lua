-- 基础信息
local base_info = {
	group_id = 133101251
}

-- Trigger变量
local defs = {
	gadget_1 = 251011,
	gadget_2 = 251012,
	gadget_3 = 251013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251007, monster_id = 26040102, pos = { x = 1492.271, y = 209.688, z = 1111.076 }, rot = { x = 0.000, y = 86.265, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 5 },
	{ config_id = 251008, monster_id = 26040104, pos = { x = 1500.678, y = 212.967, z = 1128.329 }, rot = { x = 0.000, y = 141.447, z = 0.000 }, level = 19, drop_tag = "岩龙蜥", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251001, gadget_id = 70290010, pos = { x = 1522.442, y = 205.490, z = 1111.624 }, rot = { x = 351.914, y = 297.333, z = 4.149 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251002, gadget_id = 70500000, pos = { x = 1522.438, y = 205.569, z = 1111.629 }, rot = { x = 351.914, y = 297.333, z = 9.245 }, level = 1, point_type = 3006, owner = 251001, area_id = 5 },
	{ config_id = 251003, gadget_id = 70290010, pos = { x = 1490.202, y = 204.728, z = 1091.772 }, rot = { x = 338.282, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251004, gadget_id = 70500000, pos = { x = 1490.203, y = 204.987, z = 1091.854 }, rot = { x = 356.589, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 251003, area_id = 5 },
	{ config_id = 251005, gadget_id = 70290009, pos = { x = 1506.714, y = 208.424, z = 1116.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251006, gadget_id = 70500000, pos = { x = 1506.714, y = 208.424, z = 1116.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 251005, area_id = 5 },
	{ config_id = 251009, gadget_id = 70290009, pos = { x = 1516.839, y = 205.690, z = 1104.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251010, gadget_id = 70500000, pos = { x = 1516.839, y = 205.690, z = 1104.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 251009, area_id = 5 },
	{ config_id = 251011, gadget_id = 70220008, pos = { x = 1486.783, y = 209.574, z = 1103.468 }, rot = { x = 7.011, y = 150.987, z = 356.127 }, level = 24, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251012, gadget_id = 70220008, pos = { x = 1519.802, y = 207.227, z = 1116.286 }, rot = { x = 354.701, y = 202.063, z = 353.777 }, level = 24, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 251013, gadget_id = 70220008, pos = { x = 1509.835, y = 204.980, z = 1097.421 }, rot = { x = 14.907, y = 90.526, z = 356.678 }, level = 24, isOneoff = true, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 251016, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1499.138, y = 208.172, z = 1111.725 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1251014, name = "VARIABLE_CHANGE_251014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_251014", action = "action_EVENT_VARIABLE_CHANGE_251014" },
	{ config_id = 1251015, name = "ANY_GADGET_DIE_251015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251015", action = "action_EVENT_ANY_GADGET_DIE_251015", trigger_count = 3 },
	{ config_id = 1251016, name = "ENTER_REGION_251016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_251016", action = "action_EVENT_ENTER_REGION_251016", trigger_count = 0 },
	{ config_id = 1251017, name = "ANY_MONSTER_DIE_251017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_251017", action = "action_EVENT_ANY_MONSTER_DIE_251017" }
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
		gadgets = { 251001, 251002, 251003, 251004, 251005, 251006, 251009, 251010, 251011, 251012, 251013 },
		regions = { 251016 },
		triggers = { "VARIABLE_CHANGE_251014", "ANY_GADGET_DIE_251015", "ENTER_REGION_251016", "ANY_MONSTER_DIE_251017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 251007, 251008 },
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
function condition_EVENT_VARIABLE_CHANGE_251014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_251014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101251, 2)
	
	-- 将本组内变量名为 "PuzzleFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "PuzzleFinish", 1, 133101251) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251015(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251015(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_251016(context, evt)
	if evt.param1 ~= 251016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_251016(context, evt)
	-- 创建id为0的gadget
	if 0 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	  ScriptLib.ExpeditionChallengeEnterRegion(context, false)
	elseif 1 == ScriptLib.GetGroupVariableValue(context, "PuzzleFinish") then
	    ScriptLib.ExpeditionChallengeEnterRegion(context, true)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_251017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_251017(context, evt)
	--完成派遣挑战，发奖
	ScriptLib.FinishExpeditionChallenge(context)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101251, 3) then
		return -1
	end
	
	return 0
end