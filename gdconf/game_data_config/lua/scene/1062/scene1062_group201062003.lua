-- 基础信息
local base_info = {
	group_id = 201062003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3003, monster_id = 25100201, pos = { x = 150.822, y = -8.569, z = -27.699 }, rot = { x = 0.000, y = 285.345, z = 0.000 }, level = 1, disableWander = true, pose_id = 1002, special_name_id = 10070 },
	{ config_id = 3008, monster_id = 25080301, pos = { x = 120.369, y = -10.901, z = -19.955 }, rot = { x = 0.000, y = 264.118, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 3009, monster_id = 25100101, pos = { x = 150.592, y = -8.569, z = -11.745 }, rot = { x = 0.000, y = 251.933, z = 0.000 }, level = 1, disableWander = true, pose_id = 1002, special_name_id = 10069 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70290137, pos = { x = 136.632, y = -9.032, z = -19.940 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70290137, pos = { x = 166.260, y = -9.913, z = -19.918 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70900205, pos = { x = 49.753, y = -13.358, z = -113.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70211011, pos = { x = 162.644, y = -8.132, z = -25.758 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 3013, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 25.000 }, pos = { x = 130.533, y = -5.246, z = -19.584 } }
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "ANY_MONSTER_DIE_3005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3005", action = "action_EVENT_ANY_MONSTER_DIE_3005" },
	{ config_id = 1003006, name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006" },
	{ config_id = 1003010, name = "ANY_MONSTER_LIVE_3010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3010", action = "action_EVENT_ANY_MONSTER_LIVE_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "CHALLENGE_SUCCESS_3011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3011" },
	{ config_id = 1003012, name = "CHALLENGE_FAIL_3012", event = EventType.EVENT_CHALLENGE_FAIL, source = "3", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "ENTER_REGION_3013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3013", action = "action_EVENT_ENTER_REGION_3013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false }
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
		gadgets = { 3001, 3002, 3004, 3007 },
		regions = { 3013 },
		triggers = { "ANY_MONSTER_LIVE_3010", "CHALLENGE_SUCCESS_3011", "CHALLENGE_FAIL_3012", "ENTER_REGION_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3003, 3009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	--判断死亡怪物的configid是否为 3008
	if evt.param1 ~= 3008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 将本组内变量名为 "key" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3010(context, evt)
	--判断死亡怪物的configid是否为 3003
	if evt.param1 ~= 3003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3010(context, evt)
	-- 创建编号为3（该挑战的识别id),挑战内容为252的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 3, 252, 201062003, 2, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3011(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201062003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062003, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062012, 4)
	
	-- 将本组内变量名为 "key" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3013(context, evt)
	if evt.param1 ~= 3013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"key"为1
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3013(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062010, 3)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062003, 3)
	
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end