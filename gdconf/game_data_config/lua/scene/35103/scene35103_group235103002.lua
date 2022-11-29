-- 基础信息
local base_info = {
	group_id = 235103002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010902, pos = { x = -4.981, y = -0.071, z = -15.065 }, rot = { x = 0.000, y = 8.978, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21030103, pos = { x = 5.226, y = -0.071, z = -14.335 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010201, pos = { x = 4.991, y = -0.071, z = -7.794 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21020202, pos = { x = 0.027, y = -0.071, z = -9.428 }, rot = { x = 0.000, y = 2.696, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 21010201, pos = { x = -5.390, y = -0.071, z = -7.657 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 22010302, pos = { x = 0.027, y = -0.071, z = -9.428 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1 },
	-- 水伤害技能
	{ config_id = 2011, monster_id = 22010303, pos = { x = 0.027, y = -0.071, z = -9.428 }, rot = { x = 0.000, y = 341.505, z = 0.000 }, level = 1, affix = { 6106 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2003, gadget_id = 70900205, pos = { x = 6.040, y = -1.530, z = -2.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "CHALLENGE_FAIL_2004", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2004" },
	{ config_id = 1002005, name = "ANY_MONSTER_LIVE_2005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2005", action = "action_EVENT_ANY_MONSTER_LIVE_2005" },
	{ config_id = 1002006, name = "CHALLENGE_SUCCESS_2006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2006" },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012" }
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
		monsters = { 2001, 2002, 2007, 2008, 2009 },
		gadgets = { 2003 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2004", "ANY_MONSTER_LIVE_2005", "CHALLENGE_SUCCESS_2006", "ANY_MONSTER_DIE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2010, 2011 },
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
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235103002, suite = 1 }) then
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1024, 300, 235103002, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 通知groupid为235103002中,configid为：2001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2001, 235103002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为235103002中,configid为：2002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 2002, 235103002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2006(context, evt)
	-- 改变指定group组235103001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235103001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235103002, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end