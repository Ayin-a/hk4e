-- 基础信息
local base_info = {
	group_id = 177005185
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
	{ config_id = 185001, gadget_id = 70360001, pos = { x = 228.010, y = 313.888, z = 298.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 185002, shape = RegionShape.POLYGON, pos = { x = 233.059, y = 319.760, z = 294.431 }, height = 12.901, point_array = { { x = 253.003, y = 292.972 }, { x = 240.999, y = 275.245 }, { x = 213.114, y = 296.840 }, { x = 225.988, y = 313.618 } }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1185002, name = "LEAVE_REGION_185002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_185002", action = "action_EVENT_LEAVE_REGION_185002", trigger_count = 0 }
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
		gadgets = { 185001 },
		regions = { 185002 },
		triggers = { "LEAVE_REGION_185002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEAVE_REGION_185002(context, evt)
	-- 判断是区域185002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 185002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_185002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "722760701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end