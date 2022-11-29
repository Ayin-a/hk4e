-- 基础信息
local base_info = {
	group_id = 139999017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21010601, pos = { x = -1.282, y = -0.817, z = -0.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 17002, monster_id = 21010101, pos = { x = 0.209, y = -0.748, z = 1.187 }, rot = { x = 0.000, y = 262.433, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 17003, monster_id = 21020301, pos = { x = 2.671, y = -0.830, z = 1.141 }, rot = { x = 0.000, y = 261.612, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 17004, monster_id = 21030101, pos = { x = 0.657, y = -0.908, z = 2.604 }, rot = { x = 0.000, y = 222.947, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 17005, monster_id = 21010901, pos = { x = 0.403, y = -0.743, z = 0.597 }, rot = { x = 0.000, y = 281.747, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 17006, monster_id = 21010901, pos = { x = -0.093, y = -0.971, z = 2.720 }, rot = { x = 0.000, y = 222.070, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 17011, monster_id = 20011201, pos = { x = -1.355, y = -0.373, z = 0.909 }, rot = { x = 0.000, y = 262.433, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, pose_id = 901, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17007, gadget_id = 70220005, pos = { x = -2.707, y = -0.756, z = 0.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 17008, gadget_id = 70220005, pos = { x = -2.384, y = -0.851, z = -0.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 17009, gadget_id = 70300102, pos = { x = -1.153, y = -1.211, z = 0.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 17010, gadget_id = 70300087, pos = { x = -1.376, y = -0.823, z = 0.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 17013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.749, y = -1.087, z = -0.363 }, area_id = 1 },
	{ config_id = 17014, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.425, y = -0.449, z = -0.243 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1017012, name = "ANY_MONSTER_DIE_17012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17012", action = "action_EVENT_ANY_MONSTER_DIE_17012" },
	{ config_id = 1017013, name = "ENTER_REGION_17013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17013", action = "action_EVENT_ENTER_REGION_17013", forbid_guest = false },
	{ config_id = 1017014, name = "ENTER_REGION_17014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17014", action = "action_EVENT_ENTER_REGION_17014", forbid_guest = false }
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
		monsters = { 17001, 17002, 17003, 17011 },
		gadgets = { 17009, 17010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 17001, 17003, 17004, 17011 },
		gadgets = { 17009, 17010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 17001, 17003, 17005, 17006, 17011 },
		gadgets = { 17007, 17008, 17009, 17010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17012(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 17, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17013(context, evt)
	if evt.param1 ~= 17013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17013(context, evt)
	-- 调用提示id为 1110007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17014(context, evt)
	if evt.param1 ~= 17014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17014(context, evt)
	-- 调用提示id为 1110027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end