-- 基础信息
local base_info = {
	group_id = 235821008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 20011501, pos = { x = -61.036, y = 13.323, z = 83.762 }, rot = { x = 0.000, y = 84.057, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 8002, monster_id = 20011501, pos = { x = -61.143, y = 13.318, z = 88.210 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 8003, monster_id = 20011401, pos = { x = -60.088, y = 13.317, z = 81.216 }, rot = { x = 0.000, y = 74.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 8004, monster_id = 20011401, pos = { x = -60.030, y = 13.317, z = 90.745 }, rot = { x = 0.000, y = 104.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 8005, monster_id = 21020501, pos = { x = -65.434, y = 13.318, z = 86.217 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 1008, 6110, 1007 } },
	{ config_id = 8006, monster_id = 21010701, pos = { x = -59.020, y = 13.314, z = 77.777 }, rot = { x = 0.000, y = 44.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8007, monster_id = 21020201, pos = { x = -62.955, y = 13.322, z = 81.299 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8008, monster_id = 21030101, pos = { x = -64.244, y = 13.350, z = 86.394 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8009, monster_id = 21020201, pos = { x = -62.846, y = 13.322, z = 90.531 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8010, monster_id = 21010701, pos = { x = -58.297, y = 13.315, z = 93.458 }, rot = { x = 0.000, y = 134.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8012, monster_id = 21010701, pos = { x = -59.020, y = 13.314, z = 77.777 }, rot = { x = 0.000, y = 44.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8013, monster_id = 21020201, pos = { x = -62.955, y = 13.322, z = 81.299 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8014, monster_id = 21030101, pos = { x = -64.244, y = 13.350, z = 86.394 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8015, monster_id = 21020201, pos = { x = -62.846, y = 13.322, z = 90.531 }, rot = { x = 0.000, y = 89.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } },
	{ config_id = 8016, monster_id = 21010701, pos = { x = -58.297, y = 13.315, z = 93.458 }, rot = { x = 0.000, y = 134.375, z = 0.000 }, level = 1, disableWander = true, affix = { 6111, 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8018, gadget_id = 70900205, pos = { x = -50.287, y = 11.127, z = 83.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008011, name = "ANY_MONSTER_DIE_8011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8011", action = "action_EVENT_ANY_MONSTER_DIE_8011" },
	{ config_id = 1008017, name = "ANY_MONSTER_DIE_8017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8017", action = "action_EVENT_ANY_MONSTER_DIE_8017" },
	{ config_id = 1008019, name = "ANY_MONSTER_LIVE_8019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8019", action = "action_EVENT_ANY_MONSTER_LIVE_8019" },
	{ config_id = 1008020, name = "CHALLENGE_SUCCESS_8020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8020" },
	{ config_id = 1008021, name = "CHALLENGE_FAIL_8021", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8021" },
	{ config_id = 1008022, name = "SPECIFIC_MONSTER_HP_CHANGE_8022", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "8005", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_8022", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_8022" },
	{ config_id = 1008023, name = "DUNGEON_ALL_AVATAR_DIE_8023", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_8023" }
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
		gadgets = { 8018 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8019", "CHALLENGE_SUCCESS_8020", "CHALLENGE_FAIL_8021", "DUNGEON_ALL_AVATAR_DIE_8023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 精英,
		monsters = { 8005 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_8022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 援军1,
		monsters = { 8006, 8007, 8008, 8009, 8010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 开局白给,
		monsters = { 8001, 8002, 8003, 8004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8011" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 援军2,
		monsters = { 8012, 8013, 8014, 8015, 8016 },
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
function condition_EVENT_ANY_MONSTER_DIE_8011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235821008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235821008, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8019(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8019(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为256的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 256, 300, 235821008, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8020(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235821006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235821008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235821007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 235821008, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_8022(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_8022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235821008, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_8023(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

require "V2_4/PotionStage"