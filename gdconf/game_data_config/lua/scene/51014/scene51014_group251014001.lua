-- 基础信息
local base_info = {
	group_id = 251014001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 36091090, pos = { x = 1.670, y = 9.202, z = 7.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, mark_flag = 1, isPartner = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360010, pos = { x = 0.000, y = 9.152, z = -0.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1004, gadget_id = 44000550, pos = { x = 7.341, y = 9.202, z = 4.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 44000456, pos = { x = 12.883, y = 9.202, z = 7.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 44000451, pos = { x = 14.328, y = 9.202, z = -4.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70800615, pos = { x = 3.806, y = 9.200, z = 9.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70360285, pos = { x = -7.335, y = 9.200, z = 8.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1002, shape = RegionShape.CUBIC, size = { x = 40.000, y = 10.000, z = 10.000 }, pos = { x = 0.000, y = 12.000, z = 22.722 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002" },
	{ config_id = 1001003, name = "SELECT_OPTION_1003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1003", action = "action_EVENT_SELECT_OPTION_1003", trigger_count = 0 }
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
		monsters = { 1005 },
		gadgets = { 1001, 1004, 1006, 1007, 1008, 1010 },
		regions = { 1002 },
		triggers = { "ENTER_REGION_1002", "SELECT_OPTION_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 删除指定操作台的option
function TLA_del_work_options_by_group_configid(context, evt, group_id, config_id, option_id)
	-- 删除指定group： group_id ；指定config：config_id；物件身上指定option：option_id；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	return 0
end

-- 刷新指定group至指定suite
function TLA_refresh_group_tosuite(context, evt, group_id, suite_id)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = group_id, suite = suite_id }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	return 0
end

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1002(context, evt)
	if evt.param1 ~= 1002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 251014001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1003(context, evt)
	-- 判断是gadgetid 1001 option_id 7
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1003(context, evt)
	ScriptLib.AutoMonsterTide(context, 1, 251014002, {2004,2005,2006,2007,2008,2010,2011,2012,2013,2014,2016,2017}, 12, 5, 5)
	
	TLA_del_work_options_by_group_configid(context, evt, 251014001, 1001, 7)
	
	TLA_set_gadget_state_by_configid(context, evt, 1001, GadgetState.GearStop)
	
	TLA_refresh_group_tosuite(context, evt, 251014003, 2)
	
	return 0
end