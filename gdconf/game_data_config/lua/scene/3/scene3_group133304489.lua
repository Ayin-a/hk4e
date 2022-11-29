-- 基础信息
local base_info = {
	group_id = 133304489
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 489007, monster_id = 26090201, pos = { x = -1190.350, y = 285.034, z = 2519.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 489008, monster_id = 26090801, pos = { x = -1191.598, y = 283.927, z = 2522.218 }, rot = { x = 0.000, y = 174.086, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 489009, monster_id = 26090801, pos = { x = -1188.824, y = 283.710, z = 2522.708 }, rot = { x = 0.000, y = 174.606, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 489010, monster_id = 26090201, pos = { x = -1206.144, y = 289.151, z = 2507.225 }, rot = { x = 0.000, y = 318.711, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 489011, monster_id = 26090201, pos = { x = -1214.561, y = 282.823, z = 2516.111 }, rot = { x = 0.000, y = 134.258, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 489001, gadget_id = 70220020, pos = { x = -1190.000, y = 284.436, z = 2531.000 }, rot = { x = 0.000, y = 279.822, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 489002, gadget_id = 70220020, pos = { x = -1190.163, y = 285.530, z = 2531.049 }, rot = { x = 11.526, y = 283.819, z = 340.107 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 489003, gadget_id = 70220020, pos = { x = -1190.097, y = 285.625, z = 2531.559 }, rot = { x = 357.225, y = 86.671, z = 330.716 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 489004, gadget_id = 70220020, pos = { x = -1190.519, y = 286.556, z = 2531.078 }, rot = { x = 354.817, y = 283.802, z = 22.206 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 489005, gadget_id = 70210101, pos = { x = -1187.897, y = 285.345, z = 2527.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 489006, gadget_id = 70210101, pos = { x = -1194.227, y = 285.130, z = 2528.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1489012, name = "GROUP_LOAD_489012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_489012", action = "action_EVENT_GROUP_LOAD_489012" }
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
		gadgets = { 489001, 489002, 489003, 489004, 489005, 489006 },
		regions = { },
		triggers = { "GROUP_LOAD_489012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 489007, 489008, 489009, 489010, 489011 },
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
function condition_EVENT_GROUP_LOAD_489012(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_489012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304489, 2)
	
	return 0
end

require "V3_0/DeathFieldStandard"