-- 基础信息
local base_info = {
	group_id = 235822006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20050403, pos = { x = -64.641, y = 13.324, z = 83.743 }, rot = { x = 0.000, y = 84.057, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6002, monster_id = 20050403, pos = { x = -64.749, y = 13.319, z = 88.191 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6003, monster_id = 20050302, pos = { x = -63.693, y = 13.317, z = 81.197 }, rot = { x = 0.000, y = 74.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6004, monster_id = 20050302, pos = { x = -63.635, y = 13.318, z = 90.726 }, rot = { x = 0.000, y = 104.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6005, monster_id = 20050203, pos = { x = -65.016, y = 13.318, z = 86.198 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6006, monster_id = 20050802, pos = { x = -62.626, y = 13.315, z = 77.758 }, rot = { x = 0.000, y = 44.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6007, monster_id = 20050603, pos = { x = -66.560, y = 13.323, z = 81.280 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6008, monster_id = 20050403, pos = { x = -67.849, y = 13.351, z = 86.375 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6009, monster_id = 20050603, pos = { x = -66.451, y = 13.323, z = 90.512 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6010, monster_id = 20050802, pos = { x = -61.902, y = 13.315, z = 93.439 }, rot = { x = 0.000, y = 134.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6011, monster_id = 20050703, pos = { x = -66.226, y = 13.340, z = 86.321 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6012, monster_id = 20050703, pos = { x = -64.910, y = 13.373, z = 79.449 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6013, monster_id = 20050703, pos = { x = -65.567, y = 13.320, z = 92.797 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6014, monster_id = 20050502, pos = { x = -69.485, y = 13.366, z = 86.396 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6015, monster_id = 23010301, pos = { x = -63.376, y = 13.373, z = 79.799 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6016, monster_id = 23010201, pos = { x = -64.368, y = 13.320, z = 92.797 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6017, monster_id = 23010501, pos = { x = -67.034, y = 13.366, z = 86.143 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6024, monster_id = 20050203, pos = { x = -66.495, y = 13.309, z = 83.778 }, rot = { x = 0.000, y = 74.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6025, monster_id = 20050203, pos = { x = -67.818, y = 13.330, z = 88.779 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6026, monster_id = 20050203, pos = { x = -61.033, y = 13.293, z = 89.761 }, rot = { x = 0.000, y = 134.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 6027, monster_id = 20050203, pos = { x = -66.739, y = 13.321, z = 86.396 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6018, gadget_id = 70900205, pos = { x = -53.892, y = 11.128, z = 83.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006019, name = "ANY_MONSTER_LIVE_6019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6019", action = "action_EVENT_ANY_MONSTER_LIVE_6019" },
	{ config_id = 1006020, name = "CHALLENGE_SUCCESS_6020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6020" },
	{ config_id = 1006021, name = "CHALLENGE_FAIL_6021", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6021" },
	{ config_id = 1006022, name = "MONSTER_TIDE_DIE_6022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_6022", action = "action_EVENT_MONSTER_TIDE_DIE_6022" },
	{ config_id = 1006023, name = "DUNGEON_ALL_AVATAR_DIE_6023", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_6023" }
}

-- 变量
variables = {
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
		gadgets = { 6018 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6019", "CHALLENGE_SUCCESS_6020", "CHALLENGE_FAIL_6021", "MONSTER_TIDE_DIE_6022", "DUNGEON_ALL_AVATAR_DIE_6023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6024, 6025, 6026, 6027 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6015, 6016, 6017 },
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
function condition_EVENT_ANY_MONSTER_LIVE_6019(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6019(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235822006, 21, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6020(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235822004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235822006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235822005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235822006, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_6022(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_6022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235822006, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_6023(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

require "V2_4/PotionStage"