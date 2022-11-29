-- 基础信息
local base_info = {
	group_id = 133303040
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133303040,
	gadget_sum = 9
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
	[40001] = { config_id = 40001, gadget_id = 70290437, pos = { x = -1326.427, y = 191.986, z = 3492.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40002] = { config_id = 40002, gadget_id = 70290437, pos = { x = -1326.542, y = 192.180, z = 3482.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	[40003] = { config_id = 40003, gadget_id = 70211101, pos = { x = -1328.706, y = 193.480, z = 3484.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[40004] = { config_id = 40004, gadget_id = 70290437, pos = { x = -1318.890, y = 190.284, z = 3489.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40013] = { config_id = 40013, gadget_id = 70290437, pos = { x = -1316.209, y = 189.393, z = 3482.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40014] = { config_id = 40014, gadget_id = 70290437, pos = { x = -1318.733, y = 186.533, z = 3475.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40015] = { config_id = 40015, gadget_id = 70290437, pos = { x = -1326.490, y = 187.215, z = 3472.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40016] = { config_id = 40016, gadget_id = 70290437, pos = { x = -1334.024, y = 186.581, z = 3475.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40017] = { config_id = 40017, gadget_id = 70290437, pos = { x = -1336.623, y = 189.163, z = 3482.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[40018] = { config_id = 40018, gadget_id = 70290437, pos = { x = -1333.776, y = 189.831, z = 3489.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 水泡晴天后挑战失败
	{ config_id = 1040005, name = "GADGET_STATE_CHANGE_40005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40005", action = "action_EVENT_GADGET_STATE_CHANGE_40005", trigger_count = 0 },
	{ config_id = 1040006, name = "CHALLENGE_SUCCESS_40006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_40006", trigger_count = 0 },
	{ config_id = 1040007, name = "CHALLENGE_FAIL_40007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_40007", trigger_count = 0 },
	{ config_id = 1040008, name = "GADGET_STATE_CHANGE_40008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40008", action = "action_EVENT_GADGET_STATE_CHANGE_40008", trigger_count = 0 },
	{ config_id = 1040009, name = "GADGET_STATE_CHANGE_40009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40009", action = "", trigger_count = 0, tag = "201" },
	-- group刷新后判断雨天
	{ config_id = 1040023, name = "GROUP_REFRESH_40023", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_40023", action = "action_EVENT_GROUP_REFRESH_40023", trigger_count = 0 },
	-- group刷新后判断晴天
	{ config_id = 1040024, name = "GROUP_REFRESH_40024", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_40024", action = "action_EVENT_GROUP_REFRESH_40024", trigger_count = 0 },
	-- 成功保底
	{ config_id = 1040025, name = "GROUP_LOAD_40025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_40025", action = "action_EVENT_GROUP_LOAD_40025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 40019, gadget_id = 70290437, pos = { x = -1335.207, y = 181.292, z = 3477.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 40020, gadget_id = 70290437, pos = { x = -1336.451, y = 183.016, z = 3482.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 40021, gadget_id = 70290437, pos = { x = -1335.230, y = 184.083, z = 3487.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 40022, gadget_id = 70290437, pos = { x = -1331.680, y = 185.143, z = 3491.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1040010, name = "GADGET_CREATE_40010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40010", action = "action_EVENT_GADGET_CREATE_40010", trigger_count = 0 },
		{ config_id = 1040011, name = "SELECT_OPTION_40011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40011", action = "action_EVENT_SELECT_OPTION_40011", trigger_count = 0 },
		{ config_id = 1040012, name = "GROUP_LOAD_40012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_40012", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 40002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_40005", "CHALLENGE_SUCCESS_40006", "CHALLENGE_FAIL_40007", "GADGET_STATE_CHANGE_40008", "GADGET_STATE_CHANGE_40009", "GROUP_REFRESH_40023", "GROUP_REFRESH_40024", "GROUP_LOAD_40025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 40001, 40004, 40013, 40014, 40015, 40016, 40017, 40018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 40003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_40005(context, evt)
	if GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40005(context, evt)
	-- 终止识别id为56的挑战，并判定失败
		ScriptLib.StopChallenge(context, 56, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_40006(context, evt)
	-- 将本组内变量名为 "gadget_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303040, 3) then
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
function action_EVENT_CHALLENGE_FAIL_40007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303040, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303040, 2)
	
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
function condition_EVENT_GADGET_STATE_CHANGE_40008(context, evt)
	if 40002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 273, defs.duration, 7, 201, defs.gadget_sum) then
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
function condition_EVENT_GADGET_STATE_CHANGE_40009(context, evt)
	if gadgets[evt.param2].gadget_id ~= 70290437 then
		return false
	end
	
	if GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_40023(context, evt)
	-- 判断变量"SGV_WeatherState"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_40023(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_40024(context, evt)
	-- 判断变量"SGV_WeatherState"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_40024(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_40025(context, evt)
	-- 判断变量"gadget_start"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_40025(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303040, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/VarunaStandard"