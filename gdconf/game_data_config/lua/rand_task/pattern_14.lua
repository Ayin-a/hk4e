-- 基础信息
local base_info = {
	group_id = 139999014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 23020101, pos = { x = 1.111, y = -0.158, z = -1.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 14004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.126, y = -0.004, z = 0.026 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "ANY_MONSTER_DIE_14003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14003", action = "action_EVENT_ANY_MONSTER_DIE_14003" },
	{ config_id = 1014004, name = "ENTER_REGION_14004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14004", action = "action_EVENT_ENTER_REGION_14004", forbid_guest = false }
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
		-- description = suite_2,
		monsters = { 14001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 14, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14004(context, evt)
	if evt.param1 ~= 14004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14004(context, evt)
	-- 调用提示id为 1110013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end