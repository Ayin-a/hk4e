-- 基础信息
local base_info = {
	group_id = 166001393
}

-- Trigger变量
local defs = {
	duration = 50,
	kill_sum = 2,
	group_id = 166001393,
	gadget_controller_id = 393004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393001, monster_id = 26040104, pos = { x = 849.768, y = 723.265, z = 147.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 393010, monster_id = 26040102, pos = { x = 843.397, y = 722.997, z = 151.499 }, rot = { x = 0.000, y = 66.903, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 393002, gadget_id = 70350092, pos = { x = 849.166, y = 723.032, z = 153.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 393003, gadget_id = 70211011, pos = { x = 850.595, y = 723.903, z = 161.762 }, rot = { x = 5.727, y = 163.308, z = 357.358 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 393004, gadget_id = 70290206, pos = { x = 849.157, y = 723.501, z = 153.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1393005, name = "GROUP_LOAD_393005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_393005", action = "action_EVENT_GROUP_LOAD_393005", trigger_count = 0 },
	{ config_id = 1393006, name = "CHALLENGE_SUCCESS_393006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_393006", trigger_count = 0 },
	{ config_id = 1393007, name = "CHALLENGE_FAIL_393007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_393007", trigger_count = 0 },
	{ config_id = 1393009, name = "GADGET_STATE_CHANGE_393009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393009", action = "action_EVENT_GADGET_STATE_CHANGE_393009", trigger_count = 0 },
	{ config_id = 1393012, name = "ANY_MONSTER_DIE_393012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_393012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 393011, monster_id = 26040104, pos = { x = 855.647, y = 723.320, z = 153.076 }, rot = { x = 0.000, y = 277.076, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
	},
	triggers = {
		{ config_id = 1393008, name = "GADGET_CREATE_393008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_393008", action = "action_EVENT_GADGET_CREATE_393008", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 393002, 393004 },
		regions = { },
		triggers = { "GROUP_LOAD_393005", "CHALLENGE_SUCCESS_393006", "CHALLENGE_FAIL_393007", "GADGET_STATE_CHANGE_393009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 393001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_393012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 393010 },
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
function condition_EVENT_GROUP_LOAD_393005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_393005(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为393004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 393004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001393, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001393, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_393006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 393002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为393003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 393003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_393007(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为393004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 393004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001393, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001393, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_393009(context, evt)
	if 393004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393009(context, evt)
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
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_393012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001393, 3)
	
	return 0
end