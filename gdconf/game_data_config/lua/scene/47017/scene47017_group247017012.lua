-- 基础信息
local base_info = {
	group_id = 247017012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 23010101, pos = { x = 246.728, y = 0.052, z = -159.902 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 12002, monster_id = 23010501, pos = { x = 244.493, y = 0.045, z = -154.231 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 12003, monster_id = 23010401, pos = { x = 244.523, y = 0.045, z = -166.176 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 12004, monster_id = 23010101, pos = { x = 232.820, y = 0.080, z = -163.151 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 12005, monster_id = 23010101, pos = { x = 232.984, y = 0.059, z = -156.389 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12006, gadget_id = 70360001, pos = { x = 239.971, y = 0.101, z = -159.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12007, gadget_id = 70290137, pos = { x = 240.027, y = 0.600, z = -179.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12008, gadget_id = 70290137, pos = { x = 240.034, y = 0.672, z = -139.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12009, gadget_id = 70290137, pos = { x = 220.189, y = 0.724, z = -159.995 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 12010, gadget_id = 70290137, pos = { x = 260.092, y = 0.636, z = -159.971 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 12014, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 239.120, y = 0.142, z = -159.813 } }
}

-- 触发器
triggers = {
	{ config_id = 1012011, name = "ANY_MONSTER_DIE_12011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12011", action = "action_EVENT_ANY_MONSTER_DIE_12011" },
	{ config_id = 1012012, name = "GADGET_CREATE_12012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12012", action = "action_EVENT_GADGET_CREATE_12012" },
	{ config_id = 1012013, name = "SELECT_OPTION_12013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12013", action = "action_EVENT_SELECT_OPTION_12013" },
	{ config_id = 1012014, name = "ENTER_REGION_12014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12014", action = "action_EVENT_ENTER_REGION_12014" },
	{ config_id = 1012015, name = "ANY_MONSTER_DIE_12015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12015", action = "action_EVENT_ANY_MONSTER_DIE_12015" }
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
		gadgets = { 12006, 12007, 12008, 12009, 12010 },
		regions = { 12014 },
		triggers = { "GADGET_CREATE_12012", "SELECT_OPTION_12013", "ENTER_REGION_12014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12004, 12005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 12001, 12002, 12003 },
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
function condition_EVENT_ANY_MONSTER_DIE_12011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12012(context, evt)
	if 12006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247017012, 12006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12013(context, evt)
	-- 判断是gadgetid 12006 option_id 175
	if 12006 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12013(context, evt)
	-- 删除指定group： 247017012 ；指定config：12006；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017012, 12006, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017012, 2)
	
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
	-- 将configid为 12007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
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
	-- 将configid为 12007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
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
	
	return 0
end