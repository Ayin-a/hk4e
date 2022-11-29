-- 基础信息
local base_info = {
	group_id = 220010012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24, monster_id = 20011001, pos = { x = 415.270, y = -37.144, z = 8.960 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 25, monster_id = 20011001, pos = { x = 413.222, y = -37.144, z = 4.300 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 27, monster_id = 20011001, pos = { x = 415.126, y = -37.144, z = 4.300 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 28, monster_id = 20011001, pos = { x = 413.269, y = -37.144, z = 8.960 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86, gadget_id = 70360002, pos = { x = 410.378, y = -37.140, z = 6.390 }, rot = { x = 0.000, y = 270.458, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 191, gadget_id = 70900201, pos = { x = 422.607, y = -26.845, z = 14.478 }, rot = { x = 0.000, y = 89.872, z = 0.000 }, level = 1 },
	{ config_id = 12002, gadget_id = 70690008, pos = { x = 410.442, y = -47.309, z = 6.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 43, shape = RegionShape.SPHERE, radius = 5, pos = { x = 410.500, y = -36.862, z = 6.181 } },
	{ config_id = 48, shape = RegionShape.CUBIC, size = { x = 2.000, y = 5.000, z = 14.000 }, pos = { x = 397.695, y = -32.164, z = 2.721 } },
	{ config_id = 65, shape = RegionShape.SPHERE, radius = 5, pos = { x = 425.495, y = -28.667, z = 13.720 } }
}

-- 触发器
triggers = {
	{ config_id = 1000043, name = "ENTER_REGION_43", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43", action = "action_EVENT_ENTER_REGION_43", forbid_guest = false },
	{ config_id = 1000044, name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" },
	{ config_id = 1000048, name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ config_id = 1000065, name = "ENTER_REGION_65", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65", action = "action_EVENT_ENTER_REGION_65", forbid_guest = false },
	{ config_id = 1012001, name = "SELECT_OPTION_12001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12001", action = "action_EVENT_SELECT_OPTION_12001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "KillNum", value = 1, no_refresh = false }
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
		gadgets = { 86 },
		regions = { 43, 48, 65 },
		triggers = { "ENTER_REGION_43", "ENTER_REGION_48", "ENTER_REGION_65", "SELECT_OPTION_12001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 24, 25, 27, 28 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 12002 },
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
function condition_EVENT_ENTER_REGION_43(context, evt)
	if evt.param1 ~= 43 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220010012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220010012) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 86 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010012, 86, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
	-- 创建id为191的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 191 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_65(context, evt)
	if evt.param1 ~= 65 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010012, monsters = {}, gadgets = {191} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12001(context, evt)
	-- 判断是gadgetid 86 option_id 2
	if 86 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12001(context, evt)
	-- 删除指定group： 220010012 ；指定config：86；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220010012, 86, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 86 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为12002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end