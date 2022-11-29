-- 基础信息
local base_info = {
	group_id = 243001007
}

-- Trigger变量
local defs = {
	gadget_1 = 7001,
	gadget_2 = 7002,
	gadget_3 = 7003,
	gadget_4 = 7004,
	gadget_5 = 7005,
	gadget_6 = 7006,
	gadget_7 = 7007,
	gadget_8 = 7008,
	gadget_9 = 7009,
	gadget_10 = 7010,
	gadget_11 = 7011,
	gadget_12 = 7012,
	gadget_13 = 7013,
	gadget_14 = 7014,
	gadget_15 = 7015,
	gadget_16 = 7016,
	group_1 = 243001007,
	group_c1 = 243001008,
	group_c2 = 243001009,
	group_c3 = 243001010,
	group_c4 = 243001011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70360158, pos = { x = 99.856, y = 40.014, z = -1.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70360157, pos = { x = -3.933, y = 40.001, z = -80.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70360156, pos = { x = -3.018, y = 39.998, z = -50.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70360158, pos = { x = 76.156, y = 40.020, z = -28.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, gadget_id = 70360156, pos = { x = 99.856, y = 40.014, z = -1.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70360155, pos = { x = -3.932, y = 40.001, z = -80.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7007, gadget_id = 70360158, pos = { x = -3.018, y = 39.998, z = -50.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70360157, pos = { x = 76.156, y = 40.020, z = -28.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70360158, pos = { x = 99.856, y = 40.014, z = -1.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70360156, pos = { x = -3.932, y = 40.001, z = -80.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70360158, pos = { x = -3.018, y = 39.998, z = -50.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70360155, pos = { x = 76.156, y = 40.020, z = -28.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70360158, pos = { x = 99.856, y = 40.014, z = -1.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70360155, pos = { x = -3.932, y = 40.001, z = -80.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70360156, pos = { x = -3.018, y = 39.998, z = -50.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, gadget_id = 70360158, pos = { x = 76.156, y = 40.020, z = -28.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7053, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 47.230, z = 11.808 } },
	{ config_id = 7054, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 47.230, z = 11.808 } },
	{ config_id = 7055, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 47.230, z = 11.808 } },
	{ config_id = 7056, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 47.230, z = 11.808 } }
}

-- 触发器
triggers = {
	{ config_id = 1007017, name = "GADGET_CREATE_7017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_7017" },
	{ config_id = 1007018, name = "GADGET_CREATE_7018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_7018" },
	{ config_id = 1007019, name = "GADGET_CREATE_7019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_7019" },
	{ config_id = 1007020, name = "GADGET_CREATE_7020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_7020" },
	{ config_id = 1007021, name = "SELECT_OPTION_7021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7021", action = "action_EVENT_SELECT_OPTION_7021", trigger_count = 0 },
	{ config_id = 1007022, name = "SELECT_OPTION_7022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7022", action = "action_EVENT_SELECT_OPTION_7022", trigger_count = 0 },
	{ config_id = 1007023, name = "SELECT_OPTION_7023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7023", action = "action_EVENT_SELECT_OPTION_7023", trigger_count = 0 },
	{ config_id = 1007024, name = "SELECT_OPTION_7024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7024", action = "action_EVENT_SELECT_OPTION_7024", trigger_count = 0 },
	{ config_id = 1007025, name = "SELECT_OPTION_7025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7025", action = "action_EVENT_SELECT_OPTION_7025", trigger_count = 0 },
	{ config_id = 1007026, name = "SELECT_OPTION_7026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7026", action = "action_EVENT_SELECT_OPTION_7026", trigger_count = 0 },
	{ config_id = 1007027, name = "SELECT_OPTION_7027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7027", action = "action_EVENT_SELECT_OPTION_7027", trigger_count = 0 },
	{ config_id = 1007028, name = "SELECT_OPTION_7028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7028", action = "action_EVENT_SELECT_OPTION_7028", trigger_count = 0 },
	{ config_id = 1007029, name = "SELECT_OPTION_7029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7029", action = "action_EVENT_SELECT_OPTION_7029", trigger_count = 0 },
	{ config_id = 1007030, name = "SELECT_OPTION_7030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7030", action = "action_EVENT_SELECT_OPTION_7030", trigger_count = 0 },
	{ config_id = 1007031, name = "SELECT_OPTION_7031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7031", action = "action_EVENT_SELECT_OPTION_7031", trigger_count = 0 },
	{ config_id = 1007032, name = "SELECT_OPTION_7032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7032", action = "action_EVENT_SELECT_OPTION_7032", trigger_count = 0 },
	{ config_id = 1007033, name = "SELECT_OPTION_7033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7033", action = "action_EVENT_SELECT_OPTION_7033", trigger_count = 0 },
	{ config_id = 1007034, name = "SELECT_OPTION_7034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7034", action = "action_EVENT_SELECT_OPTION_7034", trigger_count = 0 },
	{ config_id = 1007035, name = "SELECT_OPTION_7035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7035", action = "action_EVENT_SELECT_OPTION_7035", trigger_count = 0 },
	{ config_id = 1007036, name = "SELECT_OPTION_7036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7036", action = "action_EVENT_SELECT_OPTION_7036", trigger_count = 0 },
	{ config_id = 1007037, name = "VARIABLE_CHANGE_7037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7037", action = "action_EVENT_VARIABLE_CHANGE_7037", trigger_count = 0 },
	{ config_id = 1007038, name = "VARIABLE_CHANGE_7038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7038", action = "action_EVENT_VARIABLE_CHANGE_7038", trigger_count = 0 },
	{ config_id = 1007039, name = "VARIABLE_CHANGE_7039", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7039", action = "action_EVENT_VARIABLE_CHANGE_7039", trigger_count = 0 },
	{ config_id = 1007040, name = "VARIABLE_CHANGE_7040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7040", action = "action_EVENT_VARIABLE_CHANGE_7040", trigger_count = 0 },
	{ config_id = 1007041, name = "VARIABLE_CHANGE_7041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7041", action = "action_EVENT_VARIABLE_CHANGE_7041", trigger_count = 0 },
	{ config_id = 1007042, name = "VARIABLE_CHANGE_7042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7042", action = "action_EVENT_VARIABLE_CHANGE_7042", trigger_count = 0 },
	{ config_id = 1007043, name = "VARIABLE_CHANGE_7043", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7043", action = "action_EVENT_VARIABLE_CHANGE_7043", trigger_count = 0 },
	{ config_id = 1007044, name = "VARIABLE_CHANGE_7044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7044", action = "action_EVENT_VARIABLE_CHANGE_7044", trigger_count = 0 },
	{ config_id = 1007045, name = "VARIABLE_CHANGE_7045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7045", action = "action_EVENT_VARIABLE_CHANGE_7045", trigger_count = 0 },
	{ config_id = 1007046, name = "VARIABLE_CHANGE_7046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7046", action = "action_EVENT_VARIABLE_CHANGE_7046", trigger_count = 0 },
	{ config_id = 1007047, name = "VARIABLE_CHANGE_7047", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7047", action = "action_EVENT_VARIABLE_CHANGE_7047", trigger_count = 0 },
	{ config_id = 1007048, name = "VARIABLE_CHANGE_7048", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7048", action = "action_EVENT_VARIABLE_CHANGE_7048", trigger_count = 0 },
	{ config_id = 1007049, name = "VARIABLE_CHANGE_7049", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7049", action = "action_EVENT_VARIABLE_CHANGE_7049", trigger_count = 0 },
	{ config_id = 1007050, name = "VARIABLE_CHANGE_7050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7050", action = "action_EVENT_VARIABLE_CHANGE_7050", trigger_count = 0 },
	{ config_id = 1007051, name = "VARIABLE_CHANGE_7051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7051", action = "action_EVENT_VARIABLE_CHANGE_7051", trigger_count = 0 },
	{ config_id = 1007052, name = "VARIABLE_CHANGE_7052", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7052", action = "action_EVENT_VARIABLE_CHANGE_7052", trigger_count = 0 },
	{ config_id = 1007053, name = "ENTER_REGION_7053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7053", action = "action_EVENT_ENTER_REGION_7053" },
	{ config_id = 1007054, name = "ENTER_REGION_7054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7054", action = "action_EVENT_ENTER_REGION_7054" },
	{ config_id = 1007055, name = "ENTER_REGION_7055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7055", action = "action_EVENT_ENTER_REGION_7055" },
	{ config_id = 1007056, name = "ENTER_REGION_7056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7056", action = "action_EVENT_ENTER_REGION_7056" }
}

-- 变量
variables = {
	{ config_id = 1, name = "f1", value = 0, no_refresh = false },
	{ config_id = 2, name = "f2", value = 0, no_refresh = false },
	{ config_id = 3, name = "f3", value = 0, no_refresh = false },
	{ config_id = 4, name = "f4", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 7001, 7002, 7003, 7004 },
		regions = { 7053 },
		triggers = { "SELECT_OPTION_7021", "SELECT_OPTION_7022", "SELECT_OPTION_7023", "SELECT_OPTION_7024", "VARIABLE_CHANGE_7037", "VARIABLE_CHANGE_7038", "VARIABLE_CHANGE_7039", "VARIABLE_CHANGE_7040", "ENTER_REGION_7053" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7005, 7006, 7007, 7008 },
		regions = { 7054 },
		triggers = { "SELECT_OPTION_7025", "SELECT_OPTION_7026", "SELECT_OPTION_7027", "SELECT_OPTION_7028", "VARIABLE_CHANGE_7041", "VARIABLE_CHANGE_7042", "VARIABLE_CHANGE_7043", "VARIABLE_CHANGE_7044", "ENTER_REGION_7054" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7009, 7010, 7011, 7012 },
		regions = { 7055 },
		triggers = { "SELECT_OPTION_7029", "SELECT_OPTION_7030", "SELECT_OPTION_7031", "SELECT_OPTION_7032", "VARIABLE_CHANGE_7045", "VARIABLE_CHANGE_7046", "VARIABLE_CHANGE_7047", "VARIABLE_CHANGE_7048", "ENTER_REGION_7055" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7013, 7014, 7015, 7016 },
		regions = { 7056 },
		triggers = { "SELECT_OPTION_7033", "SELECT_OPTION_7034", "SELECT_OPTION_7035", "SELECT_OPTION_7036", "VARIABLE_CHANGE_7049", "VARIABLE_CHANGE_7050", "VARIABLE_CHANGE_7051", "VARIABLE_CHANGE_7052", "ENTER_REGION_7056" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_CREATE_7017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_9, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_10, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_11, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_12, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	  ScriptLib.PrintContextLog(context, "切到了suite3!!!!!!!!")
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_2, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_3, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_4, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	  ScriptLib.PrintContextLog(context, "切到了suite1!!!!!!!!")
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_5, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_6, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_7, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_8, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	  ScriptLib.PrintContextLog(context, "切到了suite2!!!!!!!!")
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget13, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_14, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_15, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_16, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	  ScriptLib.PrintContextLog(context, "切到了suite4!!!!!!!!")
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7021(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	ScriptLib.PrintContextLog(context, "condition测试"..evt.param1)
	
	if defs.gadget_1 ~= evt.param1 then
		return false	
	end
	ScriptLib.PrintContextLog(context, "condition测试"..evt.param2)
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c1, is_force_random_suite = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	-- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7022(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	ScriptLib.PrintContextLog(context, "condition测试"..evt.param1)
	if defs.gadget_2 ~= evt.param1 then
		return false	
	end
	
	ScriptLib.PrintContextLog(context, "condition测试"..evt.param2)
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c2, is_force_random_suite = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	-- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_2, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7023(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_3 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c3, is_force_random_suite = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	-- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_3, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
	
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7024(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	
	if defs.gadget_4 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c4, is_force_random_suite = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	-- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_4, 177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7025(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_5 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c1, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_5, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_5, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7026(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_6 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c2, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_6, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_6, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7027(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_7 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c3, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_7, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_7, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7028(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_8 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c4, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_8, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_8, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7029(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_9 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7029(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c1, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_9, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_9, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7030(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_10 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c2, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_10, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_10, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7031(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_11 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c3, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_11, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_11, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7032(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_12 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c4, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_12, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_12, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7033(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_13 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c1, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_13, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_13, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7034(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_14 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7034(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c2, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_14, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_14, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7035(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_15 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7035(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c3, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_15, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_15, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7036(context, evt)
	-- 判断是gadgetid 7001 option_id 177
	if defs.gadget_16 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7036(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_c4, is_force_random_suite = true }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	            return -1
	        end
	    
	    
	    -- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	    if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_16, 177) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	    end
	    
	    -- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_16, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	        end 
	    return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f1"为1
	if ScriptLib.GetGroupVariableValue(context, "f1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7037(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f2"为1
	if ScriptLib.GetGroupVariableValue(context, "f2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7038(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_2, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f3"为1
	if ScriptLib.GetGroupVariableValue(context, "f3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7039(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_3, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f4"为1
	if ScriptLib.GetGroupVariableValue(context, "f4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7040(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_4, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f4", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f1"为1
	if ScriptLib.GetGroupVariableValue(context, "f1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7041(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_5, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_5, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f2"为1
	if ScriptLib.GetGroupVariableValue(context, "f2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7042(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_6, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_6, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f3"为1
	if ScriptLib.GetGroupVariableValue(context, "f3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7043(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_7, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_7, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f4"为1
	if ScriptLib.GetGroupVariableValue(context, "f4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7044(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_8, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_8, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f4", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f1"为1
	if ScriptLib.GetGroupVariableValue(context, "f1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7045(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_9, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_9, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f2"为1
	if ScriptLib.GetGroupVariableValue(context, "f2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7046(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_10, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_10, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f3"为1
	if ScriptLib.GetGroupVariableValue(context, "f3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7047(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_11, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_11, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f4"为1
	if ScriptLib.GetGroupVariableValue(context, "f4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7048(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_12, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_12, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f4", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f1"为1
	if ScriptLib.GetGroupVariableValue(context, "f1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7049(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_13, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_13, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f2"为1
	if ScriptLib.GetGroupVariableValue(context, "f2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7050(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_14, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_14, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f3"为1
	if ScriptLib.GetGroupVariableValue(context, "f3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7051(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_15, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_15, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7052(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"f4"为1
	if ScriptLib.GetGroupVariableValue(context, "f4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7052(context, evt)
	-- 将configid为 7001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_16, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_16, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 变量"f1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "f4", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7053(context, evt)
	if evt.param1 ~= 7053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7053(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_2, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_3, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_4, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Gflag" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 4, defs.group_c1) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		  
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 3, defs.group_c2) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 2, defs.group_c3) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 7, defs.group_c4) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
	
	  ScriptLib.PrintContextLog(context, "切到了suite1!!!!!!!!")
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7054(context, evt)
	if evt.param1 ~= 7054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7054(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_5, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_6, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_7, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_8, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Gflag" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 2, defs.group_c1) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		  
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 1, defs.group_c2) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 4, defs.group_c3) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 3, defs.group_c4) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
	
	  ScriptLib.PrintContextLog(context, "切到了suite2!!!!!!!!")
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7055(context, evt)
	if evt.param1 ~= 7055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7055(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_9, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_10, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_11, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_12, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Gflag" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 4, defs.group_c1) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		  
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 2, defs.group_c2) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 7, defs.group_c3) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 1, defs.group_c4) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
	
	  ScriptLib.PrintContextLog(context, "切到了suite3!!!!!!!!")
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7056(context, evt)
	if evt.param1 ~= 7056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7056(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_13, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_14, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_15, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_16, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "Gflag" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 4, defs.group_c1) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		  
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 1, defs.group_c2) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 2, defs.group_c3) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Gflag", 7, defs.group_c4) then
		    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		    return -1
		end
	
	  ScriptLib.PrintContextLog(context, "切到了suite4!!!!!!!!")
	return 0
end