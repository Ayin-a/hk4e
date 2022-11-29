-- 基础信息
local base_info = {
	group_id = 133104924
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 924001, monster_id = 20011301, pos = { x = 335.678, y = 217.387, z = 258.058 }, rot = { x = 0.000, y = 59.424, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 924002, monster_id = 20010601, pos = { x = 337.405, y = 217.475, z = 255.526 }, rot = { x = 0.000, y = 50.176, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 9 },
	{ config_id = 924003, monster_id = 20010702, pos = { x = 339.094, y = 217.357, z = 254.208 }, rot = { x = 0.000, y = 14.341, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 9 }
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
	{ config_id = 1924004, name = "ANY_MONSTER_DIE_924004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_924004", action = "action_EVENT_ANY_MONSTER_DIE_924004", trigger_count = 0 }
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
		monsters = { 924001, 924002, 924003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_924004" },
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
function condition_EVENT_ANY_MONSTER_DIE_924004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_924004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end