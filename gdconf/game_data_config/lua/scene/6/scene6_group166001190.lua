-- 基础信息
local base_info = {
	group_id = 166001190
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
	{ config_id = 190002, gadget_id = 70360001, pos = { x = 433.643, y = 380.671, z = 530.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 190003, gadget_id = 70360001, pos = { x = 676.583, y = 420.036, z = 762.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 190001, shape = RegionShape.POLYGON, pos = { x = 673.323, y = 432.289, z = 760.793 }, height = 24.178, point_array = { { x = 683.600, y = 769.081 }, { x = 673.964, y = 774.612 }, { x = 662.870, y = 772.040 }, { x = 660.747, y = 760.250 }, { x = 664.575, y = 750.482 }, { x = 670.695, y = 746.975 }, { x = 678.639, y = 749.596 }, { x = 685.898, y = 758.950 } }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1190001, name = "ENTER_REGION_190001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190001", action = "action_EVENT_ENTER_REGION_190001" }
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
		gadgets = { 190002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 190003 },
		regions = { 190001 },
		triggers = { "ENTER_REGION_190001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_190001(context, evt)
	if evt.param1 ~= 190001 then return false end
	
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
function action_EVENT_ENTER_REGION_190001(context, evt)
	-- 调用提示id为 60010155 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010155) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end