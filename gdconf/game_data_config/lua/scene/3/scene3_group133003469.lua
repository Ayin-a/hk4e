-- 基础信息
local base_info = {
	group_id = 133003469
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1601, monster_id = 21010501, pos = { x = 2144.166, y = 222.534, z = -1265.124 }, rot = { x = 0.000, y = 323.783, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 1602, monster_id = 21010501, pos = { x = 2145.823, y = 222.604, z = -1264.533 }, rot = { x = 0.000, y = 44.670, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 1603, monster_id = 21020201, pos = { x = 2142.886, y = 219.393, z = -1248.925 }, rot = { x = 0.000, y = 179.258, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 1604, monster_id = 21010201, pos = { x = 2142.948, y = 218.972, z = -1257.864 }, rot = { x = 0.000, y = 346.254, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 1605, monster_id = 21010201, pos = { x = 2141.575, y = 219.002, z = -1251.722 }, rot = { x = 0.000, y = 162.977, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4244, gadget_id = 70300083, pos = { x = 2139.275, y = 217.889, z = -1256.253 }, rot = { x = 7.493, y = 272.660, z = 358.188 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 567, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2142.801, y = 218.864, z = -1253.918 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000564, name = "ANY_MONSTER_DIE_564", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_564", trigger_count = 5 },
	{ config_id = 1000565, name = "ANY_GADGET_DIE_565", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_565", action = "action_EVENT_ANY_GADGET_DIE_565" },
	{ config_id = 1000566, name = "ANY_MONSTER_DIE_566", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_566", trigger_count = 5 },
	{ config_id = 1000567, name = "ENTER_REGION_567", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567", action = "action_EVENT_ENTER_REGION_567", trigger_count = 0 }
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
	suite = 2,
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
		monsters = { 1601, 1602, 1603, 1604, 1605 },
		gadgets = { 4244 },
		regions = { 567 },
		triggers = { "ANY_MONSTER_DIE_564", "ANY_GADGET_DIE_565", "ANY_MONSTER_DIE_566", "ENTER_REGION_567" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003469") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_565(context, evt)
	if 4244 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_565(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034691") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_566(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034691") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567(context, evt)
	if evt.param1 ~= 567 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330034692") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end