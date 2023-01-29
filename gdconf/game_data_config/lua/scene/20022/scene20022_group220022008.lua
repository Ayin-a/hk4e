-- 基础信息
local base_info = {
	group_id = 220022008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32, monster_id = 21010501, pos = { x = 104.143, y = 58.500, z = 129.126 }, rot = { x = 0.000, y = 272.960, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 33, monster_id = 21010501, pos = { x = 104.138, y = 58.500, z = 123.722 }, rot = { x = 0.000, y = 272.960, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 34, monster_id = 21010501, pos = { x = 109.310, y = 63.169, z = 126.946 }, rot = { x = 0.000, y = 272.960, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 35, monster_id = 20010301, pos = { x = 140.930, y = 59.069, z = 117.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 36, monster_id = 20010301, pos = { x = 140.932, y = 59.241, z = 125.559 }, rot = { x = 0.000, y = 248.737, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 37, monster_id = 20010301, pos = { x = 136.079, y = 59.069, z = 120.958 }, rot = { x = 0.000, y = 57.668, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 38, monster_id = 20010401, pos = { x = 139.148, y = 59.000, z = 121.555 }, rot = { x = 0.000, y = 281.740, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 39, monster_id = 21010901, pos = { x = 158.957, y = 65.784, z = 124.279 }, rot = { x = 0.000, y = 267.803, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 40, monster_id = 21010901, pos = { x = 158.973, y = 65.784, z = 122.975 }, rot = { x = 0.000, y = 270.626, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 41, monster_id = 21010901, pos = { x = 158.913, y = 65.784, z = 121.540 }, rot = { x = 0.000, y = 270.392, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 42, monster_id = 24010101, pos = { x = 190.909, y = 49.844, z = 190.655 }, rot = { x = 0.000, y = 175.246, z = 0.000 }, level = 1, affix = { 1008, 1011 }, isElite = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17, gadget_id = 70211011, pos = { x = 109.536, y = 63.029, z = 125.064 }, rot = { x = 0.000, y = 269.099, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 18, gadget_id = 70220004, pos = { x = 156.288, y = 61.242, z = 128.949 }, rot = { x = 0.000, y = 7.989, z = 0.000 }, level = 1 },
	{ config_id = 19, gadget_id = 70220004, pos = { x = 159.559, y = 61.242, z = 129.052 }, rot = { x = 0.000, y = 353.862, z = 0.000 }, level = 1 },
	{ config_id = 20, gadget_id = 70220004, pos = { x = 162.163, y = 61.242, z = 129.122 }, rot = { x = 0.000, y = 343.680, z = 0.000 }, level = 1 },
	{ config_id = 21, gadget_id = 70220004, pos = { x = 164.815, y = 61.242, z = 129.233 }, rot = { x = 0.000, y = 171.075, z = 0.000 }, level = 1 },
	{ config_id = 22, gadget_id = 70220004, pos = { x = 168.167, y = 61.242, z = 129.200 }, rot = { x = 0.000, y = 97.468, z = 0.000 }, level = 1 },
	{ config_id = 23, gadget_id = 70220004, pos = { x = 175.822, y = 59.000, z = 130.515 }, rot = { x = 0.000, y = 256.177, z = 0.000 }, level = 1 },
	{ config_id = 24, gadget_id = 70220004, pos = { x = 175.935, y = 59.000, z = 134.830 }, rot = { x = 0.000, y = 243.325, z = 0.000 }, level = 1 },
	{ config_id = 25, gadget_id = 70220004, pos = { x = 156.188, y = 61.242, z = 125.776 }, rot = { x = 0.000, y = 52.458, z = 0.000 }, level = 1 },
	{ config_id = 26, gadget_id = 70220004, pos = { x = 156.102, y = 61.242, z = 122.702 }, rot = { x = 0.000, y = 178.373, z = 0.000 }, level = 1 },
	{ config_id = 27, gadget_id = 70220004, pos = { x = 156.098, y = 61.242, z = 119.718 }, rot = { x = 0.000, y = 167.702, z = 0.000 }, level = 1 },
	{ config_id = 28, gadget_id = 70220004, pos = { x = 156.136, y = 61.242, z = 116.702 }, rot = { x = 0.000, y = 145.631, z = 0.000 }, level = 1 },
	{ config_id = 29, gadget_id = 70220004, pos = { x = 156.428, y = 61.242, z = 113.508 }, rot = { x = 0.000, y = 125.146, z = 0.000 }, level = 1 },
	{ config_id = 30, gadget_id = 70900201, pos = { x = 190.514, y = 45.734, z = 138.321 }, rot = { x = 0.000, y = 122.004, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12, shape = RegionShape.SPHERE, radius = 5, pos = { x = 190.408, y = 42.000, z = 132.085 } },
	{ config_id = 13, shape = RegionShape.SPHERE, radius = 12.3, pos = { x = 148.027, y = 59.000, z = 120.488 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 120.000, y = 1.000, z = 44.600 }, pos = { x = 108.068, y = 56.518, z = 121.632 } }
}

-- 触发器
triggers = {
	{ config_id = 1000011, name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" },
	{ config_id = 1000012, name = "ENTER_REGION_12", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12", action = "action_EVENT_ENTER_REGION_12", forbid_guest = false },
	{ config_id = 1000013, name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", forbid_guest = false },
	{ config_id = 1000014, name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 32, 33, 34, 39, 40, 41, 42 },
		gadgets = { 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 },
		regions = { 12, 13 },
		triggers = { "ANY_MONSTER_DIE_11", "ENTER_REGION_12", "ENTER_REGION_13" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 14 },
		triggers = { "ENTER_REGION_14" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	if 42 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
	-- 改变指定group组220022007中， configid为11的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220022007, 11, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为30的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 30 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12(context, evt)
	if evt.param1 ~= 12 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220022008, monsters = {}, gadgets = {30} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 35, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 37, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 38, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end