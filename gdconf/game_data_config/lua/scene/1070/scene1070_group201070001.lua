-- 基础信息
local base_info = {
	group_id = 201070001
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
	{ config_id = 1001, gadget_id = 70360010, pos = { x = 0.018, y = -0.153, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 184, 185, 186, 10, 11 } } },
	{ config_id = 1016, gadget_id = 70900205, pos = { x = 0.018, y = -1.221, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "SELECT_OPTION_1002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1002", action = "action_EVENT_SELECT_OPTION_1002" },
	{ config_id = 1001003, name = "SELECT_OPTION_1003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1003", action = "action_EVENT_SELECT_OPTION_1003" },
	{ config_id = 1001010, name = "ANY_MONSTER_LIVE_1010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1010", action = "action_EVENT_ANY_MONSTER_LIVE_1010" },
	{ config_id = 1001013, name = "CHALLENGE_SUCCESS_1013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1013" },
	{ config_id = 1001014, name = "CHALLENGE_FAIL_1014", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1014" },
	{ config_id = 1001044, name = "SELECT_OPTION_1044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1044", action = "action_EVENT_SELECT_OPTION_1044" },
	{ config_id = 1001045, name = "SELECT_OPTION_1045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1045", action = "action_EVENT_SELECT_OPTION_1045" },
	{ config_id = 1001046, name = "SELECT_OPTION_1046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1046", action = "action_EVENT_SELECT_OPTION_1046" }
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
	suite = 7,
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
		gadgets = { 1001, 1016 },
		regions = { },
		triggers = { "SELECT_OPTION_1002", "SELECT_OPTION_1003", "ANY_MONSTER_LIVE_1010", "CHALLENGE_SUCCESS_1013", "CHALLENGE_FAIL_1014", "SELECT_OPTION_1044", "SELECT_OPTION_1045", "SELECT_OPTION_1046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_1002(context, evt)
	-- 判断是gadgetid 1001 option_id 184
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1002(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1003(context, evt)
	-- 判断是gadgetid 1001 option_id 185
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1003(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1010(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1010(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为166的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 166, 180, 201070001, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201070001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201070001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1044(context, evt)
	-- 判断是gadgetid 1001 option_id 186
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1044(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1045(context, evt)
	-- 判断是gadgetid 1001 option_id 10
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 10 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1045(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1046(context, evt)
	-- 判断是gadgetid 1001 option_id 11
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 11 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1046(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：10；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070001 ；指定config：1001；物件身上指定option：11；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070001, 1001, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070001, 6)
	
	return 0
end