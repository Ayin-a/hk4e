-- 基础信息
local base_info = {
	group_id = 235827003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 24010301, pos = { x = -158.450, y = 21.576, z = 33.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1006, 6110, 1007 }, pose_id = 100 },
	{ config_id = 3003, monster_id = 24010101, pos = { x = -149.421, y = 21.552, z = 40.072 }, rot = { x = 0.000, y = 314.685, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 },
	{ config_id = 3004, monster_id = 24010101, pos = { x = -168.575, y = 21.552, z = 41.230 }, rot = { x = 0.000, y = 52.748, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 },
	{ config_id = 3009, monster_id = 24020101, pos = { x = -154.170, y = 21.552, z = 39.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 },
	{ config_id = 3010, monster_id = 24020201, pos = { x = -164.078, y = 21.544, z = 37.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 },
	{ config_id = 3011, monster_id = 24020301, pos = { x = -151.922, y = 21.592, z = 33.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 },
	{ config_id = 3012, monster_id = 24020301, pos = { x = -165.039, y = 21.588, z = 33.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70900205, pos = { x = -153.805, y = 21.551, z = 43.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "DUNGEON_ALL_AVATAR_DIE_3001", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3001" },
	{ config_id = 1003006, name = "SPECIFIC_MONSTER_HP_CHANGE_3006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3006" },
	-- 50血不招了
	{ config_id = 1003007, name = "SPECIFIC_MONSTER_HP_CHANGE_3007", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3007", action = "" },
	{ config_id = 1003008, name = "SPECIFIC_MONSTER_HP_CHANGE_3008", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3008", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3008" },
	{ config_id = 1003016, name = "ANY_MONSTER_LIVE_3016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3016", action = "action_EVENT_ANY_MONSTER_LIVE_3016" },
	{ config_id = 1003017, name = "CHALLENGE_SUCCESS_3017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3017" },
	{ config_id = 1003018, name = "CHALLENGE_FAIL_3018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3018" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 3005, monster_id = 24010201, pos = { x = -158.910, y = 21.552, z = 29.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6111 }, pose_id = 100 }
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
		gadgets = { 3015 },
		regions = { },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_3001", "ANY_MONSTER_LIVE_3016", "CHALLENGE_SUCCESS_3017", "CHALLENGE_FAIL_3018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3002, 3011, 3012 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_3006", "SPECIFIC_MONSTER_HP_CHANGE_3007", "SPECIFIC_MONSTER_HP_CHANGE_3008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3003, 3004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 废弃,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3009, 3010 },
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

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_3001(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3006(context, evt)
	--[[判断指定configid的怪物的血量小于%75时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 75 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235827003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3007(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3008(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3008(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235827003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235827003, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235827001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235827002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235827003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235827003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

require "V2_4/PotionStage"