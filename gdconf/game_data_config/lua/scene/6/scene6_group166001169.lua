-- 基础信息
local base_info = {
	group_id = 166001169
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 169001, monster_id = 20010101, pos = { x = 677.479, y = 769.456, z = 139.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 300 },
	{ config_id = 169002, monster_id = 20010101, pos = { x = 669.844, y = 780.494, z = 117.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 300 },
	{ config_id = 169004, monster_id = 20010201, pos = { x = 715.214, y = 774.092, z = 110.792 }, rot = { x = 0.000, y = 277.149, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 300 },
	{ config_id = 169005, monster_id = 28040102, pos = { x = 689.278, y = 772.600, z = 110.939 }, rot = { x = 0.000, y = 100.253, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 300 },
	{ config_id = 169006, monster_id = 28040102, pos = { x = 696.240, y = 772.600, z = 116.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 300 },
	{ config_id = 169007, monster_id = 28040102, pos = { x = 723.573, y = 772.600, z = 79.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 169003, gadget_id = 70290395, pos = { x = 699.032, y = 761.971, z = 153.534 }, rot = { x = 357.726, y = 300.994, z = 358.294 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 169008, gadget_id = 70290308, pos = { x = 695.783, y = 763.074, z = 158.127 }, rot = { x = 6.173, y = 359.262, z = 354.596 }, level = 32, area_id = 300 },
	{ config_id = 169009, gadget_id = 70290308, pos = { x = 696.648, y = 763.020, z = 157.504 }, rot = { x = 353.752, y = 142.327, z = 352.921 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 169010, shape = RegionShape.SPHERE, radius = 15, pos = { x = 687.652, y = 781.714, z = 113.554 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1169010, name = "ENTER_REGION_169010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_169010" },
	{ config_id = 1169011, name = "GROUP_LOAD_169011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_169011", action = "action_EVENT_GROUP_LOAD_169011", trigger_count = 0 }
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
		monsters = { 169001, 169002, 169004, 169005, 169006, 169007 },
		gadgets = { 169003, 169008, 169009 },
		regions = { 169010 },
		triggers = { "ENTER_REGION_169010", "GROUP_LOAD_169011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_169010(context, evt)
	-- 调用提示id为 60010272 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010272) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_169011(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001169}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_169011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 169003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end