-- 基础信息
local base_info = {
	group_id = 133105063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142, monster_id = 21010101, pos = { x = 572.417, y = 220.819, z = -318.725 }, rot = { x = 0.000, y = 266.275, z = 0.000 }, level = 25, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 143, monster_id = 21010201, pos = { x = 572.193, y = 220.818, z = -318.821 }, rot = { x = 0.000, y = 271.920, z = 0.000 }, level = 25, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 144, monster_id = 21010701, pos = { x = 572.369, y = 220.819, z = -318.826 }, rot = { x = 0.000, y = 272.046, z = 0.000 }, level = 25, drop_tag = "丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 125, gadget_id = 70300089, pos = { x = 571.501, y = 220.820, z = -318.780 }, rot = { x = 0.000, y = 162.624, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 126, gadget_id = 70211011, pos = { x = 571.481, y = 220.815, z = -318.705 }, rot = { x = 0.000, y = 273.389, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000083, name = "ANY_GADGET_DIE_83", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83", action = "action_EVENT_ANY_GADGET_DIE_83", trigger_count = 0 },
	{ config_id = 1000084, name = "ANY_MONSTER_DIE_84", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84", action = "action_EVENT_ANY_MONSTER_DIE_84", trigger_count = 0 },
	{ config_id = 1000085, name = "ANY_MONSTER_DIE_85", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85", action = "action_EVENT_ANY_MONSTER_DIE_85", trigger_count = 0 },
	{ config_id = 1000086, name = "ANY_MONSTER_DIE_86", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86", action = "action_EVENT_ANY_MONSTER_DIE_86", trigger_count = 0 }
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
		gadgets = { 125 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_83", "ANY_MONSTER_DIE_84" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 143 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 144 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 126 },
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
function condition_EVENT_ANY_GADGET_DIE_83(context, evt)
	if 125 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_83(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 142, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105063, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end