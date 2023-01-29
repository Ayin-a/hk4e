-- 基础信息
local base_info = {
	group_id = 133314133
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133314133,
	gadget_sum = 5,
	challenge_id = 2012001,
	sandworm_region = 120008,
	attack_interval = 15,
	attack_times = 2,
	direct_sandworm_id = 133019
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
	{ config_id = 133001, gadget_id = 70290624, pos = { x = -899.328, y = 158.852, z = 4328.871 }, rot = { x = 0.000, y = 174.850, z = 0.000 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 133002, gadget_id = 70350084, pos = { x = -886.761, y = 160.584, z = 4308.365 }, rot = { x = 3.061, y = 352.507, z = 348.146 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 133003, gadget_id = 70211111, pos = { x = -1013.304, y = 181.151, z = 4362.975 }, rot = { x = 11.341, y = 71.573, z = 8.118 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 133004, gadget_id = 70290624, pos = { x = -920.814, y = 155.419, z = 4350.184 }, rot = { x = 341.723, y = 232.077, z = 346.802 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 133005, gadget_id = 70360001, pos = { x = -886.788, y = 160.587, z = 4308.403 }, rot = { x = 7.309, y = 351.417, z = 345.609 }, level = 2, persistent = true, area_id = 32 },
	{ config_id = 133013, gadget_id = 70290624, pos = { x = -954.382, y = 165.513, z = 4359.573 }, rot = { x = 349.415, y = 151.890, z = 7.984 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 133014, gadget_id = 70290624, pos = { x = -986.806, y = 165.685, z = 4375.605 }, rot = { x = 346.296, y = 213.573, z = 346.187 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 133015, gadget_id = 70290624, pos = { x = -1016.694, y = 181.833, z = 4364.318 }, rot = { x = 0.000, y = 354.607, z = 335.148 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 133016, gadget_id = 70220103, pos = { x = -982.689, y = 167.133, z = 4374.584 }, rot = { x = 0.000, y = 354.607, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 133017, gadget_id = 70220103, pos = { x = -1015.224, y = 183.547, z = 4365.173 }, rot = { x = 0.000, y = 354.607, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 133019, gadget_id = 70290628, pos = { x = -992.196, y = 168.842, z = 4373.796 }, rot = { x = 0.000, y = 354.607, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 133020, gadget_id = 70220103, pos = { x = -952.329, y = 166.195, z = 4357.207 }, rot = { x = 0.000, y = 354.607, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 133018, shape = RegionShape.POLYGON, pos = { x = -945.516, y = 156.996, z = 4344.314 }, height = 102.707, point_array = { { x = -1023.800, y = 4352.809 }, { x = -982.751, y = 4336.064 }, { x = -960.414, y = 4329.880 }, { x = -905.486, y = 4314.736 }, { x = -867.232, y = 4289.200 }, { x = -876.539, y = 4331.113 }, { x = -924.941, y = 4369.904 }, { x = -993.678, y = 4399.429 }, { x = -1023.114, y = 4389.485 } }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1133006, name = "CHALLENGE_SUCCESS_133006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_133006", trigger_count = 0 },
	{ config_id = 1133007, name = "CHALLENGE_FAIL_133007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_133007", trigger_count = 0 },
	{ config_id = 1133008, name = "GADGET_STATE_CHANGE_133008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133008", action = "action_EVENT_GADGET_STATE_CHANGE_133008", trigger_count = 0 },
	{ config_id = 1133009, name = "ANY_GADGET_DIE_133009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1133010, name = "GADGET_CREATE_133010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_133010", action = "action_EVENT_GADGET_CREATE_133010", trigger_count = 0 },
	{ config_id = 1133011, name = "SELECT_OPTION_133011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133011", action = "action_EVENT_SELECT_OPTION_133011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1133012, name = "GROUP_LOAD_133012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_133012", trigger_count = 0 },
	{ config_id = 1133018, name = "ENTER_REGION_133018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 133002, 133005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_133006", "CHALLENGE_FAIL_133007", "GADGET_STATE_CHANGE_133008", "ANY_GADGET_DIE_133009", "GADGET_CREATE_133010", "SELECT_OPTION_133011", "GROUP_LOAD_133012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133001, 133004, 133013, 133014, 133015, 133016, 133017, 133020 },
		regions = { 133018 },
		triggers = { "ENTER_REGION_133018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 133002, 133003, 133016, 133017, 133020 },
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
function action_EVENT_CHALLENGE_SUCCESS_133006(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314133, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_133007(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314133, 2)
	
	-- 创建id为133005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133005 }) then
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
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_133008(context, evt)
	if 133002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 2012001, defs.duration, 2, 201, defs.gadget_sum) then
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
function condition_EVENT_GADGET_CREATE_133010(context, evt)
	if 133005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_133010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314133, 133005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_133011(context, evt)
	-- 判断是gadgetid 133005 option_id 177
	if 133005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_133011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	  --在主机玩家脚下召唤一只沙虫，并攻击若干次。可能失败
	  local uid = ScriptLib.GetSceneOwnerUid(context)
	  LF_Summon_Direct_Sandworm_By_Avatar(context,uid,2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133012(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314133, 2)
	
	-- 创建id为133005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133005 }) then
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
	
	return 0
end

require "V3_4/SandwormChallengeControl"
require "V3_4/SandwormToolkit"