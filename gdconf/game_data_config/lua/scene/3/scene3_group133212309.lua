-- 基础信息
local base_info = {
	group_id = 133212309
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133212309
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
	{ config_id = 309001, gadget_id = 70211111, pos = { x = -4006.100, y = 248.117, z = -2432.897 }, rot = { x = 4.005, y = 168.703, z = 356.325 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 309002, gadget_id = 70350093, pos = { x = -4003.044, y = 247.524, z = -2438.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 309003, gadget_id = 70360001, pos = { x = -4003.044, y = 247.523, z = -2438.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 309005, gadget_id = 70900380, pos = { x = -4008.123, y = 259.158, z = -2438.986 }, rot = { x = 0.000, y = 204.827, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309006, gadget_id = 70900380, pos = { x = -3999.152, y = 261.127, z = -2442.096 }, rot = { x = 0.000, y = 204.827, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309022, gadget_id = 70330064, pos = { x = -4017.998, y = 257.236, z = -2427.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 309037, gadget_id = 70290150, pos = { x = -4013.290, y = 258.912, z = -2433.854 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309038, gadget_id = 70290150, pos = { x = -3994.517, y = 261.909, z = -2443.804 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309039, gadget_id = 70290150, pos = { x = -4000.531, y = 256.334, z = -2425.853 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309040, gadget_id = 70290150, pos = { x = -4001.005, y = 250.226, z = -2430.342 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309041, gadget_id = 70290150, pos = { x = -4017.047, y = 258.233, z = -2425.817 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309042, gadget_id = 70290150, pos = { x = -4003.093, y = 259.897, z = -2440.525 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309043, gadget_id = 70290150, pos = { x = -4008.506, y = 258.691, z = -2424.422 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 309044, gadget_id = 70290150, pos = { x = -4002.826, y = 252.955, z = -2438.625 }, rot = { x = 0.000, y = 32.762, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1309004, name = "GROUP_LOAD_309004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_309004", action = "action_EVENT_GROUP_LOAD_309004", trigger_count = 0 },
	{ config_id = 1309023, name = "CHALLENGE_SUCCESS_309023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_309023" },
	{ config_id = 1309024, name = "CHALLENGE_FAIL_309024", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_309024", trigger_count = 0 },
	{ config_id = 1309025, name = "GADGET_STATE_CHANGE_309025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_309025", action = "action_EVENT_GADGET_STATE_CHANGE_309025", trigger_count = 0 },
	{ config_id = 1309026, name = "ANY_GADGET_DIE_309026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "247" },
	{ config_id = 1309027, name = "GADGET_CREATE_309027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_309027", action = "action_EVENT_GADGET_CREATE_309027", trigger_count = 0 },
	{ config_id = 1309028, name = "SELECT_OPTION_309028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_309028", action = "action_EVENT_SELECT_OPTION_309028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 309002, 309003, 309022 },
		regions = { },
		triggers = { "GROUP_LOAD_309004", "CHALLENGE_SUCCESS_309023", "CHALLENGE_FAIL_309024", "GADGET_STATE_CHANGE_309025", "ANY_GADGET_DIE_309026", "GADGET_CREATE_309027", "SELECT_OPTION_309028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 309005, 309006, 309037, 309038, 309039, 309040, 309041, 309042, 309043, 309044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 309002 },
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
function condition_EVENT_GROUP_LOAD_309004(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 133212309) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_309004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212309, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_309023(context, evt)
	-- 将configid为 309002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133212309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212309, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为309001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_309024(context, evt)
	-- 将configid为 309002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为309003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 309003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212309, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_309025(context, evt)
	if 309002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_309025(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 247, 8) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_309027(context, evt)
	if 309003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_309027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212309, 309003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_309028(context, evt)
	-- 判断是gadgetid 309003 option_id 177
	if 309003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_309028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 309003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 309002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 309002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"