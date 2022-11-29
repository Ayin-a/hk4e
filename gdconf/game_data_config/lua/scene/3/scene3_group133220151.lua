-- 基础信息
local base_info = {
	group_id = 133220151
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
	{ config_id = 151002, gadget_id = 70300092, pos = { x = -2332.005, y = 213.457, z = -4415.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 151007, gadget_id = 50004027, pos = { x = -2331.531, y = 213.751, z = -4410.936 }, rot = { x = 72.655, y = 86.339, z = 8.471 }, level = 1, area_id = 11 },
	{ config_id = 151008, gadget_id = 50004027, pos = { x = -2329.981, y = 213.725, z = -4411.757 }, rot = { x = 70.814, y = 296.368, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 151001, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2345.708, y = 215.457, z = -4409.550 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1151001, name = "ENTER_REGION_151001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151001", action = "action_EVENT_ENTER_REGION_151001" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 151003, gadget_id = 70220048, pos = { x = -2329.573, y = 212.805, z = -4415.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 151004, gadget_id = 70220048, pos = { x = -2330.484, y = 212.674, z = -4413.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
		{ config_id = 151006, gadget_id = 70220048, pos = { x = -2328.674, y = 212.192, z = -4413.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
	}
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
		gadgets = { 151002, 151007, 151008 },
		regions = { 151001 },
		triggers = { "ENTER_REGION_151001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_151001(context, evt)
	if evt.param1 ~= 151001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end