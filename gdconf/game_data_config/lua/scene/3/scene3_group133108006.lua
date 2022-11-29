-- 基础信息
local base_info = {
	group_id = 133108006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011101, pos = { x = -264.915, y = 201.498, z = -888.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 6004, monster_id = 20010702, pos = { x = -266.670, y = 201.533, z = -888.335 }, rot = { x = 0.000, y = 31.301, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 6006, monster_id = 20010604, pos = { x = -268.566, y = 201.423, z = -886.084 }, rot = { x = 0.000, y = 75.843, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 6007, monster_id = 20010904, pos = { x = -267.930, y = 201.251, z = -884.541 }, rot = { x = 359.247, y = 78.060, z = 356.443 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 6012, monster_id = 20011301, pos = { x = -265.850, y = 201.305, z = -885.717 }, rot = { x = 0.000, y = 55.847, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 6013, monster_id = 20011201, pos = { x = -267.000, y = 201.317, z = -885.377 }, rot = { x = 356.589, y = 71.933, z = 358.163 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 6014, monster_id = 20011201, pos = { x = -266.271, y = 201.378, z = -886.572 }, rot = { x = 2.288, y = 59.603, z = 1.054 }, level = 32, drop_id = 1000100, area_id = 7 }
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
	{ config_id = 1006002, name = "ANY_MONSTER_DIE_6002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6002", action = "action_EVENT_ANY_MONSTER_DIE_6002", trigger_count = 0 },
	{ config_id = 1006005, name = "ANY_MONSTER_DIE_6005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6005", action = "action_EVENT_ANY_MONSTER_DIE_6005", trigger_count = 0 }
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
	suite = 3,
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
		monsters = { 6012, 6013, 6014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6001, 6004, 6006, 6007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133108006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end