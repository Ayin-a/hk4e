-- 基础信息
local base_info = {
	group_id = 133302563
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
	{ config_id = 563001, gadget_id = 70290498, pos = { x = 164.071, y = 426.748, z = 2135.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 563002, gadget_id = 70210101, pos = { x = 164.185, y = 426.726, z = 2134.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 563005, gadget_id = 70220103, pos = { x = 160.153, y = 427.098, z = 2124.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 563003, shape = RegionShape.SPHERE, radius = 70, pos = { x = 163.583, y = 401.504, z = 2134.837 }, area_id = 20 },
	{ config_id = 563004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 164.439, y = 427.103, z = 2134.856 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1563003, name = "ENTER_REGION_563003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1563004, name = "ENTER_REGION_563004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_563004", action = "action_EVENT_ENTER_REGION_563004" }
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
		regions = { 563003 },
		triggers = { "ENTER_REGION_563003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 563001, 563005 },
		regions = { 563004 },
		triggers = { "ENTER_REGION_563004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 563002, 563005 },
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
function condition_EVENT_ENTER_REGION_563004(context, evt)
	if evt.param1 ~= 563004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133302563, 563001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_563004(context, evt)
	-- 调用提示id为 1111320 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111320) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end