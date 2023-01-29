-- 基础信息
local base_info = {
	group_id = 133107188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 21020501, pos = { x = -659.890, y = 158.033, z = 1675.098 }, rot = { x = 0.000, y = 65.494, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188003, gadget_id = 70220065, pos = { x = -663.940, y = 156.826, z = 1669.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 19 },
	{ config_id = 188004, gadget_id = 70220065, pos = { x = -666.191, y = 157.757, z = 1670.541 }, rot = { x = 347.348, y = 331.870, z = 355.879 }, level = 1, area_id = 19 },
	{ config_id = 188005, gadget_id = 70300093, pos = { x = -663.344, y = 160.231, z = 1678.599 }, rot = { x = 334.128, y = 339.087, z = 358.608 }, level = 1, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188002, name = "ANY_MONSTER_DIE_188002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188002", action = "action_EVENT_ANY_MONSTER_DIE_188002" }
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
		monsters = { 188001 },
		gadgets = { 188003, 188004, 188005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133107188) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2103403") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end