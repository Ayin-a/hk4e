-- 基础信息
local base_info = {
	group_id = 240046001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1009, monster_id = 25090103, pos = { x = -4.910, y = 0.046, z = -11.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5020, 5014 } },
	{ config_id = 1010, monster_id = 25090102, pos = { x = 4.746, y = 0.046, z = -12.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5016, 5014 }, pose_id = 1 },
	{ config_id = 1011, monster_id = 25090103, pos = { x = -5.048, y = 0.046, z = -11.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5022 } },
	{ config_id = 1012, monster_id = 25090102, pos = { x = 4.924, y = 0.046, z = -11.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5018 }, pose_id = 1 },
	{ config_id = 1013, monster_id = 25090102, pos = { x = 4.879, y = 0.046, z = -12.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5029, 5018 }, pose_id = 1 },
	{ config_id = 1014, monster_id = 25090102, pos = { x = 5.202, y = 0.046, z = -12.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5018 }, pose_id = 1 },
	{ config_id = 1015, monster_id = 25090103, pos = { x = -5.032, y = 0.046, z = -12.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5029, 5022 } },
	{ config_id = 1016, monster_id = 25090103, pos = { x = -5.259, y = 0.046, z = -11.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014, 5022 } },
	{ config_id = 1017, monster_id = 25090104, pos = { x = -0.003, y = 0.046, z = -12.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, affix = { 5014 }, pose_id = 1 },
	{ config_id = 1020, monster_id = 25090101, pos = { x = -0.110, y = 0.046, z = -12.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350077, pos = { x = 0.000, y = 0.000, z = 24.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350077, pos = { x = 0.000, y = 0.000, z = -24.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70360010, pos = { x = 0.000, y = 0.134, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "GADGET_CREATE_1004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1004", action = "action_EVENT_GADGET_CREATE_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "SELECT_OPTION_1006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1006", action = "action_EVENT_SELECT_OPTION_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "SELECT_OPTION_1007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1007", action = "action_EVENT_SELECT_OPTION_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "SELECT_OPTION_1008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1008", action = "action_EVENT_SELECT_OPTION_1008", trigger_count = 0 },
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018", trigger_count = 0 },
	{ config_id = 1001019, name = "SELECT_OPTION_1019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1019", action = "action_EVENT_SELECT_OPTION_1019", trigger_count = 0 }
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
		gadgets = { 1001, 1002, 1003 },
		regions = { },
		triggers = { "GADGET_CREATE_1004", "SELECT_OPTION_1005", "SELECT_OPTION_1006", "SELECT_OPTION_1007", "SELECT_OPTION_1008", "SELECT_OPTION_1019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1009, 1010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1011, 1012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1013, 1015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1014, 1016, 1017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1004(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240046001, 1003, {184,185,186,12,11}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1005(context, evt)
	-- 判断是gadgetid 1003 option_id 184
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240046001, 2)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1006(context, evt)
	-- 判断是gadgetid 1003 option_id 185
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240046001, 3)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1007(context, evt)
	-- 判断是gadgetid 1003 option_id 186
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240046001, 4)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1008(context, evt)
	-- 判断是gadgetid 1003 option_id 12
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 12 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1008(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240046001, 5)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240046001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1019(context, evt)
	-- 判断是gadgetid 1003 option_id 11
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 11 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1019(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240046001, 6)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240046001 ；指定config：1003；物件身上指定option：12；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240046001, 1003, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end