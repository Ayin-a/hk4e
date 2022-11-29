-- 基础信息
local base_info = {
	group_id = 133304034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 22010101, pos = { x = -1468.577, y = 156.248, z = 2606.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "深渊法师", isOneoff = true, pose_id = 9013, area_id = 21 },
	{ config_id = 34002, monster_id = 22010401, pos = { x = -1465.214, y = 156.498, z = 2607.640 }, rot = { x = 0.000, y = 264.551, z = 0.000 }, level = 30, drop_tag = "深渊法师", isOneoff = true, pose_id = 9013, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34003, gadget_id = 70300107, pos = { x = -1467.943, y = 156.920, z = 2608.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 }
}

-- 区域
regions = {
	-- 一次性开车
	{ config_id = 34004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1467.943, y = 156.920, z = 2608.152 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 一次性开车
	{ config_id = 1034004, name = "ENTER_REGION_34004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34004", action = "action_EVENT_ENTER_REGION_34004" }
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
		monsters = { 34001, 34002 },
		gadgets = { 34003 },
		regions = { 34004 },
		triggers = { "ENTER_REGION_34004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_34004(context, evt)
	if evt.param1 ~= 34004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34004(context, evt)
	-- 调用提示id为 33040208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end