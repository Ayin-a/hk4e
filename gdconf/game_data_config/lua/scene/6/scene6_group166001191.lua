-- 基础信息
local base_info = {
	group_id = 166001191
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
	{ config_id = 191002, gadget_id = 70360001, pos = { x = 58.146, y = 313.108, z = 376.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 191003, gadget_id = 70360001, pos = { x = 429.596, y = 382.044, z = 533.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 191001, shape = RegionShape.SPHERE, radius = 8, pos = { x = 57.883, y = 312.533, z = 381.882 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1191001, name = "ENTER_REGION_191001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191001", action = "action_EVENT_ENTER_REGION_191001" }
}

-- 变量
variables = {
	{ config_id = 1, name = "bell", value = 0, no_refresh = true }
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
		gadgets = { 191003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 191002 },
		regions = { 191001 },
		triggers = { "ENTER_REGION_191001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_191001(context, evt)
	if evt.param1 ~= 191001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"bell"为0
	if ScriptLib.GetGroupVariableValue(context, "bell") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191001(context, evt)
	-- 调用提示id为 60010158 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010158) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end