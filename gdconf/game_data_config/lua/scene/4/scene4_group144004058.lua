-- 基础信息
local base_info = {
	group_id = 144004058
}

-- Trigger变量
local defs = {
	duration = 25,
	group_id = 144004058,
	gadget_sum = 6
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
	{ config_id = 58001, gadget_id = 70950087, pos = { x = -432.842, y = 120.000, z = -869.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58002, gadget_id = 70350250, pos = { x = -424.587, y = 120.000, z = -846.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58003, gadget_id = 70210105, pos = { x = -387.753, y = 120.000, z = -907.104 }, rot = { x = 0.000, y = 326.931, z = 0.000 }, level = 26, chest_drop_id = 1002000, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 58004, gadget_id = 70220072, pos = { x = -426.886, y = 120.000, z = -889.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58005, gadget_id = 70360001, pos = { x = -424.578, y = 120.000, z = -846.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58006, gadget_id = 70220072, pos = { x = -410.282, y = 120.000, z = -897.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58007, gadget_id = 70950087, pos = { x = -382.579, y = 120.000, z = -904.120 }, rot = { x = 0.000, y = 59.990, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58008, gadget_id = 70220072, pos = { x = -393.387, y = 120.000, z = -904.326 }, rot = { x = 0.000, y = 59.990, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58009, gadget_id = 70950087, pos = { x = -386.929, y = 120.000, z = -913.357 }, rot = { x = 0.000, y = 59.990, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 58019, gadget_id = 70290056, pos = { x = -416.883, y = 120.000, z = -880.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 58020, gadget_id = 70290056, pos = { x = -436.470, y = 120.000, z = -880.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 58021, gadget_id = 70290056, pos = { x = -418.937, y = 120.000, z = -901.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 58022, gadget_id = 70290056, pos = { x = -388.154, y = 120.000, z = -906.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058010, name = "CHALLENGE_SUCCESS_58010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_58010" },
	{ config_id = 1058011, name = "CHALLENGE_FAIL_58011", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_58011", trigger_count = 0 },
	{ config_id = 1058012, name = "GADGET_STATE_CHANGE_58012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58012", action = "action_EVENT_GADGET_STATE_CHANGE_58012", trigger_count = 0 },
	{ config_id = 1058013, name = "ANY_GADGET_DIE_58013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1058014, name = "GADGET_CREATE_58014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58014", action = "action_EVENT_GADGET_CREATE_58014", trigger_count = 0 },
	{ config_id = 1058015, name = "SELECT_OPTION_58015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58015", action = "action_EVENT_SELECT_OPTION_58015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 58016, gadget_id = 70290061, pos = { x = -381.490, y = 120.000, z = -901.091 }, rot = { x = 0.000, y = 52.581, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 58017, gadget_id = 70290061, pos = { x = -394.301, y = 120.000, z = -902.876 }, rot = { x = 0.000, y = 108.667, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 58018, gadget_id = 70290061, pos = { x = -388.300, y = 120.000, z = -915.121 }, rot = { x = 0.000, y = 354.972, z = 0.000 }, level = 1, area_id = 100 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 58002, 58005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_58010", "CHALLENGE_FAIL_58011", "GADGET_STATE_CHANGE_58012", "ANY_GADGET_DIE_58013", "GADGET_CREATE_58014", "SELECT_OPTION_58015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 58001, 58004, 58006, 58007, 58008, 58009, 58019, 58020, 58021, 58022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 58002, 58003 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_58010(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 58005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004058, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144004058, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_58011(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为58005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004058, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58012(context, evt)
	if 58002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58012(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 201, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58014(context, evt)
	if 58005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004058, 58005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58015(context, evt)
	-- 判断是gadgetid 58005 option_id 177
	if 58005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 58005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end