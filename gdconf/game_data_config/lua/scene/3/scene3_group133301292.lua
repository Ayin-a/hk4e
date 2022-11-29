-- 基础信息
local base_info = {
	group_id = 133301292
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
	{ config_id = 292001, gadget_id = 70290498, pos = { x = -354.271, y = 216.571, z = 3368.241 }, rot = { x = 359.948, y = 313.059, z = 359.940 }, level = 33, area_id = 22 },
	{ config_id = 292005, gadget_id = 70210101, pos = { x = -354.271, y = 216.571, z = 3368.241 }, rot = { x = 359.948, y = 313.059, z = 359.940 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 292002, shape = RegionShape.SPHERE, radius = 40, pos = { x = -354.255, y = 247.185, z = 3368.212 }, area_id = 22 },
	{ config_id = 292003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -354.501, y = 216.571, z = 3367.140 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1292002, name = "ENTER_REGION_292002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1292003, name = "ENTER_REGION_292003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292003", action = "action_EVENT_ENTER_REGION_292003" }
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
		regions = { 292002 },
		triggers = { "ENTER_REGION_292002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 292001 },
		regions = { 292003 },
		triggers = { "ENTER_REGION_292003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
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
function condition_EVENT_ENTER_REGION_292003(context, evt)
	if evt.param1 ~= 292003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133301292, 292001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292003(context, evt)
	-- 调用提示id为 1111323 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111323) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end