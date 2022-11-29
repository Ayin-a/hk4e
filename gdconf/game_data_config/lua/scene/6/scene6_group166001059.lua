-- 基础信息
local base_info = {
	group_id = 166001059
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
	{ config_id = 59002, gadget_id = 70360001, pos = { x = 521.160, y = 97.876, z = 1204.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 59001, shape = RegionShape.POLYGON, pos = { x = 497.620, y = 97.132, z = 1220.947 }, height = 41.811, point_array = { { x = 522.680, y = 1214.350 }, { x = 514.307, y = 1216.062 }, { x = 511.549, y = 1212.755 }, { x = 511.713, y = 1198.733 }, { x = 465.659, y = 1208.962 }, { x = 529.582, y = 1243.160 } }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1059001, name = "ENTER_REGION_59001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59001", action = "action_EVENT_ENTER_REGION_59001" }
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
		gadgets = { 59002 },
		regions = { 59001 },
		triggers = { "ENTER_REGION_59001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_59001(context, evt)
	if evt.param1 ~= 59001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001059") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end