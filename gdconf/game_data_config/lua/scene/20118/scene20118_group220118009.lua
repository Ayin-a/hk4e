-- 基础信息
local base_info = {
	group_id = 220118009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 25080101, pos = { x = -11.955, y = 54.563, z = -72.259 }, rot = { x = 0.000, y = 272.771, z = 0.000 }, level = 1, disableWander = true, pose_id = 1004 },
	{ config_id = 9002, monster_id = 25080101, pos = { x = -11.992, y = 54.544, z = -75.813 }, rot = { x = 0.000, y = 271.741, z = 0.000 }, level = 1, disableWander = true, pose_id = 1006 }
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
	{ config_id = 1009003, name = "MONSTER_BATTLE_9003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_9003" },
	{ config_id = 1009004, name = "ANY_MONSTER_DIE_9004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9004", action = "action_EVENT_ANY_MONSTER_DIE_9004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isEnterBattle", value = 0, no_refresh = false },
	{ config_id = 2, name = "isAllKill", value = 0, no_refresh = false }
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
		monsters = { 9001, 9002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_9003", "ANY_MONSTER_DIE_9004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_9003(context, evt)
	-- 将本组内变量名为 "isEnterBattle" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isEnterBattle", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220118009) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9004(context, evt)
	-- 将本组内变量名为 "isAllKill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAllKill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end