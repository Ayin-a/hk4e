-- 基础信息
local base_info = {
	group_id = 240048005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5002, monster_id = 23050101, pos = { x = -170.928, y = 0.428, z = -67.528 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5003, monster_id = 25060101, pos = { x = -170.930, y = 0.530, z = -66.378 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5004, monster_id = 25010601, pos = { x = -163.268, y = 0.323, z = -75.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5005, monster_id = 25010601, pos = { x = -162.992, y = 0.323, z = -58.413 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5006, monster_id = 25010301, pos = { x = -157.804, y = 0.323, z = -74.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5007, monster_id = 25010301, pos = { x = -163.489, y = 0.323, z = -66.927 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 5009, monster_id = 25010301, pos = { x = -158.854, y = 0.323, z = -58.579 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70290137, pos = { x = -138.449, y = 1.544, z = -66.427 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5013, gadget_id = 70211121, pos = { x = -158.958, y = 0.408, z = -66.719 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5015, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -146.572, y = 6.872, z = -66.233 } },
	{ config_id = 5016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -125.883, y = 6.292, z = -66.233 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "ANY_MONSTER_DIE_5008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5008", action = "action_EVENT_ANY_MONSTER_DIE_5008" },
	{ config_id = 1005012, name = "MONSTER_BATTLE_5012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_5012", action = "action_EVENT_MONSTER_BATTLE_5012" },
	{ config_id = 1005014, name = "CHALLENGE_SUCCESS_5014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5014" },
	{ config_id = 1005015, name = "ENTER_REGION_5015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5015", action = "action_EVENT_ENTER_REGION_5015", trigger_count = 0 },
	{ config_id = 1005016, name = "ENTER_REGION_5016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5016", action = "action_EVENT_ENTER_REGION_5016", trigger_count = 0 },
	{ config_id = 1005017, name = "CHALLENGE_FAIL_5017", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5017" },
	{ config_id = 1005018, name = "ANY_MONSTER_DIE_5018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5018", action = "action_EVENT_ANY_MONSTER_DIE_5018" },
	{ config_id = 1005019, name = "ANY_MONSTER_DIE_5019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5019", action = "action_EVENT_ANY_MONSTER_DIE_5019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challenge", value = 0, no_refresh = false }
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
		monsters = { 5002, 5003 },
		gadgets = { 5001 },
		regions = { 5015, 5016 },
		triggers = { "MONSTER_BATTLE_5012", "CHALLENGE_SUCCESS_5014", "ENTER_REGION_5015", "ENTER_REGION_5016", "CHALLENGE_FAIL_5017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5004, 5005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5008", "ANY_MONSTER_DIE_5018", "ANY_MONSTER_DIE_5019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	--判断死亡怪物的configid是否为 5005
	if evt.param1 ~= 5005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_5012(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_5012(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240048005, 7, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240048006, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240048005, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5014(context, evt)
	-- 创建id为5013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5015(context, evt)
	if evt.param1 ~= 5015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challenge"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5015(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5016(context, evt)
	if evt.param1 ~= 5016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challenge"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5016(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240048005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	--判断死亡怪物的configid是否为 5004
	if evt.param1 ~= 5004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5019(context, evt)
	--判断死亡怪物的configid是否为 5003
	if evt.param1 ~= 5003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end