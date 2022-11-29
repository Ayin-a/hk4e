-- 基础信息
local base_info = {
	group_id = 139999001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010201, pos = { x = -1.527, y = -0.097, z = -1.865 }, rot = { x = 0.000, y = 34.368, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 2, monster_id = 21010101, pos = { x = -1.952, y = 0.075, z = 1.059 }, rot = { x = 0.000, y = 111.684, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 3, monster_id = 21010101, pos = { x = 1.672, y = -0.034, z = -1.211 }, rot = { x = 0.000, y = 311.395, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 9, monster_id = 21010201, pos = { x = -1.861, y = 0.070, z = 1.009 }, rot = { x = 0.000, y = 120.967, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 10, monster_id = 21010201, pos = { x = -1.264, y = -0.124, z = -2.080 }, rot = { x = 0.000, y = 25.634, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 1 },
	{ config_id = 11, monster_id = 21010201, pos = { x = 1.701, y = -0.078, z = -1.134 }, rot = { x = 0.000, y = 309.409, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 12, monster_id = 20011201, pos = { x = -0.114, y = -0.194, z = -2.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 901, area_id = 1 },
	{ config_id = 13, monster_id = 20011201, pos = { x = -2.480, y = -0.011, z = -0.529 }, rot = { x = 0.000, y = 70.561, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 14, monster_id = 20011201, pos = { x = 0.411, y = 0.152, z = 1.990 }, rot = { x = 0.000, y = 70.561, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 15, monster_id = 20011201, pos = { x = 2.453, y = 0.086, z = 0.155 }, rot = { x = 0.000, y = 219.426, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 30, pos = { x = -0.042, y = -0.001, z = 0.000 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000021, name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", forbid_guest = false },
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" }
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
		-- description = ,
		monsters = { 1, 2, 3 },
		gadgets = { },
		regions = { 21 },
		triggers = { "ENTER_REGION_21", "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 9, 10, 11 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 12, 13, 14, 15 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	if evt.param1 ~= 21 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21(context, evt)
	-- 调用提示id为 1110005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 1, true)
	
	
	return 0
end