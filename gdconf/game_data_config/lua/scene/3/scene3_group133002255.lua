-- 基础信息
local base_info = {
	group_id = 133002255
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 877, monster_id = 25010401, pos = { x = 1920.880, y = 205.270, z = -742.745 }, rot = { x = 0.000, y = 184.150, z = 0.000 }, level = 13, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 878, monster_id = 25010201, pos = { x = 1923.019, y = 204.955, z = -742.428 }, rot = { x = 0.000, y = 184.150, z = 0.000 }, level = 13, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 879, monster_id = 25010201, pos = { x = 1925.469, y = 204.792, z = -742.282 }, rot = { x = 0.000, y = 184.150, z = 0.000 }, level = 13, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 880, monster_id = 25010601, pos = { x = 1927.656, y = 204.800, z = -742.810 }, rot = { x = 0.000, y = 184.150, z = 0.000 }, level = 13, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 881, monster_id = 25030201, pos = { x = 1924.157, y = 205.159, z = -738.427 }, rot = { x = 0.000, y = 184.150, z = 0.000 }, level = 12, drop_id = 1000100, disableWander = true, area_id = 3 }
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
	{ config_id = 1000300, name = "ANY_MONSTER_DIE_300", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_300", action = "action_EVENT_ANY_MONSTER_DIE_300" }
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
		-- description = suite_2,
		monsters = { 877, 878, 879, 880, 881 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_300" },
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
function condition_EVENT_ANY_MONSTER_DIE_300(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_300(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002255") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end