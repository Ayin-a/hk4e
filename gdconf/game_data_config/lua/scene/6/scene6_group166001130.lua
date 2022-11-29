-- 基础信息
local base_info = {
	group_id = 166001130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130002, monster_id = 22010101, pos = { x = 390.986, y = 475.155, z = 516.334 }, rot = { x = 0.000, y = 40.047, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 },
	{ config_id = 130007, monster_id = 22010301, pos = { x = 393.286, y = 475.214, z = 514.602 }, rot = { x = 0.000, y = 40.456, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 130003, shape = RegionShape.CUBIC, size = { x = 40.000, y = 35.000, z = 50.000 }, pos = { x = 391.870, y = 479.167, z = 523.602 }, area_id = 300 },
	{ config_id = 130005, shape = RegionShape.CUBIC, size = { x = 22.000, y = 10.000, z = 20.000 }, pos = { x = 390.800, y = 480.159, z = 524.453 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1130003, name = "LEAVE_REGION_130003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_130003", action = "action_EVENT_LEAVE_REGION_130003" },
	{ config_id = 1130004, name = "ANY_MONSTER_DIE_130004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130004", action = "action_EVENT_ANY_MONSTER_DIE_130004" },
	{ config_id = 1130005, name = "ENTER_REGION_130005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130005", action = "action_EVENT_ENTER_REGION_130005" }
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
		regions = { 130005 },
		triggers = { "ENTER_REGION_130005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 130002, 130007 },
		gadgets = { },
		regions = { 130003 },
		triggers = { "LEAVE_REGION_130003", "ANY_MONSTER_DIE_130004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_130003(context, evt)
	-- 判断变量"LeaveVar"为0
	if ScriptLib.GetGroupVariableValue(context, "LeaveVar") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_130003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001130, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130004(context, evt)
	-- 针对当前group内变量名为 "LeaveVar" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "LeaveVar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 改变指定group组166001327中， configid为327005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001327, 327005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_130005(context, evt)
	if evt.param1 ~= 130005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_130005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001130, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end