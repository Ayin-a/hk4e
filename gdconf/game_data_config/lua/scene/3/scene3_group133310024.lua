-- 基础信息
local base_info = {
	group_id = 133310024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 25210201, pos = { x = -3081.087, y = 259.222, z = 4841.020 }, rot = { x = 0.000, y = 76.589, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 24002, monster_id = 25310201, pos = { x = -3141.831, y = 278.101, z = 4715.307 }, rot = { x = 0.000, y = 300.415, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 28 },
	{ config_id = 24003, monster_id = 25210503, pos = { x = -3114.398, y = 259.568, z = 4863.893 }, rot = { x = 0.000, y = 177.692, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 24004, monster_id = 25210401, pos = { x = -3182.312, y = 254.504, z = 4824.050 }, rot = { x = 0.000, y = 38.868, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 28 },
	{ config_id = 24005, monster_id = 25210301, pos = { x = -3193.537, y = 260.582, z = 4770.411 }, rot = { x = 0.000, y = 350.207, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 28 },
	{ config_id = 24007, monster_id = 25210202, pos = { x = -3112.019, y = 257.636, z = 4842.624 }, rot = { x = 0.000, y = 14.789, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9506, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 24008, monster_id = 28010404, pos = { x = -3111.433, y = 256.847, z = 4845.045 }, rot = { x = 0.000, y = 195.679, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 28 },
	{ config_id = 24009, monster_id = 28010404, pos = { x = -3113.188, y = 256.653, z = 4845.440 }, rot = { x = 0.000, y = 162.277, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024006, name = "MONSTER_BATTLE_24006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_24006", action = "action_EVENT_MONSTER_BATTLE_24006" }
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
		monsters = { 24001, 24002, 24003, 24004, 24005, 24007, 24008, 24009 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_24006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_24006(context, evt)
	if 24001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_24006(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reminder", 1, 133310604) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end