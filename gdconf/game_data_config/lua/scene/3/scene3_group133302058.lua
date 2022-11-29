-- 基础信息
local base_info = {
	group_id = 133302058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58002, monster_id = 26090901, pos = { x = -998.485, y = 201.735, z = 2690.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 58006, monster_id = 26090901, pos = { x = -999.346, y = 201.943, z = 2689.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58003, gadget_id = 70540041, pos = { x = -999.454, y = 201.830, z = 2687.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 58009, gadget_id = 70500000, pos = { x = -999.373, y = 202.702, z = 2687.951 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 1, point_type = 9305, owner = 58003, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058005, name = "GATHER_58005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_58005", action = "action_EVENT_GATHER_58005", trigger_count = 0 }
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
		monsters = { 58002, 58006 },
		gadgets = { 58003, 58009 },
		regions = { },
		triggers = { "GATHER_58005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_58005(context, evt)
	if 58009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_58005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q731041501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end