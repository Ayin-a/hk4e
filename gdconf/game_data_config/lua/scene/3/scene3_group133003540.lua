-- 基础信息
local base_info = {
	group_id = 133003540
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 540005, monster_id = 21010601, pos = { x = 2185.818, y = 254.761, z = -1687.449 }, rot = { x = 0.000, y = 275.236, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 540006, monster_id = 21010601, pos = { x = 2197.145, y = 254.194, z = -1683.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 540007, monster_id = 21010201, pos = { x = 2191.246, y = 254.632, z = -1684.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 540001, gadget_id = 70300083, pos = { x = 2193.907, y = 253.791, z = -1680.956 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 540002, gadget_id = 70300083, pos = { x = 2187.042, y = 254.097, z = -1683.257 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 540003, gadget_id = 70300100, pos = { x = 2184.406, y = 254.648, z = -1687.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 540004, gadget_id = 70300100, pos = { x = 2197.012, y = 253.959, z = -1682.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 540009, shape = RegionShape.SPHERE, radius = 18.9, pos = { x = 2189.781, y = 249.139, z = -1656.237 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1540008, name = "ANY_MONSTER_DIE_540008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_540008", action = "action_EVENT_ANY_MONSTER_DIE_540008" },
	{ config_id = 1540009, name = "ENTER_REGION_540009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_540009", action = "action_EVENT_ENTER_REGION_540009" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 540005, 540006, 540007 },
		gadgets = { 540001, 540002, 540003, 540004 },
		regions = { 540009 },
		triggers = { "ANY_MONSTER_DIE_540008", "ENTER_REGION_540009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_540008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_540008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_540009(context, evt)
	if evt.param1 ~= 540009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_540009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2189,y=249,z=-1656}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1109007, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end