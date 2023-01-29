-- 基础信息
local base_info = {
	group_id = 133314311
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133314311,
	gadget_sum = 3,
	challenge_id = 2012001,
	sandworm_region = 311008,
	attack_interval = 15,
	attack_times = 2,
	direct_sandworm_id = 105015
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
	{ config_id = 311001, gadget_id = 70290624, pos = { x = -701.048, y = 89.317, z = 4559.706 }, rot = { x = 0.000, y = 179.471, z = 10.286 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 311002, gadget_id = 70350084, pos = { x = -713.122, y = 85.509, z = 4554.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 311003, gadget_id = 70211111, pos = { x = -741.357, y = 77.658, z = 4553.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 311004, gadget_id = 70360001, pos = { x = -713.113, y = 86.474, z = 4554.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 311005, gadget_id = 70290624, pos = { x = -721.508, y = 81.653, z = 4576.133 }, rot = { x = 0.000, y = 0.000, z = 9.639 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 311006, gadget_id = 70290624, pos = { x = -734.457, y = 80.091, z = 4550.894 }, rot = { x = 0.000, y = 30.885, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 311007, gadget_id = 70290628, pos = { x = -738.373, y = 75.367, z = 4554.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	-- 沙虫区域
	{ config_id = 311008, shape = RegionShape.POLYGON, pos = { x = -599.683, y = 95.186, z = 4563.082 }, height = 68.735, point_array = { { x = -535.094, y = 4585.438 }, { x = -549.246, y = 4551.025 }, { x = -568.215, y = 4529.881 }, { x = -593.472, y = 4524.925 }, { x = -618.070, y = 4525.295 }, { x = -664.272, y = 4555.202 }, { x = -623.400, y = 4573.491 }, { x = -610.802, y = 4593.163 }, { x = -584.906, y = 4601.238 }, { x = -567.231, y = 4588.464 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 沙虫区域
	{ config_id = 1311008, name = "ENTER_REGION_311008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1311009, name = "CHALLENGE_SUCCESS_311009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_311009", trigger_count = 0 },
	{ config_id = 1311010, name = "CHALLENGE_FAIL_311010", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_311010", trigger_count = 0 },
	{ config_id = 1311011, name = "GADGET_STATE_CHANGE_311011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311011", action = "action_EVENT_GADGET_STATE_CHANGE_311011", trigger_count = 0 },
	{ config_id = 1311012, name = "ANY_GADGET_DIE_311012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1311013, name = "GADGET_CREATE_311013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_311013", action = "action_EVENT_GADGET_CREATE_311013", trigger_count = 0 },
	{ config_id = 1311014, name = "SELECT_OPTION_311014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_311014", action = "action_EVENT_SELECT_OPTION_311014", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1311015, name = "GROUP_LOAD_311015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_311015", trigger_count = 0 }
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
		gadgets = { 311002, 311004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_311009", "CHALLENGE_FAIL_311010", "GADGET_STATE_CHANGE_311011", "ANY_GADGET_DIE_311012", "GADGET_CREATE_311013", "SELECT_OPTION_311014", "GROUP_LOAD_311015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 311001, 311005, 311006 },
		regions = { 311008 },
		triggers = { "ENTER_REGION_311008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 311002, 311003 },
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
function action_EVENT_CHALLENGE_SUCCESS_311009(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133314311, 3) then
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
function action_EVENT_CHALLENGE_FAIL_311010(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314311, 2)
	
	-- 创建id为311004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311004 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_311011(context, evt)
	if 311002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311011(context, evt)
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
function condition_EVENT_GADGET_CREATE_311013(context, evt)
	if 311004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_311013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314311, 311004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_311014(context, evt)
	-- 判断是gadgetid 311004 option_id 177
	if 311004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_311014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 311004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 311002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	  --在主机玩家脚下召唤一只沙虫，并攻击若干次。可能失败
	  local uid = ScriptLib.GetSceneOwnerUid(context)
	  LF_Summon_Direct_Sandworm_By_Avatar(context,uid,2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_311015(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314311, 2)
	
	-- 创建id为311004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311004 }) then
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