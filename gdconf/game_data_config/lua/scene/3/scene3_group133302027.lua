-- 基础信息
local base_info = {
	group_id = 133302027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 28060103, pos = { x = -576.881, y = 132.000, z = 2530.772 }, rot = { x = 0.000, y = 313.850, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 27002, monster_id = 28060103, pos = { x = -573.248, y = 132.000, z = 2534.880 }, rot = { x = 0.000, y = 271.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 24 }
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
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" },
	{ config_id = 1027004, name = "TIME_AXIS_PASS_27004", event = EventType.EVENT_TIME_AXIS_PASS, source = "13001TIME", condition = "", action = "action_EVENT_TIME_AXIS_PASS_27004" }
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
		monsters = { 27001, 27002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003", "TIME_AXIS_PASS_27004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302027) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 创建标识为"13001TIME"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "13001TIME", {2}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_27004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1333020271") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"