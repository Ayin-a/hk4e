-- 基础信息
local base_info = {
	group_id = 133225015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 24010303, pos = { x = -6671.088, y = 193.513, z = -2653.037 }, rot = { x = 0.000, y = 116.445, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 15002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -6659.809, y = 193.481, z = -2657.259 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1015002, name = "ENTER_REGION_15002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15002", action = "action_EVENT_ENTER_REGION_15002" }
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
		monsters = { 15001 },
		gadgets = { },
		regions = { 15002 },
		triggers = { "ENTER_REGION_15002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15002(context, evt)
	if evt.param1 ~= 15002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6659,y=193,z=-2657}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31070403, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end