-- 基础信息
local base_info = {
	group_id = 166001129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 22010401, pos = { x = 459.178, y = 475.360, z = 592.061 }, rot = { x = 0.000, y = 210.059, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 },
	{ config_id = 129002, monster_id = 22010201, pos = { x = 454.069, y = 475.240, z = 591.373 }, rot = { x = 0.000, y = 158.918, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 129005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 25.000 }, pos = { x = 456.742, y = 479.760, z = 587.549 }, area_id = 300 },
	{ config_id = 129006, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 50.000 }, pos = { x = 457.255, y = 484.653, z = 591.878 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1129004, name = "ANY_MONSTER_DIE_129004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129004", action = "action_EVENT_ANY_MONSTER_DIE_129004" },
	{ config_id = 1129005, name = "ENTER_REGION_129005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129005", action = "action_EVENT_ENTER_REGION_129005" },
	{ config_id = 1129006, name = "LEAVE_REGION_129006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_129006", action = "action_EVENT_LEAVE_REGION_129006" }
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
		regions = { 129005 },
		triggers = { "ENTER_REGION_129005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 129001, 129002 },
		gadgets = { },
		regions = { 129006 },
		triggers = { "ANY_MONSTER_DIE_129004", "LEAVE_REGION_129006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_129004(context, evt)
	-- 针对当前group内变量名为 "LeaveVar" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "LeaveVar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 改变指定group组166001327中， configid为327004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001327, 327004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_129005(context, evt)
	if evt.param1 ~= 129005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001129, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_129006(context, evt)
	-- 判断变量"LeaveVar"为0
	if ScriptLib.GetGroupVariableValue(context, "LeaveVar") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_129006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001129, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end