-- 基础信息
local base_info = {
	group_id = 133209002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 25050301, pos = { x = -2972.524, y = 204.646, z = -4193.705 }, rot = { x = 0.000, y = 153.978, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2003, monster_id = 25050301, pos = { x = -2974.604, y = 204.675, z = -4193.504 }, rot = { x = 0.000, y = 146.804, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2004, monster_id = 25050301, pos = { x = -2971.862, y = 204.800, z = -4191.472 }, rot = { x = 0.000, y = 163.802, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2005, monster_id = 25050301, pos = { x = -2976.205, y = 204.864, z = -4184.139 }, rot = { x = 0.000, y = 155.567, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2006, monster_id = 25050301, pos = { x = -2978.767, y = 204.239, z = -4185.427 }, rot = { x = 0.000, y = 134.820, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2007, monster_id = 25050301, pos = { x = -2980.688, y = 204.159, z = -4187.951 }, rot = { x = 0.000, y = 112.406, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2008, monster_id = 25050301, pos = { x = -2973.123, y = 205.677, z = -4183.082 }, rot = { x = 0.000, y = 184.389, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2010, monster_id = 25050301, pos = { x = -2978.767, y = 204.239, z = -4185.427 }, rot = { x = 0.000, y = 134.820, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2011, monster_id = 25050301, pos = { x = -2976.205, y = 204.864, z = -4184.139 }, rot = { x = 0.000, y = 155.567, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 2012, monster_id = 25050301, pos = { x = -2973.123, y = 205.677, z = -4183.082 }, rot = { x = 0.000, y = 184.389, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ANY_MONSTER_DIE_2001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2001", action = "action_EVENT_ANY_MONSTER_DIE_2001" },
	{ config_id = 1002009, name = "ANY_MONSTER_DIE_2009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2009", action = "action_EVENT_ANY_MONSTER_DIE_2009" },
	{ config_id = 1002013, name = "ANY_MONSTER_DIE_2013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2013", action = "action_EVENT_ANY_MONSTER_DIE_2013" }
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
	end_suite = 3,
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
		monsters = { 2002, 2003, 2004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2005, 2006, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2010, 2011, 2012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133209002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133209002) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209002, 3)
	
	return 0
end