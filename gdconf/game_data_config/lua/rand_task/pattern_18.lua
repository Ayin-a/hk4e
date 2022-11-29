-- 基础信息
local base_info = {
	group_id = 139999018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 28020408, pos = { x = 1.594, y = -0.009, z = -2.513 }, rot = { x = 0.000, y = 328.309, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 1 },
	{ config_id = 18004, monster_id = 28020407, pos = { x = 1.594, y = -0.009, z = -2.513 }, rot = { x = 0.000, y = 328.309, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 1 },
	{ config_id = 18005, monster_id = 28020409, pos = { x = 1.594, y = -0.009, z = -2.513 }, rot = { x = 0.000, y = 328.309, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 1 },
	{ config_id = 18006, monster_id = 28020410, pos = { x = 1.594, y = -0.009, z = -2.513 }, rot = { x = 0.000, y = 328.309, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18002, gadget_id = 70710111, pos = { x = 0.001, y = 0.000, z = -0.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 12, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 18007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1.304, y = -0.167, z = 0.774 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1018003, name = "GADGET_STATE_CHANGE_18003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18003", action = "action_EVENT_GADGET_STATE_CHANGE_18003" },
	{ config_id = 1018007, name = "ENTER_REGION_18007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18007", action = "action_EVENT_ENTER_REGION_18007" }
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
	rand_suite = true
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
		monsters = { 18001 },
		gadgets = { 18002 },
		regions = { 18007 },
		triggers = { "GADGET_STATE_CHANGE_18003", "ENTER_REGION_18007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18004 },
		gadgets = { 18002 },
		regions = { 18007 },
		triggers = { "GADGET_STATE_CHANGE_18003", "ENTER_REGION_18007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 18005 },
		gadgets = { 18002 },
		regions = { 18007 },
		triggers = { "GADGET_STATE_CHANGE_18003", "ENTER_REGION_18007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 18006 },
		gadgets = { 18002 },
		regions = { 18007 },
		triggers = { "GADGET_STATE_CHANGE_18003", "ENTER_REGION_18007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18003(context, evt)
	if 18002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18003(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 18, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18007(context, evt)
	if evt.param1 ~= 18007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18007(context, evt)
	-- 调用提示id为 1110337 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110337) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end