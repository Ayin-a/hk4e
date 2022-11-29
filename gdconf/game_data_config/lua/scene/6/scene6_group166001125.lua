-- 基础信息
local base_info = {
	group_id = 166001125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 22070201, pos = { x = 463.273, y = 475.682, z = 460.935 }, rot = { x = 0.000, y = 357.368, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 },
	{ config_id = 125002, monster_id = 22070201, pos = { x = 459.291, y = 475.755, z = 461.168 }, rot = { x = 0.000, y = 13.174, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 },
	{ config_id = 125003, monster_id = 22070301, pos = { x = 460.990, y = 475.665, z = 457.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 4159 }, pose_id = 101, area_id = 300 }
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
	{ config_id = 1125004, name = "ANY_MONSTER_DIE_125004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_125004", action = "action_EVENT_ANY_MONSTER_DIE_125004" }
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
		monsters = { 125001, 125002, 125003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_125004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_125004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_125004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001125") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end