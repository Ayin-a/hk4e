-- 基础信息
local base_info = {
	group_id = 133307416
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133307416,
	gadget_sum = 3,
	challenge_id = 2012001,
	sandworm_region = 416008,
	attack_interval = 15,
	attack_times = 2,
	direct_sandworm_id = 416007
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
	{ config_id = 416001, gadget_id = 70290624, pos = { x = -1373.915, y = 44.853, z = 5165.636 }, rot = { x = 357.736, y = 178.941, z = 355.937 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 416002, gadget_id = 70350084, pos = { x = -1361.483, y = 49.593, z = 5149.171 }, rot = { x = 9.189, y = 333.173, z = 356.740 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 416003, gadget_id = 70211111, pos = { x = -1364.556, y = 49.945, z = 5148.686 }, rot = { x = 14.732, y = 18.610, z = 0.385 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 416004, gadget_id = 70360001, pos = { x = -1361.559, y = 49.970, z = 5149.383 }, rot = { x = 0.000, y = 321.914, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 416005, gadget_id = 70290624, pos = { x = -1366.791, y = 50.651, z = 5145.278 }, rot = { x = 357.105, y = 172.475, z = 358.579 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 416006, gadget_id = 70290624, pos = { x = -1345.609, y = 58.808, z = 5110.653 }, rot = { x = 348.377, y = 139.045, z = 9.194 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 416007, gadget_id = 70290628, pos = { x = -1355.586, y = 47.989, z = 5149.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	-- 沙虫区域
	{ config_id = 416008, shape = RegionShape.POLYGON, pos = { x = -1334.261, y = 53.474, z = 5146.362 }, height = 54.467, point_array = { { x = -1285.623, y = 5131.252 }, { x = -1320.197, y = 5112.790 }, { x = -1342.664, y = 5098.431 }, { x = -1351.652, y = 5108.344 }, { x = -1360.756, y = 5125.878 }, { x = -1367.995, y = 5131.754 }, { x = -1379.841, y = 5156.704 }, { x = -1382.900, y = 5180.872 }, { x = -1357.533, y = 5194.292 }, { x = -1340.707, y = 5191.670 }, { x = -1304.303, y = 5170.610 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 沙虫区域
	{ config_id = 1416008, name = "ENTER_REGION_416008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1416009, name = "CHALLENGE_SUCCESS_416009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_416009", trigger_count = 0 },
	{ config_id = 1416010, name = "CHALLENGE_FAIL_416010", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_416010", trigger_count = 0 },
	{ config_id = 1416011, name = "GADGET_STATE_CHANGE_416011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_416011", action = "action_EVENT_GADGET_STATE_CHANGE_416011", trigger_count = 0 },
	{ config_id = 1416012, name = "ANY_GADGET_DIE_416012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1416013, name = "GADGET_CREATE_416013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_416013", action = "action_EVENT_GADGET_CREATE_416013", trigger_count = 0 },
	{ config_id = 1416014, name = "SELECT_OPTION_416014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_416014", action = "action_EVENT_SELECT_OPTION_416014", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1416015, name = "GROUP_LOAD_416015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_416015", trigger_count = 0 }
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
		gadgets = { 416002, 416004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_416009", "CHALLENGE_FAIL_416010", "GADGET_STATE_CHANGE_416011", "ANY_GADGET_DIE_416012", "GADGET_CREATE_416013", "SELECT_OPTION_416014", "GROUP_LOAD_416015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 416001, 416005, 416006 },
		regions = { 416008 },
		triggers = { "ENTER_REGION_416008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 416002, 416003 },
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
function action_EVENT_CHALLENGE_SUCCESS_416009(context, evt)
	-- 将configid为 416002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 416004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307416, 3) then
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
function action_EVENT_CHALLENGE_FAIL_416010(context, evt)
	-- 将configid为 416002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307416, 2)
	
	-- 创建id为416004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 416004 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_416011(context, evt)
	if 416002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_416011(context, evt)
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
function condition_EVENT_GADGET_CREATE_416013(context, evt)
	if 416004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_416013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307416, 416004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_416014(context, evt)
	-- 判断是gadgetid 416004 option_id 177
	if 416004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_416014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 416004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 416002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	  --在主机玩家脚下召唤一只沙虫，并攻击若干次。可能失败
	  local uid = ScriptLib.GetSceneOwnerUid(context)
	  LF_Summon_Direct_Sandworm_By_Avatar(context,uid,2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_416015(context, evt)
	-- 将configid为 416002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 416002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307416, 2)
	
	-- 创建id为416004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 416004 }) then
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