-- 基础信息
local base_info = {
	group_id = 240025002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 20040202, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 10005, special_name_id = 10021 },
	{ config_id = 2003, monster_id = 20040102, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 10004, special_name_id = 10020 },
	{ config_id = 2004, monster_id = 20040302, pos = { x = 0.000, y = 0.000, z = -16.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 10006, special_name_id = 10022 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70900205, pos = { x = 0.160, y = -0.580, z = -0.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 44000006, pos = { x = 0.000, y = 0.000, z = 21.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "ANY_MONSTER_LIVE_2005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2005", action = "action_EVENT_ANY_MONSTER_LIVE_2005", trigger_count = 0 },
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "ANY_MONSTER_DIE_2007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2007", action = "action_EVENT_ANY_MONSTER_DIE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "CHALLENGE_FAIL_2008", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "DUNGEON_ALL_AVATAR_DIE_2009", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_2009", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_2009", trigger_count = 0 }
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
		gadgets = { 2001, 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2002 },
		gadgets = { 2001 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2005", "ANY_MONSTER_DIE_2006", "CHALLENGE_FAIL_2008", "DUNGEON_ALL_AVATAR_DIE_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2003 },
		gadgets = { 2001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2007", "CHALLENGE_FAIL_2008", "DUNGEON_ALL_AVATAR_DIE_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2004 },
		gadgets = { 2001 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2008", "DUNGEON_ALL_AVATAR_DIE_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 2001 },
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
function condition_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2005(context, evt)
	local challenge_time = 960
	
	if -1 ~= ScriptLib.GetEffigyChallengeLimitTime(context) then
		challenge_time = 960 - ScriptLib.GetEffigyChallengeLimitTime(context)
	end 
	
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 217, challenge_time, 240025002, 3, 0) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	--判断死亡怪物的configid是否为 2002
	if evt.param1 ~= 2002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240025002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	--判断死亡怪物的configid是否为 2003
	if evt.param1 ~= 2003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240025002, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240025001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240025002, suite = 5 }) then
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
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_2009(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	local ret = 0
	
	for i,v in ipairs(uid_list) do
		local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
		if true ~= is_all_dead then
			ret = -1
			break
		end
	end
	
	if ret ~= 0 then
		return false
	end
	
	return true
	
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_2009(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end