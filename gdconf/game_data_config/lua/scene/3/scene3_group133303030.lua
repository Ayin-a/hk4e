-- 基础信息
local base_info = {
	group_id = 133303030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 26120101, pos = { x = -1909.174, y = 12.502, z = 3196.370 }, rot = { x = 0.000, y = 104.518, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1050, 5211, 5210 }, pose_id = 104, title_id = 10127, special_name_id = 10178, area_id = 23 },
	{ config_id = 30003, monster_id = 26120201, pos = { x = -1918.765, y = 12.144, z = 3193.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 201, area_id = 23 },
	{ config_id = 30004, monster_id = 26120301, pos = { x = -1912.206, y = 11.929, z = 3188.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 30005, monster_id = 26090701, pos = { x = -1917.784, y = 12.453, z = 3188.495 }, rot = { x = 0.000, y = 37.169, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 30006, monster_id = 26090701, pos = { x = -1908.215, y = 11.847, z = 3189.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30008, gadget_id = 70330216, pos = { x = -1912.917, y = 12.263, z = 3196.296 }, rot = { x = 0.000, y = 347.081, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 30009, gadget_id = 70330216, pos = { x = -1919.865, y = 12.216, z = 3192.711 }, rot = { x = 0.000, y = 297.250, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 30010, gadget_id = 70330216, pos = { x = -1921.900, y = 13.041, z = 3185.385 }, rot = { x = 0.000, y = 89.936, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 30011, gadget_id = 70330216, pos = { x = -1926.828, y = 12.434, z = 3200.443 }, rot = { x = 0.000, y = 41.696, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 30012, gadget_id = 70220035, pos = { x = -1919.733, y = 12.326, z = 3191.116 }, rot = { x = 0.000, y = 108.072, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 30014, gadget_id = 70330216, pos = { x = -1910.825, y = 11.885, z = 3188.702 }, rot = { x = 0.000, y = 89.936, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030002, name = "SPECIFIC_MONSTER_HP_CHANGE_30002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "30001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_30002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_30002" },
	{ config_id = 1030007, name = "MONSTER_BATTLE_30007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_30007", action = "action_EVENT_MONSTER_BATTLE_30007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 30013, gadget_id = 70330216, pos = { x = -1916.377, y = 9.637, z = 3191.198 }, rot = { x = 0.000, y = 89.936, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 30015, gadget_id = 70220020, pos = { x = -1927.481, y = 10.723, z = 3194.808 }, rot = { x = 0.000, y = 316.514, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 30016, gadget_id = 70220020, pos = { x = -1922.918, y = 10.657, z = 3201.747 }, rot = { x = 0.000, y = 345.516, z = 0.000 }, level = 30, area_id = 23 }
	}
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
		monsters = { 30001 },
		gadgets = { 30008, 30009, 30010, 30011, 30012, 30014 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_30002", "MONSTER_BATTLE_30007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 30003, 30004, 30005, 30006 },
		gadgets = { 30008, 30009, 30010, 30011, 30012, 30014 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_30002(context, evt)
	--[[判断指定configid的怪物的血量小于%52时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 52 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_30002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301817_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_30007(context, evt)
	if 30001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_30007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 30005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 30006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end