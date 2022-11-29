-- 基础信息
local base_info = {
	group_id = 133304441
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
	{ config_id = 441001, gadget_id = 70290498, pos = { x = -1520.490, y = 242.162, z = 2840.166 }, rot = { x = 0.000, y = 236.178, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 441002, gadget_id = 70210101, pos = { x = -1520.490, y = 242.162, z = 2840.166 }, rot = { x = 0.000, y = 236.178, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 441003, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1520.979, y = 242.011, z = 2840.072 }, area_id = 21 },
	{ config_id = 441004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1520.490, y = 242.162, z = 2840.166 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1441003, name = "ENTER_REGION_441003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1441004, name = "ENTER_REGION_441004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_441004", action = "action_EVENT_ENTER_REGION_441004" }
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
		regions = { 441003 },
		triggers = { "ENTER_REGION_441003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 441001 },
		regions = { 441004 },
		triggers = { "ENTER_REGION_441004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 441002 },
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
function condition_EVENT_ENTER_REGION_441004(context, evt)
	if evt.param1 ~= 441004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133304441, 441001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_441004(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end