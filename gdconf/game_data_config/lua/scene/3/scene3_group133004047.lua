-- 基础信息
local base_info = {
	group_id = 133004047
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
	{ config_id = 47001, gadget_id = 70310082, pos = { x = 1643.386, y = 255.163, z = -1389.702 }, rot = { x = 357.190, y = 147.369, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 47002, gadget_id = 70310082, pos = { x = 1763.078, y = 196.444, z = -1500.461 }, rot = { x = 357.216, y = 179.281, z = 358.231 }, level = 1, area_id = 2 },
	{ config_id = 47003, gadget_id = 70310082, pos = { x = 1764.365, y = 198.544, z = -1514.578 }, rot = { x = 352.643, y = 167.940, z = 2.385 }, level = 1, area_id = 2 },
	{ config_id = 47007, gadget_id = 70310089, pos = { x = 1655.221, y = 256.599, z = -1402.793 }, rot = { x = 354.716, y = 133.466, z = 359.099 }, level = 1, area_id = 2 },
	{ config_id = 47009, gadget_id = 70310089, pos = { x = 1673.260, y = 257.484, z = -1415.593 }, rot = { x = 358.271, y = 115.667, z = 0.564 }, level = 1, area_id = 2 },
	{ config_id = 47013, gadget_id = 70310082, pos = { x = 1684.597, y = 256.491, z = -1417.450 }, rot = { x = 18.628, y = 51.594, z = 1.519 }, level = 1, area_id = 2 },
	{ config_id = 47015, gadget_id = 70690013, pos = { x = 1696.783, y = 207.792, z = -1424.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 47016, gadget_id = 70310082, pos = { x = 1690.186, y = 253.091, z = -1413.790 }, rot = { x = 40.892, y = 55.551, z = 291.757 }, level = 1, area_id = 2 },
	{ config_id = 47019, gadget_id = 70310082, pos = { x = 1693.865, y = 245.042, z = -1413.044 }, rot = { x = 74.418, y = 151.595, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 47021, gadget_id = 70310089, pos = { x = 1697.222, y = 229.533, z = -1422.207 }, rot = { x = 57.213, y = 161.897, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 47026, gadget_id = 70310082, pos = { x = 1704.113, y = 217.370, z = -1429.267 }, rot = { x = 48.045, y = 135.280, z = 347.521 }, level = 1, area_id = 2 },
	{ config_id = 47031, gadget_id = 70310089, pos = { x = 1716.186, y = 204.900, z = -1442.958 }, rot = { x = 14.826, y = 123.736, z = 358.575 }, level = 1, area_id = 2 },
	{ config_id = 47036, gadget_id = 70310089, pos = { x = 1736.220, y = 198.675, z = -1460.461 }, rot = { x = 5.681, y = 134.865, z = 359.329 }, level = 1, area_id = 2 },
	{ config_id = 47041, gadget_id = 70310089, pos = { x = 1752.449, y = 196.186, z = -1478.781 }, rot = { x = 4.381, y = 139.560, z = 0.316 }, level = 1, area_id = 2 },
	{ config_id = 47043, gadget_id = 70310082, pos = { x = 1760.532, y = 196.060, z = -1489.318 }, rot = { x = 356.702, y = 147.114, z = 359.984 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	-- 用于发送lua通知，02完成，展示reminder
	{ config_id = 47018, shape = RegionShape.SPHERE, radius = 33, pos = { x = 1642.590, y = 253.927, z = -1394.001 }, area_id = 2 }
}

-- 触发器
triggers = {
	-- 用于发送lua通知，02完成，展示reminder
	{ config_id = 1047018, name = "ENTER_REGION_47018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47018", action = "action_EVENT_ENTER_REGION_47018", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1047005, name = "QUEST_START_47005", event = EventType.EVENT_QUEST_START, source = "7050102", condition = "", action = "action_EVENT_QUEST_START_47005", trigger_count = 0 },
		{ config_id = 1047006, name = "QUEST_FINISH_47006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_47006" }
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
		gadgets = { 47001, 47002, 47003, 47007, 47009, 47013, 47015, 47016, 47019, 47021, 47026, 47031, 47036, 47041, 47043 },
		regions = { 47018 },
		triggers = { "ENTER_REGION_47018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_47018(context, evt)
	if evt.param1 ~= 47018 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050102finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1644.634,y=253.9267,z=-1388.139}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 70501031, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end