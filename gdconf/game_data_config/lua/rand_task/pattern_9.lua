-- 基础信息
local base_info = {
	group_id = 139999009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42, monster_id = 21010201, pos = { x = -1.931, y = -0.011, z = -0.267 }, rot = { x = 0.000, y = 71.258, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 43, monster_id = 21010201, pos = { x = 2.196, y = 0.113, z = -0.133 }, rot = { x = 0.000, y = 258.020, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 44, monster_id = 21010201, pos = { x = 0.483, y = 0.303, z = 1.407 }, rot = { x = 0.000, y = 181.254, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10, gadget_id = 70300092, pos = { x = -0.057, y = -0.119, z = -0.016 }, rot = { x = 0.000, y = 35.923, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 29, shape = RegionShape.SPHERE, radius = 50, pos = { x = 0.939, y = 1.405, z = -0.503 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000016, name = "ANY_GADGET_DIE_16", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_16", action = "action_EVENT_ANY_GADGET_DIE_16" },
	{ config_id = 1000017, name = "ANY_MONSTER_DIE_17", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17", action = "action_EVENT_ANY_MONSTER_DIE_17" },
	{ config_id = 1000029, name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29", forbid_guest = false }
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
		monsters = { 42, 43, 44 },
		gadgets = { 10 },
		regions = { 29 },
		triggers = { "ANY_MONSTER_DIE_17", "ENTER_REGION_29" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_16(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_16(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 9, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 9, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 调用提示id为 1110030 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end