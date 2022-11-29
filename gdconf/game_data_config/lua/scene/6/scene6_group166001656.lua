-- 基础信息
local base_info = {
	group_id = 166001656
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
	{ config_id = 656002, gadget_id = 70360001, pos = { x = 918.776, y = 1024.624, z = 853.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 656001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 918.505, y = 1023.283, z = 851.571 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1656001, name = "ENTER_REGION_656001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_656001", action = "action_EVENT_ENTER_REGION_656001" }
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
		gadgets = { 656002 },
		regions = { 656001 },
		triggers = { "ENTER_REGION_656001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_656001(context, evt)
	if evt.param1 ~= 656001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_656001(context, evt)
	-- 调用提示id为 60010358 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010358) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end