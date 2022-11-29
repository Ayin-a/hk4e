-- 基础信息
local base_info = {
	group_id = 133102118
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
}

-- 区域
regions = {
	{ config_id = 118001, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1717.031, y = 246.910, z = 634.178 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1118001, name = "LEAVE_REGION_118001", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_118001", action = "action_EVENT_LEAVE_REGION_118001" }
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
		regions = { 118001 },
		triggers = { "LEAVE_REGION_118001" },
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
function condition_EVENT_LEAVE_REGION_118001(context, evt)
	if evt.param1 ~= 118001 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_118001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7181516") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end