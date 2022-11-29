-- 基础信息
local base_info = {
	group_id = 133302561
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
	{ config_id = 561001, gadget_id = 70290498, pos = { x = -583.628, y = 106.339, z = 2343.521 }, rot = { x = 4.200, y = 338.398, z = 2.097 }, level = 27, area_id = 24 },
	{ config_id = 561002, gadget_id = 70210101, pos = { x = -583.628, y = 106.339, z = 2343.521 }, rot = { x = 4.200, y = 338.398, z = 2.097 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 561003, shape = RegionShape.SPHERE, radius = 30, pos = { x = -583.628, y = 106.339, z = 2343.521 }, area_id = 24 },
	{ config_id = 561004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -582.829, y = 106.339, z = 2341.819 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1561003, name = "ENTER_REGION_561003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1561004, name = "ENTER_REGION_561004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_561004", action = "action_EVENT_ENTER_REGION_561004" }
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
		regions = { 561003 },
		triggers = { "ENTER_REGION_561003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 561001 },
		regions = { 561004 },
		triggers = { "ENTER_REGION_561004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 561002 },
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
function condition_EVENT_ENTER_REGION_561004(context, evt)
	if evt.param1 ~= 561004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133302561, 561001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_561004(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end