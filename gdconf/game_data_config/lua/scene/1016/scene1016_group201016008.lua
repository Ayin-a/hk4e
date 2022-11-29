-- 基础信息
local base_info = {
	group_id = 201016008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19, monster_id = 21010901, pos = { x = 119.087, y = 33.896, z = -16.375 }, rot = { x = 0.000, y = 89.517, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 20, monster_id = 21011001, pos = { x = 119.220, y = 33.897, z = -10.546 }, rot = { x = 0.000, y = 94.076, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145, gadget_id = 70900201, pos = { x = 116.036, y = 35.616, z = -12.684 }, rot = { x = 0.000, y = 267.896, z = 0.000 }, level = 1 },
	{ config_id = 146, gadget_id = 70900201, pos = { x = 34.058, y = 15.392, z = -13.650 }, rot = { x = 0.000, y = 267.896, z = 0.000 }, level = 1 },
	{ config_id = 165, gadget_id = 70350002, pos = { x = 117.051, y = 33.661, z = -13.558 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 166, gadget_id = 70360002, pos = { x = 119.765, y = 33.869, z = -18.750 }, rot = { x = 0.000, y = 85.535, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 79, shape = RegionShape.CUBIC, size = { x = 15.000, y = 30.000, z = 15.000 }, pos = { x = 165.441, y = 17.002, z = -27.071 } },
	{ config_id = 80, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 8.000 }, pos = { x = 156.136, y = 34.204, z = -24.959 } },
	{ config_id = 81, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 111.813, y = 38.068, z = -13.501 } },
	{ config_id = 82, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 32.857, y = 19.276, z = -13.627 } }
}

-- 触发器
triggers = {
	{ config_id = 1000079, name = "ENTER_REGION_79", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_79", action = "action_EVENT_ENTER_REGION_79", forbid_guest = false },
	{ config_id = 1000080, name = "ENTER_REGION_80", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80", action = "action_EVENT_ENTER_REGION_80", forbid_guest = false },
	{ config_id = 1000081, name = "ENTER_REGION_81", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81", action = "action_EVENT_ENTER_REGION_81", forbid_guest = false },
	{ config_id = 1000082, name = "ENTER_REGION_82", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82", action = "action_EVENT_ENTER_REGION_82", forbid_guest = false },
	{ config_id = 1000083, name = "ANY_MONSTER_DIE_83", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_83", action = "action_EVENT_ANY_MONSTER_DIE_83" },
	{ config_id = 1000084, name = "SELECT_OPTION_84", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_84", action = "action_EVENT_SELECT_OPTION_84", forbid_guest = false }
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
		monsters = { 19, 20 },
		gadgets = { 165, 166 },
		regions = { 80, 81, 82 },
		triggers = { "ENTER_REGION_80", "ENTER_REGION_81", "ENTER_REGION_82", "ANY_MONSTER_DIE_83", "SELECT_OPTION_84" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 79 },
		triggers = { "ENTER_REGION_79" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_79(context, evt)
	if evt.param1 ~= 79 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_79(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016002, monsters = {}, gadgets = {2021} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_80(context, evt)
	if evt.param1 ~= 80 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80(context, evt)
	-- 创建id为145的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 145 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81(context, evt)
	if evt.param1 ~= 81 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016008, monsters = {}, gadgets = {145} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为146的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82(context, evt)
	if evt.param1 ~= 82 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201016008, monsters = {}, gadgets = {146} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_83(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201016008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_83(context, evt)
	-- 将configid为 166 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201016008, 166, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_84(context, evt)
	-- 判断是gadgetid 166 option_id 1
	if 166 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_84(context, evt)
	-- 删除指定group： 201016008 ；指定config：166；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201016008, 166, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 166 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 166, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 165 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end