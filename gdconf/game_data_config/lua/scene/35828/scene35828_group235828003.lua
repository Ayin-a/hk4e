-- 基础信息
local base_info = {
	group_id = 235828003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21020801, pos = { x = -52.957, y = 251.885, z = -84.182 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010701, pos = { x = -51.012, y = 251.901, z = -81.464 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 21010701, pos = { x = -55.564, y = 251.899, z = -86.388 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010701, pos = { x = -49.921, y = 251.895, z = -79.398 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010701, pos = { x = -57.344, y = 251.924, z = -87.607 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21030101, pos = { x = -49.377, y = 251.867, z = -77.437 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 21020801, pos = { x = -50.862, y = 251.884, z = -85.998 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 21030101, pos = { x = -46.690, y = 251.706, z = -79.900 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3009, monster_id = 21030101, pos = { x = -56.538, y = 251.837, z = -91.080 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3010, monster_id = 21030101, pos = { x = -59.226, y = 251.918, z = -88.617 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3012, gadget_id = 70290196, pos = { x = -58.437, y = 251.916, z = -73.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_3011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3011", action = "action_EVENT_ANY_MONSTER_DIE_3011" },
	{ config_id = 1003015, name = "SPECIFIC_MONSTER_HP_CHANGE_3015", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3015", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3015" },
	{ config_id = 1003016, name = "ANY_MONSTER_LIVE_3016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3016", action = "action_EVENT_ANY_MONSTER_LIVE_3016" },
	{ config_id = 1003017, name = "CHALLENGE_SUCCESS_3017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
	{ config_id = 1003018, name = "CHALLENGE_FAIL_3018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3018" },
	{ config_id = 1003019, name = "DUNGEON_ALL_AVATAR_DIE_3019", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3019" },
	{ config_id = 1003020, name = "SPECIFIC_MONSTER_HP_CHANGE_3020", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3020", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3020" }
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
		gadgets = { 3012 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3016", "CHALLENGE_SUCCESS_3017", "CHALLENGE_FAIL_3018", "DUNGEON_ALL_AVATAR_DIE_3019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3011", "SPECIFIC_MONSTER_HP_CHANGE_3015", "SPECIFIC_MONSTER_HP_CHANGE_3020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3003, 3004, 3005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3006, 3010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3007, 3008, 3009 },
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
function condition_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235828003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235828003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3015(context, evt)
	--[[判断指定configid的怪物的血量小于%65时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 65 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235828003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235828003, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235828003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235828002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235828003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_3019(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3020(context, evt)
	--[[判断指定configid的怪物的血量小于%35时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 35 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_3020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235828003, 4)
	
	return 0
end

require "V2_4/PotionStage"