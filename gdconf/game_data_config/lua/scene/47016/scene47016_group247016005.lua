-- 基础信息
local base_info = {
	group_id = 247016005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010201, pos = { x = 247.121, y = 0.102, z = 80.129 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5002, monster_id = 21010201, pos = { x = 242.056, y = 0.102, z = 87.478 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5003, monster_id = 21011001, pos = { x = 237.275, y = 0.118, z = 87.392 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5004, monster_id = 21011001, pos = { x = 233.101, y = 0.102, z = 84.606 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5005, monster_id = 21010101, pos = { x = 232.956, y = 0.107, z = 76.030 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5006, monster_id = 21010101, pos = { x = 239.362, y = 0.103, z = 72.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5007, monster_id = 21020701, pos = { x = 244.532, y = 0.112, z = 74.386 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5008, monster_id = 21010201, pos = { x = 245.795, y = 0.102, z = 85.358 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5009, monster_id = 21011601, pos = { x = 236.190, y = 0.110, z = 72.901 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5010, monster_id = 21010201, pos = { x = 232.745, y = 0.113, z = 80.432 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5011, monster_id = 21030101, pos = { x = 246.554, y = 0.123, z = 77.589 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5012, monster_id = 21010201, pos = { x = 247.156, y = 0.099, z = 81.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5013, monster_id = 21010201, pos = { x = 243.826, y = 0.099, z = 87.017 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5014, monster_id = 21010901, pos = { x = 238.793, y = 0.114, z = 87.640 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5015, monster_id = 21010901, pos = { x = 234.416, y = 0.099, z = 86.232 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5016, monster_id = 21030601, pos = { x = 234.261, y = 0.104, z = 74.090 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 5017, monster_id = 21010201, pos = { x = 240.041, y = 0.100, z = 72.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5018, gadget_id = 70360001, pos = { x = 239.982, y = 0.102, z = 80.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70290137, pos = { x = 240.069, y = 0.762, z = 60.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5020, gadget_id = 70290137, pos = { x = 240.084, y = 0.751, z = 100.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5021, gadget_id = 70290137, pos = { x = 220.138, y = 0.752, z = 80.054 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5022, gadget_id = 70290137, pos = { x = 260.091, y = 0.744, z = 80.094 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5025, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 241.054, y = 0.306, z = 79.517 } }
}

-- 触发器
triggers = {
	{ config_id = 1005023, name = "GADGET_CREATE_5023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5023", action = "action_EVENT_GADGET_CREATE_5023" },
	{ config_id = 1005024, name = "SELECT_OPTION_5024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5024", action = "action_EVENT_SELECT_OPTION_5024" },
	{ config_id = 1005025, name = "ENTER_REGION_5025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5025", action = "action_EVENT_ENTER_REGION_5025" },
	{ config_id = 1005026, name = "ANY_MONSTER_DIE_5026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5026", action = "action_EVENT_ANY_MONSTER_DIE_5026" },
	{ config_id = 1005027, name = "ANY_MONSTER_DIE_5027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5027", action = "action_EVENT_ANY_MONSTER_DIE_5027" },
	{ config_id = 1005028, name = "ANY_MONSTER_DIE_5028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5028", action = "action_EVENT_ANY_MONSTER_DIE_5028" }
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
		gadgets = { 5018, 5019, 5020, 5021, 5022 },
		regions = { 5025 },
		triggers = { "GADGET_CREATE_5023", "SELECT_OPTION_5024", "ENTER_REGION_5025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5001, 5002, 5003, 5004, 5005, 5006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5012, 5013, 5014, 5015, 5016, 5017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 5007, 5008, 5009, 5010, 5011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_5023(context, evt)
	if 5018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247016005, 5018, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5024(context, evt)
	-- 判断是gadgetid 5018 option_id 175
	if 5018 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5024(context, evt)
	-- 删除指定group： 247016005 ；指定config：5018；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247016005, 5018, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247016005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5025(context, evt)
	if evt.param1 ~= 5025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5025(context, evt)
	-- 将configid为 5019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247016005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 将configid为 5019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247016005, 4)
	
	return 0
end