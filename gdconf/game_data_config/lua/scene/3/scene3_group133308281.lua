-- 基础信息
local base_info = {
	group_id = 133308281
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281001, monster_id = 28060402, pos = { x = -1709.839, y = 255.036, z = 4445.247 }, rot = { x = 0.000, y = 213.343, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 26 },
	{ config_id = 281002, monster_id = 28060402, pos = { x = -1724.473, y = 257.011, z = 4442.159 }, rot = { x = 0.000, y = 127.704, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 26 },
	{ config_id = 281003, monster_id = 28060402, pos = { x = -1719.473, y = 255.412, z = 4448.317 }, rot = { x = 0.000, y = 172.397, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 26 }
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
	{ config_id = 1281004, name = "ANY_MONSTER_DIE_281004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_281004", action = "action_EVENT_ANY_MONSTER_DIE_281004" }
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
		monsters = { 281001, 281002, 281003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_281004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_281004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1301006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end