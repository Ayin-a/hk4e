-- 基础信息
local base_info = {
	group_id = 133302560
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
	{ config_id = 560001, gadget_id = 70290498, pos = { x = -562.634, y = 132.579, z = 2270.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 560002, gadget_id = 70210101, pos = { x = -562.686, y = 132.470, z = 2270.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 560003, shape = RegionShape.SPHERE, radius = 30, pos = { x = -563.289, y = 132.476, z = 2270.576 }, area_id = 24 },
	{ config_id = 560004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -562.804, y = 132.476, z = 2270.681 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1560003, name = "ENTER_REGION_560003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1560004, name = "ENTER_REGION_560004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_560004", action = "action_EVENT_ENTER_REGION_560004" }
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
		regions = { 560003 },
		triggers = { "ENTER_REGION_560003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 560001 },
		regions = { 560004 },
		triggers = { "ENTER_REGION_560004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 560002 },
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
function condition_EVENT_ENTER_REGION_560004(context, evt)
	if evt.param1 ~= 560004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133302560, 560001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_560004(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end