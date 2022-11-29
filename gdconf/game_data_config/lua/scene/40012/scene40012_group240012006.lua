-- 基础信息
local base_info = {
	group_id = 240012006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 20011001, pos = { x = 538.112, y = -1.984, z = 238.839 }, rot = { x = 0.000, y = 224.455, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6004, monster_id = 20011001, pos = { x = 528.551, y = -1.983, z = 239.824 }, rot = { x = 0.000, y = 154.042, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6005, monster_id = 20011001, pos = { x = 535.581, y = -1.984, z = 242.372 }, rot = { x = 0.000, y = 187.008, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6006, monster_id = 20011001, pos = { x = 531.141, y = -2.097, z = 242.732 }, rot = { x = 0.000, y = 170.695, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6007, monster_id = 20011001, pos = { x = 533.481, y = -2.064, z = 245.574 }, rot = { x = 0.000, y = 188.865, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6008, monster_id = 20011001, pos = { x = 538.649, y = -1.984, z = 243.603 }, rot = { x = 0.000, y = 211.455, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6009, monster_id = 20011001, pos = { x = 528.176, y = -1.983, z = 244.342 }, rot = { x = 0.000, y = 154.929, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 6010, monster_id = 20011101, pos = { x = 533.484, y = -1.983, z = 249.354 }, rot = { x = 0.000, y = 179.760, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6011, gadget_id = 70900205, pos = { x = 529.330, y = -4.600, z = 236.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ config_id = 1000014, name = "ANY_MONSTER_DIE_14", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14", action = "action_EVENT_ANY_MONSTER_DIE_14" },
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ config_id = 1000025, name = "ANY_MONSTER_DIE_25", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_25", action = "action_EVENT_ANY_MONSTER_DIE_25" },
	{ config_id = 1000028, name = "ANY_MONSTER_DIE_28", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28", action = "action_EVENT_ANY_MONSTER_DIE_28" },
	{ config_id = 1000033, name = "VARIABLE_CHANGE_33", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33", action = "action_EVENT_VARIABLE_CHANGE_33" },
	{ config_id = 1000034, name = "ANY_MONSTER_LIVE_34", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_34", action = "action_EVENT_ANY_MONSTER_LIVE_34" },
	{ config_id = 1000035, name = "CHALLENGE_SUCCESS_35", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35" },
	{ config_id = 1000036, name = "CHALLENGE_FAIL_36", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_36" },
	{ config_id = 1006001, name = "CHALLENGE_SUCCESS_6001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6001" },
	{ config_id = 1006002, name = "CHALLENGE_SUCCESS_6002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6002" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 6003, 6004, 6005, 6006, 6007 },
		gadgets = { 6011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1", "ANY_MONSTER_DIE_14", "ANY_MONSTER_DIE_20", "ANY_MONSTER_DIE_25", "ANY_MONSTER_DIE_28", "VARIABLE_CHANGE_33", "ANY_MONSTER_LIVE_34", "CHALLENGE_SUCCESS_35", "CHALLENGE_FAIL_36", "CHALLENGE_SUCCESS_6001", "CHALLENGE_SUCCESS_6002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 6011 },
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
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	--判断死亡怪物的configid是否为 6007
	if evt.param1 ~= 6007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14(context, evt)
	--判断死亡怪物的configid是否为 6006
	if evt.param1 ~= 6006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	--判断死亡怪物的configid是否为 6005
	if evt.param1 ~= 6005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_25(context, evt)
	--判断死亡怪物的configid是否为 6004
	if evt.param1 ~= 6004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_25(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28(context, evt)
	--判断死亡怪物的configid是否为 6003
	if evt.param1 ~= 6003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28(context, evt)
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Key"为5
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_34(context, evt)
	if 6003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_34(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为185的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 185, 80, 240012006, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35(context, evt)
	-- 改变指定group组240012007中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_36(context, evt)
	-- 改变指定group组240012005中， configid为3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012005, 3, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240012006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6001(context, evt)
	-- 改变指定group组240012007中， configid为6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 6, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6002(context, evt)
	-- 改变指定group组240012007中， configid为7的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240012007, 7, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end