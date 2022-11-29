-- 基础信息
local base_info = {
	group_id = 133004923
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 923003, monster_id = 22020102, pos = { x = 1989.785, y = 250.190, z = -246.947 }, rot = { x = 0.000, y = 156.647, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, title_id = 10009, special_name_id = 10025, area_id = 3 },
	{ config_id = 923004, monster_id = 21011001, pos = { x = 2003.212, y = 250.190, z = -248.105 }, rot = { x = 0.000, y = 189.810, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 3 },
	{ config_id = 923005, monster_id = 21010901, pos = { x = 1982.794, y = 250.190, z = -271.769 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 923006, gadget_id = 70220009, pos = { x = 1998.278, y = 249.996, z = -308.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1923002, name = "ANY_MONSTER_DIE_923002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_923002", action = "action_EVENT_ANY_MONSTER_DIE_923002", trigger_count = 0 }
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
		monsters = { 923003, 923004, 923005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_923002" },
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
function condition_EVENT_ANY_MONSTER_DIE_923002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_923002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300492301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end