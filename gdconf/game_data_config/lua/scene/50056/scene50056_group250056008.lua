-- 基础信息
local base_info = {
	group_id = 250056008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25010201, pos = { x = 76.368, y = -0.153, z = 71.154 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8002, monster_id = 25030201, pos = { x = 73.348, y = -0.158, z = 76.231 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8003, monster_id = 25010201, pos = { x = 64.623, y = -0.160, z = 76.396 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8004, monster_id = 23050101, pos = { x = 69.745, y = -0.142, z = 62.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8005, monster_id = 25030301, pos = { x = 74.598, y = -0.156, z = 63.213 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8006, monster_id = 25030301, pos = { x = 64.781, y = -0.156, z = 63.860 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8007, monster_id = 25010301, pos = { x = 62.816, y = -0.157, z = 70.771 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 8008, monster_id = 25010601, pos = { x = 76.444, y = -0.160, z = 67.512 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8009, gadget_id = 70360001, pos = { x = 70.308, y = -0.160, z = 70.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8010, gadget_id = 70290137, pos = { x = 69.964, y = 0.112, z = 55.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8011, gadget_id = 70290137, pos = { x = 69.989, y = 0.124, z = 85.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8012, gadget_id = 70290137, pos = { x = 55.210, y = 0.206, z = 70.021 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8013, gadget_id = 70290137, pos = { x = 85.011, y = 0.114, z = 69.967 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 8016, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 70.046, y = -0.160, z = 70.356 } }
}

-- 触发器
triggers = {
	{ config_id = 1008014, name = "GADGET_CREATE_8014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8014", action = "action_EVENT_GADGET_CREATE_8014" },
	{ config_id = 1008015, name = "SELECT_OPTION_8015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8015", action = "action_EVENT_SELECT_OPTION_8015" },
	{ config_id = 1008016, name = "ENTER_REGION_8016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8016", action = "action_EVENT_ENTER_REGION_8016" },
	{ config_id = 1008017, name = "ANY_MONSTER_DIE_8017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8017", action = "action_EVENT_ANY_MONSTER_DIE_8017" },
	{ config_id = 1008018, name = "ANY_MONSTER_DIE_8018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8018", action = "action_EVENT_ANY_MONSTER_DIE_8018" }
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
		gadgets = { 8009, 8010, 8011, 8012, 8013 },
		regions = { 8016 },
		triggers = { "GADGET_CREATE_8014", "SELECT_OPTION_8015", "ENTER_REGION_8016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002, 8003, 8007, 8008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8004, 8005, 8006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_8014(context, evt)
	if 8009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250056008, 8009, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8015(context, evt)
	-- 判断是gadgetid 8009 option_id 175
	if 8009 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8015(context, evt)
	-- 删除指定group： 250056008 ；指定config：8009；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250056008, 8009, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8016(context, evt)
	if evt.param1 ~= 8016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8016(context, evt)
	-- 将configid为 8010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250056008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8018(context, evt)
	-- 将configid为 8010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end