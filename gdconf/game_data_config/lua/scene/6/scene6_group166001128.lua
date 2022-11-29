-- 基础信息
local base_info = {
	group_id = 166001128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128006, monster_id = 22010401, pos = { x = 522.163, y = 475.403, z = 520.863 }, rot = { x = 0.000, y = 300.153, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 },
	{ config_id = 128007, monster_id = 22010101, pos = { x = 523.094, y = 475.432, z = 524.640 }, rot = { x = 0.000, y = 258.481, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 128002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 35.000, z = 50.000 }, pos = { x = 524.265, y = 480.324, z = 522.198 }, area_id = 300 },
	{ config_id = 128005, shape = RegionShape.CUBIC, size = { x = 22.000, y = 10.000, z = 25.000 }, pos = { x = 518.442, y = 480.272, z = 523.710 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1128002, name = "LEAVE_REGION_128002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_128002", action = "action_EVENT_LEAVE_REGION_128002" },
	{ config_id = 1128004, name = "ANY_MONSTER_DIE_128004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128004", action = "action_EVENT_ANY_MONSTER_DIE_128004" },
	{ config_id = 1128005, name = "ENTER_REGION_128005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128005", action = "action_EVENT_ENTER_REGION_128005" }
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
		regions = { 128005 },
		triggers = { "ENTER_REGION_128005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 128006, 128007 },
		gadgets = { },
		regions = { 128002 },
		triggers = { "LEAVE_REGION_128002", "ANY_MONSTER_DIE_128004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_128002(context, evt)
	-- 判断变量"LeaveVar"为0
	if ScriptLib.GetGroupVariableValue(context, "LeaveVar") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_128002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001128, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128004(context, evt)
	-- 将本组内变量名为 "LeaveVar" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LeaveVar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组166001327中， configid为327003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 166001327, 327003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128005(context, evt)
	if evt.param1 ~= 128005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001128, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end