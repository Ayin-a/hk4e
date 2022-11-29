-- 基础信息
local base_info = {
	group_id = 133001611
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 611001, monster_id = 21020101, pos = { x = 1954.274, y = 197.286, z = -1327.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 401, area_id = 2 },
	{ config_id = 611002, monster_id = 21010301, pos = { x = 1957.940, y = 197.769, z = -1326.245 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 611003, monster_id = 21010301, pos = { x = 1956.055, y = 197.748, z = -1330.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9003, area_id = 2 },
	{ config_id = 611004, monster_id = 21010301, pos = { x = 1950.848, y = 196.728, z = -1327.094 }, rot = { x = 0.000, y = 135.810, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 9003, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 611005, gadget_id = 70500000, pos = { x = 1955.854, y = 197.633, z = -1328.806 }, rot = { x = 0.000, y = 277.300, z = 0.000 }, level = 1, point_type = 9136, isOneoff = true, area_id = 2 },
	{ config_id = 611006, gadget_id = 70500000, pos = { x = 1951.777, y = 196.906, z = -1327.805 }, rot = { x = 0.000, y = 152.800, z = 0.000 }, level = 1, point_type = 9136, isOneoff = true, area_id = 2 },
	{ config_id = 611007, gadget_id = 70500000, pos = { x = 1956.402, y = 197.515, z = -1326.028 }, rot = { x = 0.000, y = 36.280, z = 0.000 }, level = 1, point_type = 9136, isOneoff = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1611008, name = "ANY_MONSTER_DIE_611008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_611008", action = "action_EVENT_ANY_MONSTER_DIE_611008" }
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
		monsters = { 611001, 611002, 611003, 611004 },
		gadgets = { 611005, 611006, 611007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_611008" },
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
function condition_EVENT_ANY_MONSTER_DIE_611008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_611008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133001611") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end