-- 基础信息
local base_info = {
	group_id = 133301293
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
	{ config_id = 293001, gadget_id = 70290498, pos = { x = -468.085, y = 201.078, z = 3160.700 }, rot = { x = 0.000, y = 240.118, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 293005, gadget_id = 70210101, pos = { x = -468.085, y = 200.993, z = 3160.700 }, rot = { x = 0.000, y = 240.118, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 293002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -468.085, y = 200.993, z = 3160.700 }, area_id = 22 },
	{ config_id = 293003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -468.245, y = 201.130, z = 3160.499 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1293002, name = "ENTER_REGION_293002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1293003, name = "ENTER_REGION_293003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_293003", action = "action_EVENT_ENTER_REGION_293003" }
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
	end_suite = 3,
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
		regions = { 293002 },
		triggers = { "ENTER_REGION_293002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 293001 },
		regions = { 293003 },
		triggers = { "ENTER_REGION_293003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 293005 },
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
function condition_EVENT_ENTER_REGION_293003(context, evt)
	if evt.param1 ~= 293003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133301293, 293001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_293003(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end