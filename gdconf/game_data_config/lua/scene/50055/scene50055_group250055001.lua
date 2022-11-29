-- 基础信息
local base_info = {
	group_id = 250055001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1009, monster_id = 21010201, pos = { x = 37.889, y = 10.339, z = 145.157 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1010, monster_id = 21010201, pos = { x = 32.824, y = 10.339, z = 152.507 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1011, monster_id = 21011001, pos = { x = 28.042, y = 10.355, z = 152.421 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1012, monster_id = 21011001, pos = { x = 23.869, y = 10.339, z = 149.634 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1013, monster_id = 21010101, pos = { x = 23.724, y = 10.344, z = 141.059 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1014, monster_id = 21010101, pos = { x = 30.129, y = 10.340, z = 137.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1015, monster_id = 21020701, pos = { x = 35.300, y = 10.349, z = 139.415 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1016, monster_id = 21010201, pos = { x = 36.563, y = 10.339, z = 150.386 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1017, monster_id = 21011601, pos = { x = 26.958, y = 10.347, z = 137.930 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1018, monster_id = 21010201, pos = { x = 23.512, y = 10.350, z = 145.461 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1019, monster_id = 21030101, pos = { x = 37.321, y = 10.360, z = 142.617 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1022, monster_id = 21010201, pos = { x = 37.923, y = 10.335, z = 146.766 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1023, monster_id = 21010201, pos = { x = 34.593, y = 10.335, z = 152.046 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1024, monster_id = 21010901, pos = { x = 29.560, y = 10.351, z = 152.669 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1025, monster_id = 21010901, pos = { x = 25.184, y = 10.335, z = 151.261 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1026, monster_id = 21030601, pos = { x = 25.028, y = 10.341, z = 139.118 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1027, monster_id = 21010201, pos = { x = 30.808, y = 10.336, z = 137.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360001, pos = { x = 30.749, y = 10.339, z = 145.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70290137, pos = { x = 30.836, y = 10.999, z = 130.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1005, gadget_id = 70290137, pos = { x = 30.851, y = 10.987, z = 160.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1006, gadget_id = 70290137, pos = { x = 15.906, y = 10.989, z = 145.083 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1007, gadget_id = 70290137, pos = { x = 45.858, y = 10.981, z = 145.122 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 1008, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 31.821, y = 10.543, z = 144.546 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001003, name = "SELECT_OPTION_1003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1003", action = "action_EVENT_SELECT_OPTION_1003" },
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008" },
	{ config_id = 1001020, name = "ANY_MONSTER_DIE_1020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1020", action = "action_EVENT_ANY_MONSTER_DIE_1020" },
	{ config_id = 1001021, name = "ANY_MONSTER_DIE_1021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1021", action = "action_EVENT_ANY_MONSTER_DIE_1021" },
	{ config_id = 1001028, name = "ANY_MONSTER_DIE_1028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1028", action = "action_EVENT_ANY_MONSTER_DIE_1028" }
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
		gadgets = { 1001, 1004, 1005, 1006, 1007 },
		regions = { 1008 },
		triggers = { "GADGET_CREATE_1002", "SELECT_OPTION_1003", "ENTER_REGION_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1009, 1010, 1011, 1012, 1013, 1014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1022, 1023, 1024, 1025, 1026, 1027 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1015, 1016, 1017, 1018, 1019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1002(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055001, 1001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1003(context, evt)
	-- 判断是gadgetid 1001 option_id 175
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1003(context, evt)
	-- 删除指定group： 250055001 ；指定config：1001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055001, 1001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	-- 将configid为 1004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1021(context, evt)
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055001, 4)
	
	return 0
end