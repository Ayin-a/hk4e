-- 基础信息
local base_info = {
	group_id = 166001127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 22010201, pos = { x = 462.578, y = 475.700, z = 459.807 }, rot = { x = 0.000, y = 325.605, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 },
	{ config_id = 127006, monster_id = 22010101, pos = { x = 458.889, y = 475.665, z = 458.227 }, rot = { x = 0.000, y = 343.383, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 127002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 45.000 }, pos = { x = 455.674, y = 485.319, z = 456.957 }, area_id = 300 },
	-- 靠近触发刷怪
	{ config_id = 127005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 25.000 }, pos = { x = 456.760, y = 480.671, z = 458.050 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1127002, name = "LEAVE_REGION_127002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_127002", action = "action_EVENT_LEAVE_REGION_127002" },
	{ config_id = 1127004, name = "ANY_MONSTER_DIE_127004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127004", action = "action_EVENT_ANY_MONSTER_DIE_127004" },
	-- 靠近触发刷怪
	{ config_id = 1127005, name = "ENTER_REGION_127005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127005", action = "action_EVENT_ENTER_REGION_127005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "LeaveVar", value = 0, no_refresh = false }
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
		regions = { 127005 },
		triggers = { "ENTER_REGION_127005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 127001, 127006 },
		gadgets = { },
		regions = { 127002 },
		triggers = { "LEAVE_REGION_127002", "ANY_MONSTER_DIE_127004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_127002(context, evt)
	-- 判断变量"LeaveVar"为0
	if ScriptLib.GetGroupVariableValue(context, "LeaveVar") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_127002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001127, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127004(context, evt)
	-- 将本组内变量名为 "LeaveVar" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LeaveVar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001327中， configid为327002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001327, 327002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_127005(context, evt)
	if evt.param1 ~= 127005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001127, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end