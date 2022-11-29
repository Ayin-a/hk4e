-- 基础信息
local base_info = {
	group_id = 250055007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 25100101, pos = { x = -100.804, y = 10.658, z = 74.983 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 95, disableWander = true, pose_id = 1 },
	{ config_id = 7002, monster_id = 25100201, pos = { x = -105.439, y = 10.658, z = 82.916 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 95, disableWander = true, pose_id = 1 },
	{ config_id = 7003, monster_id = 25100201, pos = { x = -110.829, y = 10.658, z = 84.022 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 100, disableWander = true, pose_id = 1 },
	{ config_id = 7004, monster_id = 25100101, pos = { x = -116.348, y = 10.658, z = 79.753 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 100, disableWander = true, pose_id = 1 },
	{ config_id = 7005, monster_id = 25010201, pos = { x = -115.248, y = 10.658, z = 71.788 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7006, monster_id = 25070101, pos = { x = -109.581, y = 10.658, z = 69.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7007, monster_id = 23030101, pos = { x = -105.976, y = 10.658, z = 70.199 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7008, monster_id = 25010601, pos = { x = -103.552, y = 10.658, z = 78.438 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7009, monster_id = 25010201, pos = { x = -112.496, y = 10.658, z = 69.704 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7010, monster_id = 25010201, pos = { x = -116.046, y = 10.658, z = 74.870 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 7011, monster_id = 25030201, pos = { x = -103.723, y = 10.658, z = 72.941 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 85, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7012, gadget_id = 70360010, pos = { x = -109.507, y = 10.736, z = 75.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70350003, pos = { x = -109.228, y = 10.456, z = 58.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7014, gadget_id = 70350003, pos = { x = -109.146, y = 10.501, z = 91.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7015, gadget_id = 70350003, pos = { x = -124.932, y = 10.456, z = 75.326 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7016, gadget_id = 70350003, pos = { x = -93.085, y = 10.435, z = 75.171 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 7019, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -108.790, y = 10.755, z = 75.560 } }
}

-- 触发器
triggers = {
	{ config_id = 1007017, name = "GADGET_CREATE_7017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7017", action = "action_EVENT_GADGET_CREATE_7017" },
	{ config_id = 1007018, name = "SELECT_OPTION_7018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7018", action = "action_EVENT_SELECT_OPTION_7018" },
	{ config_id = 1007019, name = "ENTER_REGION_7019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7019", action = "action_EVENT_ENTER_REGION_7019" },
	{ config_id = 1007020, name = "ANY_MONSTER_DIE_7020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7020", action = "action_EVENT_ANY_MONSTER_DIE_7020" },
	{ config_id = 1007021, name = "ANY_MONSTER_DIE_7021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7021", action = "action_EVENT_ANY_MONSTER_DIE_7021" },
	{ config_id = 1007022, name = "SELECT_OPTION_7022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7022", action = "action_EVENT_SELECT_OPTION_7022" }
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
		gadgets = { 7012, 7013, 7014, 7015, 7016 },
		regions = { 7019 },
		triggers = { "GADGET_CREATE_7017", "SELECT_OPTION_7018", "ENTER_REGION_7019", "SELECT_OPTION_7022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 7003, 7004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_7017(context, evt)
	if 7012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055007, 7012, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7018(context, evt)
	-- 判断是gadgetid 7012 option_id 4102
	if 7012 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7018(context, evt)
	-- 将configid为 7012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250055007 ；指定config：7012；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055007, 7012, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250055007 ；指定config：7012；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055007, 7012, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7019(context, evt)
	if evt.param1 ~= 7019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7019(context, evt)
	-- 将configid为 7013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7020(context, evt)
	-- 将configid为 7013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7021(context, evt)
	-- 将configid为 7013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 7016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7022(context, evt)
	-- 判断是gadgetid 7012 option_id 4103
	if 7012 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7022(context, evt)
	-- 将configid为 7012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250055007 ；指定config：7012；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055007, 7012, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 250055007 ；指定config：7012；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055007, 7012, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055007, 3)
	
	return 0
end