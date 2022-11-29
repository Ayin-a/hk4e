-- 基础信息
local base_info = {
	group_id = 133002402
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 21020501, pos = { x = 2005.002, y = 220.368, z = -736.360 }, rot = { x = 0.000, y = 188.546, z = 0.000 }, level = 10, drop_id = 1000100, affix = { 1006, 1009 }, isElite = true, area_id = 3 },
	{ config_id = 402002, monster_id = 21010401, pos = { x = 2003.562, y = 220.421, z = -733.034 }, rot = { x = 0.000, y = 183.967, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 402003, monster_id = 21010401, pos = { x = 2008.006, y = 221.288, z = -734.171 }, rot = { x = 0.000, y = 203.735, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 }
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
	{ config_id = 1402004, name = "ANY_MONSTER_DIE_402004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402004", action = "action_EVENT_ANY_MONSTER_DIE_402004" }
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
	end_suite = 2,
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
		monsters = { 402001, 402002, 402003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_402004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_402004(context, evt)
	--判断死亡怪物的configid是否为 402001
	if evt.param1 ~= 402001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end