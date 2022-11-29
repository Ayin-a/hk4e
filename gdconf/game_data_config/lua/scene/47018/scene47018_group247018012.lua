-- 基础信息
local base_info = {
	group_id = 247018012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21020401, pos = { x = 407.456, y = -3.348, z = -400.292 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 12002, monster_id = 21030101, pos = { x = 394.068, y = -3.246, z = -393.647 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 12003, monster_id = 21030601, pos = { x = 393.581, y = -3.246, z = -405.491 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 12004, monster_id = 21030601, pos = { x = 406.744, y = -3.246, z = -394.221 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 12005, monster_id = 21020401, pos = { x = 391.951, y = -3.337, z = -399.909 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 12006, monster_id = 21030101, pos = { x = 406.770, y = -3.246, z = -405.304 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12007, gadget_id = 70360001, pos = { x = 400.177, y = -3.169, z = -399.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12008, gadget_id = 70290137, pos = { x = 400.107, y = -3.188, z = -419.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12009, gadget_id = 70290137, pos = { x = 400.120, y = -3.073, z = -379.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12010, gadget_id = 70290137, pos = { x = 380.255, y = -2.994, z = -399.950 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12011, gadget_id = 70290137, pos = { x = 420.205, y = -3.073, z = -399.942 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 12014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 400.679, y = -3.150, z = -399.716 } }
}

-- 触发器
triggers = {
	{ config_id = 1012012, name = "GADGET_CREATE_12012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12012", action = "action_EVENT_GADGET_CREATE_12012" },
	{ config_id = 1012013, name = "SELECT_OPTION_12013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12013", action = "action_EVENT_SELECT_OPTION_12013" },
	{ config_id = 1012014, name = "ENTER_REGION_12014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12014", action = "action_EVENT_ENTER_REGION_12014" },
	{ config_id = 1012015, name = "ANY_MONSTER_DIE_12015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12015", action = "action_EVENT_ANY_MONSTER_DIE_12015" },
	{ config_id = 1012016, name = "ANY_MONSTER_DIE_12016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12016", action = "action_EVENT_ANY_MONSTER_DIE_12016" },
	{ config_id = 1012017, name = "SELECT_OPTION_12017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12017", action = "action_EVENT_SELECT_OPTION_12017" }
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
		gadgets = { 12007, 12008, 12009, 12010, 12011 },
		regions = { 12014 },
		triggers = { "GADGET_CREATE_12012", "SELECT_OPTION_12013", "ENTER_REGION_12014", "SELECT_OPTION_12017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12002, 12003, 12005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 12001, 12004, 12006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_12012(context, evt)
	if 12007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247018012, 12007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12013(context, evt)
	-- 判断是gadgetid 12007 option_id 4102
	if 12007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12013(context, evt)
	-- 删除指定group： 247018012 ；指定config：12007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018012, 12007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247018012 ；指定config：12007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018012, 12007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247018012, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12014(context, evt)
	if evt.param1 ~= 12014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12014(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12015(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12016(context, evt)
	-- 将configid为 12008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 12011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12017(context, evt)
	-- 判断是gadgetid 12007 option_id 4103
	if 12007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12017(context, evt)
	-- 删除指定group： 247018012 ；指定config：12007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018012, 12007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247018012 ；指定config：12007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247018012, 12007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247018012, 3)
	
	return 0
end