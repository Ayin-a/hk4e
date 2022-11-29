-- 基础信息
local base_info = {
	group_id = 133304149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149002, gadget_id = 70540041, pos = { x = -1113.484, y = 220.866, z = 2724.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 149003, gadget_id = 70500000, pos = { x = -1113.216, y = 221.848, z = 2724.648 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 1, point_type = 9305, owner = 149002, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149001, name = "GATHER_149001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_149001", action = "action_EVENT_GATHER_149001", trigger_count = 0 }
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
		gadgets = { 149002, 149003 },
		regions = { },
		triggers = { "GATHER_149001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_149001(context, evt)
	if 149003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_149001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q731041401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end