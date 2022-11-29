-- 基础信息
local base_info = {
	group_id = 199001058
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 199001058,
	gadget_controller_id = 58004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 20011101, pos = { x = 256.628, y = 120.000, z = 212.354 }, rot = { x = 0.000, y = 319.585, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 402 },
	{ config_id = 58010, monster_id = 20010601, pos = { x = 242.610, y = 120.000, z = 214.036 }, rot = { x = 0.000, y = 86.146, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 402 },
	{ config_id = 58013, monster_id = 20010901, pos = { x = 250.861, y = 120.000, z = 208.584 }, rot = { x = 0.000, y = 86.146, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 402 },
	{ config_id = 58014, monster_id = 20011301, pos = { x = 246.170, y = 120.000, z = 217.042 }, rot = { x = 0.000, y = 86.146, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70350082, pos = { x = 251.962, y = 120.000, z = 219.173 }, rot = { x = 0.000, y = 30.294, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 58003, gadget_id = 70211011, pos = { x = 247.971, y = 120.331, z = 209.965 }, rot = { x = 0.000, y = 39.861, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 58004, gadget_id = 70360001, pos = { x = 251.962, y = 120.000, z = 219.173 }, rot = { x = 0.000, y = 30.294, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1058005, name = "GROUP_LOAD_58005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_58005", action = "action_EVENT_GROUP_LOAD_58005", trigger_count = 0 },
	{ config_id = 1058006, name = "CHALLENGE_SUCCESS_58006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_58006", trigger_count = 0 },
	{ config_id = 1058007, name = "CHALLENGE_FAIL_58007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_58007", trigger_count = 0 },
	{ config_id = 1058008, name = "GADGET_CREATE_58008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58008", action = "action_EVENT_GADGET_CREATE_58008", trigger_count = 0 },
	{ config_id = 1058009, name = "SELECT_OPTION_58009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58009", action = "action_EVENT_SELECT_OPTION_58009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 58012, gadget_id = 70690001, pos = { x = 245.738, y = 126.155, z = 210.289 }, rot = { x = 0.000, y = 315.319, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1058015, name = "ANY_MONSTER_DIE_58015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58015", action = "action_EVENT_ANY_MONSTER_DIE_58015", trigger_count = 0 },
		{ config_id = 1058016, name = "ANY_MONSTER_DIE_58016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58016", action = "action_EVENT_ANY_MONSTER_DIE_58016", trigger_count = 0 },
		{ config_id = 1058017, name = "ANY_MONSTER_DIE_58017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58017", action = "action_EVENT_ANY_MONSTER_DIE_58017", trigger_count = 0 }
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
		gadgets = { 58002, 58004 },
		regions = { },
		triggers = { "GROUP_LOAD_58005", "CHALLENGE_SUCCESS_58006", "CHALLENGE_FAIL_58007", "GADGET_CREATE_58008", "SELECT_OPTION_58009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 死一个创生一个,
		monsters = { 58001, 58010, 58013, 58014 },
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
function condition_EVENT_GROUP_LOAD_58005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58005(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为58004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001058, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_58006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为58003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_58007(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为58004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001058, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58008(context, evt)
	if 58004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199001058, 58004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58009(context, evt)
	-- 判断是gadgetid 58004 option_id 177
	if 58004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end