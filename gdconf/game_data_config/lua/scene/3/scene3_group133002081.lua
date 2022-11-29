-- 基础信息
local base_info = {
	group_id = 133002081
}

-- Trigger变量
local defs = {
	target_group = 133002100,
	circle_region = 81016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 28020311, pos = { x = 1751.789, y = 206.352, z = -302.744 }, rot = { x = 0.000, y = 127.456, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 81009, monster_id = 28020311, pos = { x = 1772.352, y = 210.859, z = -278.576 }, rot = { x = 0.000, y = 107.766, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 81011, monster_id = 28020107, pos = { x = 1752.647, y = 211.523, z = -275.965 }, rot = { x = 0.000, y = 149.042, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 81013, monster_id = 28020311, pos = { x = 1748.095, y = 209.554, z = -287.004 }, rot = { x = 0.000, y = 285.553, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3 },
	{ config_id = 81024, monster_id = 28020107, pos = { x = 1763.979, y = 211.699, z = -271.914 }, rot = { x = 0.000, y = 149.042, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81003, gadget_id = 70800236, pos = { x = 1770.525, y = 211.342, z = -272.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81004, gadget_id = 70800237, pos = { x = 1781.781, y = 207.238, z = -302.750 }, rot = { x = 0.000, y = 200.732, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81005, gadget_id = 70710109, pos = { x = 1758.044, y = 206.465, z = -297.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81006, gadget_id = 70800236, pos = { x = 1751.576, y = 206.773, z = -298.105 }, rot = { x = 0.000, y = 101.847, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81007, gadget_id = 71700435, pos = { x = 1772.581, y = 211.398, z = -270.655 }, rot = { x = 0.000, y = 28.619, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81008, gadget_id = 70800236, pos = { x = 1777.676, y = 210.499, z = -281.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81010, gadget_id = 70800236, pos = { x = 1759.032, y = 211.580, z = -270.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81012, gadget_id = 70800235, pos = { x = 1755.050, y = 211.438, z = -273.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81014, gadget_id = 70800236, pos = { x = 1754.576, y = 206.613, z = -297.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81021, gadget_id = 70300092, pos = { x = 1757.312, y = 206.696, z = -296.843 }, rot = { x = 0.000, y = 247.024, z = 9.092 }, level = 1, area_id = 3 },
	{ config_id = 81022, gadget_id = 70300092, pos = { x = 1782.929, y = 208.985, z = -287.628 }, rot = { x = 0.000, y = 113.855, z = 341.260 }, level = 1, area_id = 3 },
	{ config_id = 81023, gadget_id = 71700435, pos = { x = 1781.092, y = 209.171, z = -287.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81025, gadget_id = 70800236, pos = { x = 1747.968, y = 210.280, z = -281.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81026, gadget_id = 70800236, pos = { x = 1752.675, y = 209.591, z = -284.724 }, rot = { x = 0.000, y = 59.093, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81027, gadget_id = 70800235, pos = { x = 1746.080, y = 206.434, z = -302.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81029, gadget_id = 70800236, pos = { x = 1777.153, y = 210.792, z = -278.767 }, rot = { x = 0.000, y = 234.404, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81030, gadget_id = 70800236, pos = { x = 1779.700, y = 210.737, z = -279.814 }, rot = { x = 0.000, y = 241.198, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 81031, gadget_id = 70800236, pos = { x = 1750.294, y = 209.960, z = -282.968 }, rot = { x = 0.000, y = 209.338, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 81002, shape = RegionShape.POLYGON, pos = { x = 1735.099, y = 10.000, z = -308.622 }, height = 40.000, point_array = { { x = 1770.000, y = -338.572 }, { x = 1760.153, y = -296.763 }, { x = 1744.078, y = -291.585 }, { x = 1700.199, y = -278.672 }, { x = 1737.844, y = -335.275 } }, area_id = 3 },
	-- ability
	{ config_id = 81015, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1766.698, y = 208.262, z = -294.848 }, area_id = 3 },
	-- 进入区域reminder
	{ config_id = 81016, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1764.930, y = 208.551, z = -293.056 }, area_id = 3 },
	-- 给注目镜+reminder
	{ config_id = 81032, shape = RegionShape.POLYGON, pos = { x = 1742.729, y = 108.002, z = -306.524 }, height = 246.004, point_array = { { x = 1746.714, y = -336.641 }, { x = 1744.131, y = -328.326 }, { x = 1741.702, y = -319.970 }, { x = 1739.753, y = -312.765 }, { x = 1737.383, y = -304.058 }, { x = 1733.328, y = -290.626 }, { x = 1729.305, y = -278.550 }, { x = 1735.489, y = -276.407 }, { x = 1748.909, y = -299.877 }, { x = 1753.613, y = -303.608 }, { x = 1755.158, y = -314.696 }, { x = 1754.629, y = -322.447 }, { x = 1756.152, y = -335.060 } }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1081002, name = "ENTER_REGION_81002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81002", action = "action_EVENT_ENTER_REGION_81002" },
	-- 进入区域reminder
	{ config_id = 1081016, name = "ENTER_REGION_81016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81016", action = "", trigger_count = 0 },
	-- 怪物所剩无几reminder
	{ config_id = 1081017, name = "ANY_MONSTER_DIE_81017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81017", action = "action_EVENT_ANY_MONSTER_DIE_81017" },
	-- 怪物清空reminder
	{ config_id = 1081018, name = "ANY_MONSTER_DIE_81018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_81018", action = "action_EVENT_ANY_MONSTER_DIE_81018" },
	-- 给注目镜+reminder
	{ config_id = 1081032, name = "ENTER_REGION_81032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81032", action = "action_EVENT_ENTER_REGION_81032" }
}

-- 点位
points = {
	{ config_id = 81020, pos = { x = 1778.280, y = 210.688, z = -279.917 }, rot = { x = 0.000, y = 273.237, z = 0.000 }, area_id = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1081019, name = "ANY_MONSTER_DIE_81019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_81019", trigger_count = 0 }
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
		monsters = { 81001, 81009, 81011, 81013, 81024 },
		gadgets = { 81003, 81004, 81005, 81006, 81007, 81008, 81010, 81012, 81014, 81021, 81022, 81023, 81025, 81026, 81027, 81029, 81030, 81031 },
		regions = { 81002, 81015, 81016 },
		triggers = { "ENTER_REGION_81002", "ENTER_REGION_81016", "ANY_MONSTER_DIE_81017", "ANY_MONSTER_DIE_81018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 81032 },
		triggers = { "ENTER_REGION_81032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_81002(context, evt)
	if evt.param1 ~= 81002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81002(context, evt)
	-- 调用提示id为 400212 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400212) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81016(context, evt)
	if evt.param1 ~= 81016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81017(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81017(context, evt)
	-- 调用提示id为 400182 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002081, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_81018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_81018(context, evt)
	-- 调用提示id为 400183 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81032(context, evt)
	if evt.param1 ~= 81032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81032(context, evt)
	-- 触发镜头注目，注目位置为坐标（1725.366，201.7879，-322.6693），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1725.366, y=201.7879, z=-322.6693}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400212 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400212) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/Activity_Hunt_Stage_2"