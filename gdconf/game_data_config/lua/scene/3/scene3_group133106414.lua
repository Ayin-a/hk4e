-- 基础信息
local base_info = {
	group_id = 133106414
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
	-- 流明石采集物
	{ config_id = 414001, gadget_id = 70500000, pos = { x = -739.418, y = 161.633, z = 1549.791 }, rot = { x = 353.605, y = 37.400, z = 282.389 }, level = 1, point_type = 9189, isOneoff = true, persistent = true, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 414002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -737.564, y = 162.105, z = 1550.481 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1414002, name = "ENTER_REGION_414002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_414002", action = "action_EVENT_ENTER_REGION_414002" }
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
		gadgets = { 414001 },
		regions = { 414002 },
		triggers = { "ENTER_REGION_414002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_414002(context, evt)
	if evt.param1 ~= 414002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_414002(context, evt)
	-- 调用提示id为 710440805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710440805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end