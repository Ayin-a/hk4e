-- 基础信息
local base_info = {
	group_id = 133106429
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
	{ config_id = 429002, gadget_id = 70500000, pos = { x = -787.590, y = 376.267, z = 2054.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 9192, area_id = 19 },
	{ config_id = 429003, gadget_id = 70500000, pos = { x = -787.818, y = 377.010, z = 2057.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2028, area_id = 19 },
	{ config_id = 429004, gadget_id = 70500000, pos = { x = -786.909, y = 376.913, z = 2058.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2028, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 429001, shape = RegionShape.SPHERE, radius = 35, pos = { x = -756.358, y = 376.094, z = 2057.790 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1429001, name = "ENTER_REGION_429001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_429001", action = "action_EVENT_ENTER_REGION_429001" }
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
		gadgets = { 429002, 429003, 429004 },
		regions = { 429001 },
		triggers = { "ENTER_REGION_429001" },
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
function condition_EVENT_ENTER_REGION_429001(context, evt)
	if evt.param1 ~= 429001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_429001(context, evt)
	-- 调用提示id为 310642901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310642901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end