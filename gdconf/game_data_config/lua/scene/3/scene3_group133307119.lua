-- 基础信息
local base_info = {
	group_id = 133307119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 25210403, pos = { x = -1098.292, y = -43.961, z = 5543.254 }, rot = { x = 0.000, y = 22.679, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 119002, monster_id = 25210402, pos = { x = -1100.425, y = -43.961, z = 5544.716 }, rot = { x = 0.000, y = 38.257, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 119003, monster_id = 25210302, pos = { x = -1102.312, y = -43.150, z = 5544.438 }, rot = { x = 0.000, y = 42.853, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
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
	{ config_id = 1119004, name = "ANY_MONSTER_DIE_119004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_119004" }
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
		monsters = { 119001, 119002, 119003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119004(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133307119, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7328753") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end