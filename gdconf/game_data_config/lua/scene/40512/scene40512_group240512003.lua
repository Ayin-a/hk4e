-- 基础信息
local base_info = {
	group_id = 240512003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25010601, pos = { x = -12.205, y = 0.120, z = -13.679 }, rot = { x = 0.000, y = 359.257, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 3002, monster_id = 25010601, pos = { x = 12.418, y = 0.120, z = -13.259 }, rot = { x = 0.000, y = 359.257, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 3006, monster_id = 25010601, pos = { x = -0.105, y = 0.120, z = -10.448 }, rot = { x = 0.000, y = 359.257, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 3007, monster_id = 23030102, pos = { x = -4.934, y = 0.120, z = -6.806 }, rot = { x = 0.000, y = 57.534, z = 0.000 }, level = 1, affix = { 1007, 9002 }, isElite = true },
	{ config_id = 3032, monster_id = 23020102, pos = { x = 6.320, y = 0.019, z = -8.232 }, rot = { x = 0.000, y = 355.563, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.127, y = -1.339, z = 1.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ config_id = 1003026, name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ config_id = 1003027, name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" }
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
		monsters = { 3001, 3002, 3006, 3007, 3032 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3021 },
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
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240512003, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240512001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240512001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240512003中， configid为3028的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512003, 3028, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240512002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240512002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240512001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240512001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240512001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240512003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end