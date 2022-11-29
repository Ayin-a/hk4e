-- 基础信息
local base_info = {
	group_id = 139999004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 20011301, pos = { x = -0.094, y = 0.004, z = -0.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 25, monster_id = 20011201, pos = { x = 0.833, y = 0.215, z = -1.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 26, monster_id = 20011201, pos = { x = 1.905, y = 0.057, z = -0.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 27, monster_id = 20011201, pos = { x = -0.315, y = -0.045, z = 1.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4001, monster_id = 20010901, pos = { x = -0.220, y = -0.045, z = 0.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007 }, area_id = 1 },
	{ config_id = 4002, monster_id = 20010801, pos = { x = -0.978, y = -0.080, z = 1.249 }, rot = { x = 0.000, y = 116.752, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4003, monster_id = 20010801, pos = { x = 1.038, y = -0.039, z = 0.554 }, rot = { x = 0.000, y = 225.243, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4004, monster_id = 20010801, pos = { x = 0.112, y = 0.214, z = -1.716 }, rot = { x = 3.871, y = 7.274, z = 3.913 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4005, monster_id = 20010801, pos = { x = 1.252, y = 0.108, z = -0.766 }, rot = { x = 3.871, y = 327.562, z = 3.913 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4006, monster_id = 20010601, pos = { x = 0.205, y = 0.040, z = -0.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007 }, area_id = 1 },
	{ config_id = 4007, monster_id = 20010701, pos = { x = 0.272, y = -0.038, z = 1.564 }, rot = { x = 0.000, y = 240.916, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007 }, area_id = 1 },
	{ config_id = 4008, monster_id = 20010501, pos = { x = -1.782, y = -0.082, z = 0.354 }, rot = { x = 7.277, y = 64.546, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4009, monster_id = 20010501, pos = { x = 0.583, y = -0.073, z = 0.925 }, rot = { x = 7.277, y = 64.546, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4010, monster_id = 20010501, pos = { x = -0.593, y = 0.115, z = -1.140 }, rot = { x = 7.277, y = 64.546, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4011, monster_id = 20010501, pos = { x = 1.705, y = 0.174, z = -1.425 }, rot = { x = 7.277, y = 64.546, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4012, monster_id = 20011101, pos = { x = 0.211, y = -0.019, z = 0.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007 }, area_id = 1 },
	{ config_id = 4013, monster_id = 20011001, pos = { x = 1.461, y = 0.073, z = -0.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4014, monster_id = 20011001, pos = { x = -0.056, y = -0.067, z = 1.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4015, monster_id = 20011001, pos = { x = -1.235, y = -0.039, z = 0.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4016, monster_id = 20011001, pos = { x = 0.346, y = 0.132, z = -1.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4017, monster_id = 20011001, pos = { x = 1.142, y = -0.043, z = 1.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 },
	{ config_id = 4018, monster_id = 20011201, pos = { x = -1.250, y = 0.043, z = -0.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 901, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 24, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.126, y = -0.005, z = 0.026 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "ANY_MONSTER_DIE_9", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9", action = "action_EVENT_ANY_MONSTER_DIE_9" },
	{ config_id = 1000024, name = "ENTER_REGION_24", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24", action = "action_EVENT_ENTER_REGION_24", forbid_guest = false }
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
		monsters = { 23, 25, 26, 27, 4018 },
		gadgets = { },
		regions = { 24 },
		triggers = { "ANY_MONSTER_DIE_9", "ENTER_REGION_24" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { 24 },
		triggers = { "ANY_MONSTER_DIE_9", "ENTER_REGION_24" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4007, 4008, 4009, 4010, 4011 },
		gadgets = { },
		regions = { 24 },
		triggers = { "ANY_MONSTER_DIE_9", "ENTER_REGION_24" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4012, 4013, 4014, 4015, 4016, 4017 },
		gadgets = { },
		regions = { 24 },
		triggers = { "ANY_MONSTER_DIE_9", "ENTER_REGION_24" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 4, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24(context, evt)
	if evt.param1 ~= 24 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24(context, evt)
	-- 调用提示id为 1110013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end