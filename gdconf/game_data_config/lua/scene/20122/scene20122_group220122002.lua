-- 基础信息
local base_info = {
	group_id = 220122002
}

-- DEFS_MISCS
function SLC_SetTransfromState( context)

	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置雷军二阶段SGV")

	ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.target_entity_id, "SGV_MONSTER_SHOUGUN_MITAKENARUKAMI_TRANSFORM", 1)

	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 29060202, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 171.520, z = 0.000 }, level = 1, title_id = 153, special_name_id = 11 }
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
	{ config_id = 1002002, name = "ANY_MONSTER_DIE_2002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2002", action = "action_EVENT_ANY_MONSTER_DIE_2002" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220122002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end