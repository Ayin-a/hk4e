-- 基础信息
local base_info = {
	group_id = 220127010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21020201, pos = { x = 61.197, y = 42.023, z = 27.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 10002, monster_id = 21010701, pos = { x = 56.725, y = 42.028, z = 32.204 }, rot = { x = 0.000, y = 125.094, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 10003, monster_id = 21010701, pos = { x = 65.373, y = 42.035, z = 31.835 }, rot = { x = 0.000, y = 270.180, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 10017, monster_id = 21010501, pos = { x = 67.068, y = 42.053, z = 24.148 }, rot = { x = 0.000, y = 341.286, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10014, gadget_id = 70211011, pos = { x = 61.159, y = 41.962, z = 39.674 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 进入战斗区域关门
	{ config_id = 10006, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 60.045, y = 41.907, z = 32.457 } },
	-- 判断玩家在不在战斗区域
	{ config_id = 10015, shape = RegionShape.CUBIC, size = { x = 15.000, y = 20.000, z = 10.000 }, pos = { x = 61.293, y = 50.236, z = 52.282 } },
	-- 判断玩家在不在战斗区域
	{ config_id = 10016, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = 10.914, y = 54.764, z = 127.059 } }
}

-- 触发器
triggers = {
	-- 进入战斗区域关门
	{ config_id = 1010006, name = "ENTER_REGION_10006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10006", action = "action_EVENT_ENTER_REGION_10006", trigger_count = 0 },
	{ config_id = 1010007, name = "ANY_MONSTER_DIE_10007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10007", action = "action_EVENT_ANY_MONSTER_DIE_10007" },
	-- 判断玩家在不在战斗区域
	{ config_id = 1010015, name = "ENTER_REGION_10015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10015", action = "action_EVENT_ENTER_REGION_10015", trigger_count = 0 },
	-- 判断玩家在不在战斗区域
	{ config_id = 1010016, name = "ENTER_REGION_10016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10016", action = "action_EVENT_ENTER_REGION_10016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 10004, monster_id = 21030301, pos = { x = 52.594, y = 41.988, z = 24.114 }, rot = { x = 0.000, y = 29.715, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
	},
	gadgets = {
		{ config_id = 10005, gadget_id = 70310001, pos = { x = 53.900, y = 41.886, z = 40.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 10008, gadget_id = 70310001, pos = { x = 66.347, y = 42.032, z = 40.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 10009, gadget_id = 70300107, pos = { x = 60.935, y = 42.010, z = 28.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
		{ config_id = 10010, gadget_id = 70220014, pos = { x = 71.084, y = 41.958, z = 31.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 10011, gadget_id = 70220014, pos = { x = 70.257, y = 41.898, z = 32.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 10012, gadget_id = 70220067, pos = { x = 49.738, y = 41.944, z = 26.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 10013, gadget_id = 70220067, pos = { x = 50.307, y = 42.045, z = 28.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	}
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
		monsters = { 10001, 10002, 10003, 10017 },
		gadgets = { },
		regions = { 10006 },
		triggers = { "ENTER_REGION_10006", "ANY_MONSTER_DIE_10007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 10015, 10016 },
		triggers = { "ENTER_REGION_10015", "ENTER_REGION_10016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10006(context, evt)
	if evt.param1 ~= 10006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10006(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2069, 301)
	ScriptLib.AddExtraGroupSuite(context, 220127010, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220127010) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10007(context, evt)
	-- 改变指定group组220127002中， configid为2010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为10014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组220127002中， configid为2069的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2069, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127010, 3)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127010, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10015(context, evt)
	if evt.param1 ~= 10015 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2069) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10015(context, evt)
	-- 改变指定group组220127002中， configid为2069的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2069, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10016(context, evt)
	if evt.param1 ~= 10016 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2069) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10016(context, evt)
	-- 改变指定group组220127002中， configid为2069的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2069, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end