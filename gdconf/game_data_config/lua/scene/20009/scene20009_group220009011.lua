-- 基础信息
local base_info = {
	group_id = 220009011
}

-- Trigger变量
local defs = {
	gadget_id_1 = 8,
	gadget_id_2 = 9,
	gadget_id_3 = 10,
	gadget_id_4 = 11,
	gadget_id_5 = 12,
	gadget_id_6 = 13,
	gadget_id_7 = 14,
	gadget_id_8 = 15,
	gadget_id_9 = 17,
	gadget_id_10 = 18,
	gadget_id_11 = 19,
	gadget_id_12 = 20,
	gadget_id_13 = 21
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
	{ config_id = 264, gadget_id = 70900007, pos = { x = -127.457, y = -12.292, z = 105.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 265, gadget_id = 70900202, pos = { x = -127.446, y = -10.741, z = 105.566 }, rot = { x = 0.000, y = 273.797, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 48, shape = RegionShape.SPHERE, radius = 5, pos = { x = -110.526, y = -12.484, z = 125.723 } },
	{ config_id = 55, shape = RegionShape.SPHERE, radius = 5, pos = { x = -128.157, y = -12.296, z = 106.285 } },
	{ config_id = 57, shape = RegionShape.SPHERE, radius = 5, pos = { x = -128.394, y = -12.404, z = 103.065 } }
}

-- 触发器
triggers = {
	{ config_id = 1000047, name = "GADGET_STATE_CHANGE_47", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47", action = "action_EVENT_GADGET_STATE_CHANGE_47" },
	{ config_id = 1000048, name = "ENTER_REGION_48", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48", action = "action_EVENT_ENTER_REGION_48", forbid_guest = false },
	{ config_id = 1000055, name = "ENTER_REGION_55", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55", action = "action_EVENT_ENTER_REGION_55", forbid_guest = false },
	{ config_id = 1000057, name = "ENTER_REGION_57", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57", action = "action_EVENT_ENTER_REGION_57", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "isoff", value = 0, no_refresh = true },
	{ config_id = 2, name = "windon1", value = 0, no_refresh = true },
	{ config_id = 3, name = "windon2", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { 48, 55, 57 },
		triggers = { "GADGET_STATE_CHANGE_47", "ENTER_REGION_48", "ENTER_REGION_55", "ENTER_REGION_57" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	if 264 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  return -1
	end
	
	if 0 ~= ScriptLib.ShowClientGuide(context, "GuideAvatarFlyInWind") then
	  return -1
	end
	
	-- 将本组内变量名为 "windon1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "windon1", 1) then
	  return -1
	end
	
	-- 解锁目标8
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_1) then
		return -1
	end
	
	-- 解锁目标9
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_2) then
		return -1
	end
	
	-- 解锁目标10
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_3) then
		return -1
	end
	
	-- 解锁目标11
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_4) then
		return -1
	end
	
	-- 解锁目标12
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_5) then
		return -1
	end
	
	-- 解锁目标13
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_6) then
		return -1
	end
	
	-- 解锁目标14
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_7) then
		return -1
	end
	
	-- 解锁目标15
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_8) then
		return -1
	end
	
	-- 解锁目标17
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_9) then
		return -1
	end
	
	-- 解锁目标18
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_10) then
		return -1
	end
	
	-- 解锁目标19
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_11) then
		return -1
	end
	
	-- 解锁目标20
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_12) then
		return -1
	end
	
	-- 解锁目标21
	if 0 ~= ScriptLib.UnlockForce(context, defs.gadget_id_13) then
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220009011, monsters = {}, gadgets = {265} }) then
			return -1
		end
	
	
	if ScriptLib.GetGroupVariableValue(context, "windon1") + ScriptLib.GetGroupVariableValue(context, "windon2") > 1 then
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220009011") then
	  return -1
	end
	
	end
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48(context, evt)
	if evt.param1 ~= 48 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48(context, evt)
	-- 创建id为264的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 264 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_55(context, evt)
	if evt.param1 ~= 55 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_55(context, evt)
	-- 调用提示id为 1031001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1031001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为265的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 265 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57(context, evt)
	if evt.param1 ~= 57 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57(context, evt)
	
	
	-- 将本组内变量名为 "windon2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "windon2", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "windon1") + ScriptLib.GetGroupVariableValue(context, "windon2") >1 then
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220009011") then
	  return -1
	end
	
	end
	
	return 0
end