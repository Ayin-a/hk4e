-- 基础信息
local base_info = {
	group_id = 133102272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494, monster_id = 21010201, pos = { x = 960.527, y = 205.589, z = 160.738 }, rot = { x = 342.168, y = 267.850, z = 347.228 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 495, monster_id = 21010201, pos = { x = 959.171, y = 205.946, z = 160.502 }, rot = { x = 339.488, y = 207.773, z = 9.248 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 272001, monster_id = 21020201, pos = { x = 966.385, y = 206.027, z = 150.573 }, rot = { x = 0.000, y = 358.628, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 272002, monster_id = 21030201, pos = { x = 962.961, y = 206.141, z = 152.131 }, rot = { x = 0.000, y = 4.000, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 272003, monster_id = 21010501, pos = { x = 981.172, y = 203.837, z = 152.473 }, rot = { x = 0.000, y = 308.000, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 272004, monster_id = 21010501, pos = { x = 969.758, y = 205.097, z = 166.303 }, rot = { x = 0.000, y = 237.025, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 272005, monster_id = 21010501, pos = { x = 949.373, y = 210.529, z = 166.773 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1078, gadget_id = 70220013, pos = { x = 959.020, y = 205.726, z = 162.042 }, rot = { x = 359.968, y = 359.886, z = 344.291 }, level = 16, area_id = 5 },
	{ config_id = 1079, gadget_id = 70220014, pos = { x = 958.587, y = 205.655, z = 163.616 }, rot = { x = 8.661, y = 358.233, z = 352.690 }, level = 16, area_id = 5 },
	{ config_id = 1080, gadget_id = 70220014, pos = { x = 960.339, y = 205.318, z = 163.314 }, rot = { x = 359.965, y = 359.881, z = 343.464 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272006, name = "ANY_MONSTER_DIE_272006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_272006", action = "action_EVENT_ANY_MONSTER_DIE_272006" }
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
		monsters = { 494, 495, 272002 },
		gadgets = { 1078, 1079, 1080 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 272001, 272003, 272004, 272005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_272006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 任务事件40060用,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_272006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_272006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310227201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end