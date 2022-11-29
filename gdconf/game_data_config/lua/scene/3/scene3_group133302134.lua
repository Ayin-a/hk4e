-- 基础信息
local base_info = {
	group_id = 133302134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 21010201, pos = { x = -459.977, y = 166.508, z = 2416.115 }, rot = { x = 0.000, y = 17.406, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 24 },
	{ config_id = 134005, monster_id = 21030201, pos = { x = -464.438, y = 168.146, z = 2417.889 }, rot = { x = 0.000, y = 121.585, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 24 },
	{ config_id = 134006, monster_id = 21030401, pos = { x = -464.385, y = 168.129, z = 2417.912 }, rot = { x = 0.000, y = 94.275, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", area_id = 24 },
	{ config_id = 134012, monster_id = 21010201, pos = { x = -456.033, y = 166.429, z = 2416.454 }, rot = { x = 0.000, y = 334.784, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 24 },
	{ config_id = 134013, monster_id = 20011201, pos = { x = -451.144, y = 167.510, z = 2410.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 134016, monster_id = 21020701, pos = { x = -457.024, y = 167.640, z = 2422.136 }, rot = { x = 0.000, y = 176.679, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 24 },
	{ config_id = 134017, monster_id = 21020101, pos = { x = -457.156, y = 167.646, z = 2424.031 }, rot = { x = 0.000, y = 181.589, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 24 },
	{ config_id = 134018, monster_id = 21010701, pos = { x = -459.521, y = 166.473, z = 2416.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", isElite = true, pose_id = 9013, area_id = 24 },
	{ config_id = 134019, monster_id = 21010201, pos = { x = -459.701, y = 166.487, z = 2416.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 24 },
	{ config_id = 134020, monster_id = 21010201, pos = { x = -456.241, y = 166.440, z = 2417.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 24 },
	{ config_id = 134021, monster_id = 21030301, pos = { x = -464.419, y = 168.151, z = 2417.645 }, rot = { x = 0.000, y = 125.916, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 24 },
	{ config_id = 134022, monster_id = 21020701, pos = { x = -457.161, y = 167.640, z = 2423.230 }, rot = { x = 0.000, y = 178.578, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 24 },
	{ config_id = 134024, monster_id = 21010701, pos = { x = -456.117, y = 166.419, z = 2416.271 }, rot = { x = 0.000, y = 348.934, z = 0.000 }, level = 27, drop_tag = "丘丘人", isElite = true, pose_id = 9013, area_id = 24 },
	{ config_id = 134025, monster_id = 21030101, pos = { x = -464.485, y = 168.153, z = 2418.016 }, rot = { x = 0.000, y = 85.604, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", isElite = true, pose_id = 9012, area_id = 24 },
	{ config_id = 134026, monster_id = 21020501, pos = { x = -457.263, y = 167.640, z = 2422.740 }, rot = { x = 0.000, y = 179.475, z = 0.000 }, level = 27, drop_tag = "丘丘岩盔王", isElite = true, pose_id = 401, area_id = 24 },
	{ config_id = 134030, monster_id = 21010401, pos = { x = -459.660, y = 166.484, z = 2416.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 134031, monster_id = 21010401, pos = { x = -456.235, y = 166.426, z = 2416.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 134004, gadget_id = 70300087, pos = { x = -451.322, y = 167.048, z = 2411.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134007, gadget_id = 70310001, pos = { x = -453.317, y = 167.716, z = 2431.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134008, gadget_id = 70310001, pos = { x = -459.804, y = 167.632, z = 2431.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134009, gadget_id = 70220013, pos = { x = -445.734, y = 165.817, z = 2418.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134010, gadget_id = 70220013, pos = { x = -444.191, y = 165.996, z = 2417.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134011, gadget_id = 70220013, pos = { x = -445.824, y = 165.948, z = 2416.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134014, gadget_id = 70300086, pos = { x = -454.845, y = 166.023, z = 2407.253 }, rot = { x = 0.000, y = 22.702, z = 343.992 }, level = 27, area_id = 24 },
	{ config_id = 134015, gadget_id = 70300086, pos = { x = -466.654, y = 168.016, z = 2408.828 }, rot = { x = 337.241, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134027, gadget_id = 70310001, pos = { x = -462.782, y = 167.632, z = 2430.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134028, gadget_id = 70211011, pos = { x = -456.778, y = 167.623, z = 2428.948 }, rot = { x = 359.925, y = 181.819, z = 1.790 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 134029, gadget_id = 70310001, pos = { x = -450.739, y = 167.632, z = 2429.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	-- 1号亮的
	{ config_id = 134033, gadget_id = 70310001, pos = { x = -462.782, y = 167.632, z = 2430.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	-- 2号亮的
	{ config_id = 134035, gadget_id = 70310001, pos = { x = -459.804, y = 167.632, z = 2431.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	-- 3号亮的
	{ config_id = 134036, gadget_id = 70310001, pos = { x = -453.317, y = 167.716, z = 2431.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	-- 4号亮的
	{ config_id = 134037, gadget_id = 70310001, pos = { x = -450.739, y = 167.632, z = 2429.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 134039, gadget_id = 70360001, pos = { x = -462.551, y = 167.632, z = 2433.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134040, gadget_id = 70360001, pos = { x = -456.148, y = 169.039, z = 2433.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134041, gadget_id = 70360001, pos = { x = -449.223, y = 167.703, z = 2432.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 134042, gadget_id = 70360001, pos = { x = -456.513, y = 167.650, z = 2430.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	-- 防止卸载
	{ config_id = 134043, gadget_id = 70360001, pos = { x = -463.059, y = 167.632, z = 2419.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 134038, shape = RegionShape.SPHERE, radius = 100, pos = { x = -458.373, y = 167.341, z = 2421.646 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1134003, name = "ANY_MONSTER_DIE_134003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134003", action = "action_EVENT_ANY_MONSTER_DIE_134003" },
	{ config_id = 1134023, name = "ANY_MONSTER_DIE_134023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134023", action = "action_EVENT_ANY_MONSTER_DIE_134023" },
	{ config_id = 1134032, name = "ANY_MONSTER_DIE_134032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134032", action = "action_EVENT_ANY_MONSTER_DIE_134032" },
	{ config_id = 1134034, name = "ANY_MONSTER_DIE_134034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134034", action = "action_EVENT_ANY_MONSTER_DIE_134034" },
	{ config_id = 1134038, name = "ENTER_REGION_134038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
	suite = 6,
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
		-- description = 第一天,
		monsters = { 134001, 134005, 134012, 134013, 134017 },
		gadgets = { 134004, 134007, 134008, 134009, 134010, 134011, 134014, 134015, 134029, 134033, 134039 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第二天,
		monsters = { 134013, 134019, 134020, 134021, 134022 },
		gadgets = { 134004, 134007, 134014, 134015, 134027, 134029, 134035, 134040 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第三天,
		monsters = { 134006, 134013, 134016, 134030, 134031 },
		gadgets = { 134004, 134008, 134014, 134015, 134027, 134029, 134036, 134041 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第四天,
		monsters = { 134013, 134018, 134024, 134025, 134026 },
		gadgets = { 134004, 134007, 134008, 134014, 134015, 134027, 134037, 134042 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第五天,
		monsters = { },
		gadgets = { 134004, 134014, 134015, 134028, 134033, 134035, 134036, 134037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 134043 },
		regions = { 134038 },
		triggers = { "ENTER_REGION_134038" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7310701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 134039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7310703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 134040 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134040, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134032(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7310707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 134042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134034(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7310705") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 134041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end