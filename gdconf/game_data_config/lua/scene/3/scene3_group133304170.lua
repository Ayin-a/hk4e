-- 基础信息
local base_info = {
	group_id = 133304170
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
	{ config_id = 170001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1540.081, y = 255.541, z = 2337.114 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1170001, name = "LEAVE_REGION_170001", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_170001", action = "action_EVENT_LEAVE_REGION_170001", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { 170001 },
		triggers = { "LEAVE_REGION_170001" },
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
function condition_EVENT_LEAVE_REGION_170001(context, evt)
	-- 判断是区域170001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 170001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_170001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133304170") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end