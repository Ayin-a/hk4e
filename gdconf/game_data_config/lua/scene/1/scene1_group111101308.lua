-- 基础信息
local base_info = {
	group_id = 111101308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308003, monster_id = 21010101, pos = { x = 2211.540, y = 243.005, z = -1563.711 }, rot = { x = 0.000, y = 123.508, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308004, monster_id = 21010101, pos = { x = 2209.078, y = 242.618, z = -1562.873 }, rot = { x = 0.000, y = 308.782, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308005, monster_id = 21010101, pos = { x = 2207.590, y = 242.285, z = -1564.094 }, rot = { x = 0.000, y = 308.782, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308006, monster_id = 21010101, pos = { x = 2207.080, y = 242.471, z = -1566.132 }, rot = { x = 0.000, y = 308.782, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308007, monster_id = 21010101, pos = { x = 2205.089, y = 242.398, z = -1566.221 }, rot = { x = 0.000, y = 274.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308008, monster_id = 21010101, pos = { x = 2208.372, y = 242.441, z = -1561.163 }, rot = { x = 0.000, y = 354.979, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308009, monster_id = 21010101, pos = { x = 2205.718, y = 242.122, z = -1563.122 }, rot = { x = 0.000, y = 118.431, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308010, monster_id = 21010101, pos = { x = 2206.311, y = 242.345, z = -1561.098 }, rot = { x = 0.000, y = 42.043, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308011, monster_id = 21010101, pos = { x = 2204.218, y = 242.188, z = -1563.753 }, rot = { x = 0.000, y = 42.043, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 308012, monster_id = 21020101, pos = { x = 2210.729, y = 242.934, z = -1561.245 }, rot = { x = 0.000, y = 242.743, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308001, gadget_id = 70350082, pos = { x = 2209.430, y = 242.647, z = -1567.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 308002, gadget_id = 70360001, pos = { x = 2209.420, y = 243.666, z = -1567.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 308013, gadget_id = 70211001, pos = { x = 2211.528, y = 242.721, z = -1566.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1308014, name = "GADGET_CREATE_308014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_308014", action = "action_EVENT_GADGET_CREATE_308014", trigger_count = 0 },
	{ config_id = 1308015, name = "SELECT_OPTION_308015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_308015", action = "action_EVENT_SELECT_OPTION_308015", trigger_count = 0 },
	{ config_id = 1308016, name = "CHALLENGE_SUCCESS_308016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_308016", trigger_count = 0 },
	{ config_id = 1308017, name = "CHALLENGE_FAIL_308017", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_308017", trigger_count = 0 },
	{ config_id = 1308018, name = "GADGET_STATE_CHANGE_308018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308018", action = "action_EVENT_GADGET_STATE_CHANGE_308018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 308001, 308002 },
		regions = { },
		triggers = { "GADGET_CREATE_308014", "SELECT_OPTION_308015", "CHALLENGE_SUCCESS_308016", "CHALLENGE_FAIL_308017", "GADGET_STATE_CHANGE_308018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 308003, 308004, 308005, 308006, 308007, 308008, 308009, 308010, 308011, 308012 },
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
function condition_EVENT_GADGET_CREATE_308014(context, evt)
	if 308002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_308014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101308, 308002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_308015(context, evt)
	-- 判断是gadgetid 308002 option_id 177
	if 308002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_308015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101308, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101308, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 308002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 308001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_308016(context, evt)
	-- 将configid为 308001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为308013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_308017(context, evt)
	-- 将configid为 308001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为308002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 308002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101308, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308018(context, evt)
	-- 检测config_id为308013的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 308013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308018(context, evt)
	-- 将本组内变量名为 "chest1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chest1", 1, 111101315) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end