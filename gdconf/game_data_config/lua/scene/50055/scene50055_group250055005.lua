-- 基础信息
local base_info = {
	group_id = 250055005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 26030101, pos = { x = 39.909, y = 10.512, z = 4.773 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5002, monster_id = 26030101, pos = { x = 34.769, y = 10.512, z = 13.275 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5003, monster_id = 20010801, pos = { x = 29.172, y = 10.512, z = 12.266 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5004, monster_id = 20010601, pos = { x = 24.533, y = 10.512, z = 9.034 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5005, monster_id = 20010801, pos = { x = 24.753, y = 10.512, z = 1.577 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5006, monster_id = 20010801, pos = { x = 30.420, y = 10.512, z = -1.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5007, monster_id = 26040104, pos = { x = 35.961, y = 10.512, z = -2.776 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5008, monster_id = 26010101, pos = { x = 36.448, y = 10.512, z = 8.228 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5009, monster_id = 25010201, pos = { x = 27.504, y = 10.512, z = -0.506 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5010, monster_id = 25010201, pos = { x = 23.954, y = 10.512, z = 4.660 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 5011, monster_id = 25010301, pos = { x = 36.278, y = 10.512, z = 2.730 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 85, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5012, gadget_id = 70360010, pos = { x = 30.493, y = 10.589, z = 5.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70350003, pos = { x = 30.773, y = 10.309, z = -11.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5014, gadget_id = 70350003, pos = { x = 30.871, y = 10.355, z = 21.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5015, gadget_id = 70350003, pos = { x = 15.196, y = 10.309, z = 5.115 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5016, gadget_id = 70350003, pos = { x = 47.132, y = 10.289, z = 4.961 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5019, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 31.210, y = 10.608, z = 5.349 } }
}

-- 触发器
triggers = {
	{ config_id = 1005017, name = "GADGET_CREATE_5017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5017", action = "action_EVENT_GADGET_CREATE_5017" },
	{ config_id = 1005018, name = "SELECT_OPTION_5018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5018", action = "action_EVENT_SELECT_OPTION_5018" },
	{ config_id = 1005019, name = "ENTER_REGION_5019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5019", action = "action_EVENT_ENTER_REGION_5019" },
	{ config_id = 1005020, name = "ANY_MONSTER_DIE_5020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5020", action = "action_EVENT_ANY_MONSTER_DIE_5020" },
	{ config_id = 1005021, name = "ANY_MONSTER_DIE_5021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5021", action = "action_EVENT_ANY_MONSTER_DIE_5021" }
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
		gadgets = { 5012, 5013, 5014, 5015, 5016 },
		regions = { 5019 },
		triggers = { "GADGET_CREATE_5017", "SELECT_OPTION_5018", "ENTER_REGION_5019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5017(context, evt)
	if 5012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055005, 5012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5018(context, evt)
	-- 判断是gadgetid 5012 option_id 175
	if 5012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5018(context, evt)
	-- 将configid为 5012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250055005 ；指定config：5012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055005, 5012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5019(context, evt)
	if evt.param1 ~= 5019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5019(context, evt)
	-- 将configid为 5013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5021(context, evt)
	-- 将configid为 5013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end