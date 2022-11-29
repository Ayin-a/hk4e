-- 基础信息
local base_info = {
	group_id = 133212582
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
	{ config_id = 582006, gadget_id = 70710732, pos = { x = -3965.895, y = 248.164, z = -2210.862 }, rot = { x = 4.986, y = 342.775, z = 1.458 }, level = 1, area_id = 13 },
	{ config_id = 582008, gadget_id = 70710732, pos = { x = -3968.052, y = 246.676, z = -2203.239 }, rot = { x = 8.152, y = 356.142, z = 0.001 }, level = 1, area_id = 13 },
	{ config_id = 582009, gadget_id = 70710732, pos = { x = -3967.286, y = 244.921, z = -2196.314 }, rot = { x = 6.595, y = 25.242, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 582010, gadget_id = 70710732, pos = { x = -3962.748, y = 242.433, z = -2190.766 }, rot = { x = 0.865, y = 68.374, z = 350.626 }, level = 1, area_id = 13 },
	{ config_id = 582011, gadget_id = 70710732, pos = { x = -3961.930, y = 250.702, z = -2219.455 }, rot = { x = 22.246, y = 336.344, z = 22.304 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 582004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3993.405, y = 257.527, z = -2212.596 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1582004, name = "ENTER_REGION_582004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_582004", action = "action_EVENT_ENTER_REGION_582004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 582001, gadget_id = 70710219, pos = { x = -3966.450, y = 248.060, z = -2208.592 }, rot = { x = 0.000, y = 334.860, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 582002, gadget_id = 70710219, pos = { x = -3968.158, y = 246.515, z = -2202.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 582003, gadget_id = 70710219, pos = { x = -3966.900, y = 244.923, z = -2195.516 }, rot = { x = 0.000, y = 21.674, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 582005, gadget_id = 70710219, pos = { x = -3961.134, y = 242.410, z = -2190.105 }, rot = { x = 0.000, y = 75.509, z = 0.000 }, level = 1, area_id = 13 },
		{ config_id = 582007, gadget_id = 70710219, pos = { x = -3963.679, y = 249.298, z = -2215.419 }, rot = { x = 0.000, y = 347.659, z = 0.000 }, level = 1, area_id = 13 }
	}
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
		monsters = { },
		gadgets = { 582006, 582008, 582009, 582010, 582011 },
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
function condition_EVENT_ENTER_REGION_582004(context, evt)
	if evt.param1 ~= 582004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_582004(context, evt)
	-- 调用提示id为 400062 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end