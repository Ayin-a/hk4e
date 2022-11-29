-- 基础信息
local base_info = {
	group_id = 250055004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25010201, pos = { x = 38.294, y = 10.658, z = 74.803 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 25010301, pos = { x = 34.106, y = 10.658, z = 81.700 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 25010401, pos = { x = 29.094, y = 10.658, z = 82.078 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 25010701, pos = { x = 24.141, y = 10.658, z = 80.021 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4005, monster_id = 25010201, pos = { x = 23.828, y = 10.658, z = 71.119 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4006, monster_id = 25070101, pos = { x = 30.341, y = 10.658, z = 67.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4007, monster_id = 23030101, pos = { x = 34.998, y = 10.658, z = 68.915 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4008, monster_id = 25010601, pos = { x = 36.956, y = 10.658, z = 78.929 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4009, monster_id = 25010201, pos = { x = 26.768, y = 10.658, z = 68.510 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4010, monster_id = 25010201, pos = { x = 22.912, y = 10.658, z = 75.088 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4011, monster_id = 25030201, pos = { x = 37.760, y = 10.658, z = 72.740 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4012, gadget_id = 70360001, pos = { x = 29.731, y = 10.639, z = 75.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70290137, pos = { x = 30.747, y = 11.003, z = 60.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4014, gadget_id = 70290137, pos = { x = 30.762, y = 10.924, z = 90.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4015, gadget_id = 70290137, pos = { x = 15.937, y = 11.003, z = 75.091 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4016, gadget_id = 70290137, pos = { x = 45.873, y = 10.911, z = 75.114 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 4019, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 31.132, y = 10.755, z = 75.777 } }
}

-- 触发器
triggers = {
	{ config_id = 1004017, name = "GADGET_CREATE_4017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4017", action = "action_EVENT_GADGET_CREATE_4017" },
	{ config_id = 1004018, name = "SELECT_OPTION_4018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4018", action = "action_EVENT_SELECT_OPTION_4018" },
	{ config_id = 1004019, name = "ENTER_REGION_4019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4019", action = "action_EVENT_ENTER_REGION_4019" },
	{ config_id = 1004020, name = "ANY_MONSTER_DIE_4020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4020", action = "action_EVENT_ANY_MONSTER_DIE_4020" },
	{ config_id = 1004021, name = "ANY_MONSTER_DIE_4021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4021", action = "action_EVENT_ANY_MONSTER_DIE_4021" }
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
		monsters = { },
		gadgets = { 4012, 4013, 4014, 4015, 4016 },
		regions = { 4019 },
		triggers = { "GADGET_CREATE_4017", "SELECT_OPTION_4018", "ENTER_REGION_4019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002, 4003, 4004, 4005, 4006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4007, 4008, 4009, 4010, 4011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_4017(context, evt)
	if 4012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055004, 4012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4018(context, evt)
	-- 判断是gadgetid 4012 option_id 175
	if 4012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4018(context, evt)
	-- 删除指定group： 250055004 ；指定config：4012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055004, 4012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4019(context, evt)
	if evt.param1 ~= 4019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4019(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 将configid为 4013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end