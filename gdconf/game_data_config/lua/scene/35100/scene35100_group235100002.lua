-- 基础信息
local base_info = {
	group_id = 235100002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21020101, pos = { x = 0.256, y = -0.071, z = -14.654 }, rot = { x = 0.000, y = 0.092, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21010401, pos = { x = 7.526, y = -0.071, z = -12.386 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010401, pos = { x = -7.216, y = -0.071, z = -12.417 }, rot = { x = 0.000, y = 21.435, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 20010601, pos = { x = 8.428, y = -0.071, z = -7.496 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 20010701, pos = { x = -6.616, y = -0.071, z = -7.459 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 23030101, pos = { x = 0.182, y = -0.071, z = -11.988 }, rot = { x = 0.000, y = 3.547, z = 0.000 }, level = 1, affix = { 9002 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2003, gadget_id = 70900205, pos = { x = 6.035, y = -1.530, z = -2.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "CHALLENGE_FAIL_2004", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2004" },
	{ config_id = 1002005, name = "ANY_MONSTER_LIVE_2005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2005", action = "action_EVENT_ANY_MONSTER_LIVE_2005" },
	{ config_id = 1002006, name = "CHALLENGE_SUCCESS_2006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2006" },
	{ config_id = 1002011, name = "ANY_MONSTER_DIE_2011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2011", action = "action_EVENT_ANY_MONSTER_DIE_2011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 2003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2007 },
		gadgets = { 2003 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2004", "ANY_MONSTER_LIVE_2005", "CHALLENGE_SUCCESS_2006", "ANY_MONSTER_DIE_2011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2008, 2009, 2010 },
		gadgets = { 2003 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2004", "CHALLENGE_SUCCESS_2006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235100002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1024的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1024, 300, 235100002, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 通知groupid为235100002中,configid为：2001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2001, 235100002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为235100002中,configid为：2002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2002, 235100002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2006(context, evt)
	-- 改变指定group组235100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235100001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235100002, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end