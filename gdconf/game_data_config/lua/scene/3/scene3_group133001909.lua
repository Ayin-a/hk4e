-- 基础信息
local base_info = {
	group_id = 133001909
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 909001, monster_id = 21010301, pos = { x = 1492.049, y = 261.748, z = -1703.405 }, rot = { x = 0.000, y = 346.397, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 2 },
	{ config_id = 909002, monster_id = 21010301, pos = { x = 1488.670, y = 261.652, z = -1701.224 }, rot = { x = 0.000, y = 346.397, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 2 },
	{ config_id = 909003, monster_id = 21010301, pos = { x = 1489.430, y = 262.534, z = -1706.665 }, rot = { x = 0.000, y = 346.397, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 2 }
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
	{ config_id = 1909004, name = "ANY_MONSTER_DIE_909004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_909004", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 909001, 909002, 909003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_909004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_909004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end