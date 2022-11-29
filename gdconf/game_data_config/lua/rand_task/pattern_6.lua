-- 基础信息
local base_info = {
	group_id = 139999006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33, monster_id = 21010201, pos = { x = 1.714, y = 0.072, z = 0.095 }, rot = { x = 0.000, y = 214.664, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 34, monster_id = 21010201, pos = { x = 2.726, y = 0.139, z = 1.447 }, rot = { x = 0.000, y = 214.664, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 35, monster_id = 21010201, pos = { x = 0.014, y = 0.019, z = 1.591 }, rot = { x = 0.000, y = 214.664, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 6001, monster_id = 21030201, pos = { x = 1.106, y = 0.061, z = 2.560 }, rot = { x = 0.112, y = 210.190, z = 0.109 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 6002, monster_id = 21020201, pos = { x = 0.263, y = 0.109, z = 3.626 }, rot = { x = 0.000, y = 170.966, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 6003, monster_id = 21020101, pos = { x = 1.833, y = 0.057, z = 3.719 }, rot = { x = 0.000, y = 217.247, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7, gadget_id = 70300089, pos = { x = 0.660, y = -0.139, z = -1.270 }, rot = { x = 0.000, y = 305.453, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 8, gadget_id = 70300089, pos = { x = -1.089, y = -0.074, z = 0.187 }, rot = { x = 0.000, y = 305.453, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 26, shape = RegionShape.SPHERE, radius = 50, pos = { x = 0.057, y = 0.003, z = 0.090 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000026, name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26", forbid_guest = false },
	{ config_id = 1000032, name = "ANY_GADGET_DIE_32", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_32", action = "action_EVENT_ANY_GADGET_DIE_32" },
	{ config_id = 1006033, name = "ANY_GADGET_DIE_6033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6033", action = "action_EVENT_ANY_GADGET_DIE_6033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_7", value = 0, no_refresh = false },
	{ config_id = 2, name = "is_8", value = 0, no_refresh = false }
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
		monsters = { 33, 34, 35 },
		gadgets = { 7, 8 },
		regions = { 26 },
		triggers = { "ENTER_REGION_26", "ANY_GADGET_DIE_32", "ANY_GADGET_DIE_6033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 33, 35, 6001 },
		gadgets = { 7, 8 },
		regions = { 26 },
		triggers = { "ENTER_REGION_26", "ANY_GADGET_DIE_32", "ANY_GADGET_DIE_6033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 33, 35, 6002 },
		gadgets = { 7, 8 },
		regions = { 26 },
		triggers = { "ENTER_REGION_26", "ANY_GADGET_DIE_32", "ANY_GADGET_DIE_6033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 33, 35, 6003 },
		gadgets = { 7, 8 },
		regions = { 26 },
		triggers = { "ENTER_REGION_26", "ANY_GADGET_DIE_32", "ANY_GADGET_DIE_6033" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	-- 调用提示id为 1110019 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_32(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_32(context, evt)
	
	-- 将本组内变量名为 "is_7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_7", 1) then
	  return -1
	end
	
	
	-- 获取本组内变量名�? "is_7" 的变量值
	
	if ScriptLib.GetGroupVariableValue(context, "is_7") + ScriptLib.GetGroupVariableValue(context, "is_8") == 2 then
	
	    ScriptLib.FinishRandTask(context, 6, true)
	
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6033(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6033(context, evt)
	
	-- 将本组内变量名为 "is_7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_8", 1) then
	  return -1
	end
	
	
	-- 获取本组内变量名�? "is_7" 的变量值
	
	if ScriptLib.GetGroupVariableValue(context, "is_7") + ScriptLib.GetGroupVariableValue(context, "is_8") == 2 then
	
	    ScriptLib.FinishRandTask(context, 6, true)
	
	end
	
	
	
	return 0
end