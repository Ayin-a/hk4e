-- 基础信息
local base_info = {
	group_id = 235823007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 25020201, pos = { x = -63.045, y = 13.365, z = 83.668 }, rot = { x = 0.000, y = 84.057, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7002, monster_id = 25020201, pos = { x = -63.152, y = 13.359, z = 88.116 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7003, monster_id = 25010201, pos = { x = -62.097, y = 13.358, z = 81.123 }, rot = { x = 0.000, y = 74.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7004, monster_id = 25010201, pos = { x = -62.039, y = 13.359, z = 90.651 }, rot = { x = 0.000, y = 104.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7005, monster_id = 25030201, pos = { x = -63.420, y = 13.359, z = 86.124 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7006, monster_id = 25010301, pos = { x = -61.029, y = 13.356, z = 77.684 }, rot = { x = 0.000, y = 44.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7007, monster_id = 25070101, pos = { x = -64.964, y = 13.363, z = 81.206 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7008, monster_id = 25010401, pos = { x = -66.253, y = 13.392, z = 86.300 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7009, monster_id = 25030201, pos = { x = -64.855, y = 13.364, z = 90.438 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7010, monster_id = 25010501, pos = { x = -60.306, y = 13.356, z = 93.365 }, rot = { x = 0.000, y = 134.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7011, monster_id = 25010601, pos = { x = -64.629, y = 13.381, z = 86.247 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7012, monster_id = 25010201, pos = { x = -63.314, y = 13.414, z = 79.375 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7013, monster_id = 25010201, pos = { x = -63.970, y = 13.361, z = 92.722 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7014, monster_id = 25010201, pos = { x = -67.889, y = 13.407, z = 86.321 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7015, monster_id = 23010501, pos = { x = -61.779, y = 13.414, z = 79.725 }, rot = { x = 0.000, y = 59.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7016, monster_id = 23010501, pos = { x = -62.772, y = 13.361, z = 92.722 }, rot = { x = 0.000, y = 119.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 7017, monster_id = 23050101, pos = { x = -66.380, y = 13.407, z = 86.321 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7018, gadget_id = 70900205, pos = { x = -52.296, y = 11.169, z = 83.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007019, name = "ANY_MONSTER_LIVE_7019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7019", action = "action_EVENT_ANY_MONSTER_LIVE_7019" },
	{ config_id = 1007020, name = "CHALLENGE_SUCCESS_7020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7020" },
	{ config_id = 1007021, name = "CHALLENGE_FAIL_7021", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7021" },
	{ config_id = 1007022, name = "MONSTER_TIDE_DIE_7022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_7022", action = "action_EVENT_MONSTER_TIDE_DIE_7022" },
	{ config_id = 1007023, name = "DUNGEON_ALL_AVATAR_DIE_7023", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_7023" }
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
		gadgets = { 7018 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7019", "CHALLENGE_SUCCESS_7020", "CHALLENGE_FAIL_7021", "MONSTER_TIDE_DIE_7022", "DUNGEON_ALL_AVATAR_DIE_7023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002, 7003, 7004, 7005, 7006, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 7015, 7016, 7017 },
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
function condition_EVENT_ANY_MONSTER_LIVE_7019(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7019(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235823007, 17, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7020(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235823005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235823007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235823006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235823007, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_7022(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_7022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235823007, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_7023(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

require "V2_4/PotionStage"