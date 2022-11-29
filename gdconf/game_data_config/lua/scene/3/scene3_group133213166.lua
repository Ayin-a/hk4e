-- 基础信息
local base_info = {
	group_id = 133213166
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166001, monster_id = 21020201, pos = { x = -3825.283, y = 200.513, z = -2949.520 }, rot = { x = 0.000, y = 29.129, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 166002, monster_id = 21020701, pos = { x = -3872.066, y = 200.968, z = -2937.904 }, rot = { x = 0.000, y = 78.599, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 166003, monster_id = 21010902, pos = { x = -3811.588, y = 205.444, z = -2954.642 }, rot = { x = 0.000, y = 129.921, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 166004, monster_id = 21010701, pos = { x = -3864.118, y = 200.977, z = -2937.673 }, rot = { x = 0.000, y = 96.163, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 12 },
	{ config_id = 166005, monster_id = 21010701, pos = { x = -3867.678, y = 200.171, z = -2929.232 }, rot = { x = 0.000, y = 89.309, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 12 },
	{ config_id = 166007, monster_id = 21011002, pos = { x = -3862.349, y = 207.895, z = -2947.686 }, rot = { x = 0.000, y = 201.728, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 166006, gadget_id = 70300086, pos = { x = -3875.081, y = 200.829, z = -2937.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166008, gadget_id = 70300090, pos = { x = -3862.519, y = 202.221, z = -2947.987 }, rot = { x = 0.000, y = 318.973, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 166009, gadget_id = 70300101, pos = { x = -3826.670, y = 200.466, z = -2951.735 }, rot = { x = 0.000, y = 36.006, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 166010, gadget_id = 70300101, pos = { x = -3875.078, y = 200.664, z = -2936.908 }, rot = { x = 0.000, y = 47.940, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 166013, gadget_id = 70300076, pos = { x = -3805.205, y = 200.075, z = -2953.992 }, rot = { x = 0.000, y = 169.501, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 166014, gadget_id = 70300084, pos = { x = -3880.196, y = 200.116, z = -2930.066 }, rot = { x = 0.000, y = 247.009, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 166015, gadget_id = 70300076, pos = { x = -3862.198, y = 203.136, z = -2955.818 }, rot = { x = 0.000, y = 46.559, z = 0.000 }, level = 19, area_id = 12 },
	{ config_id = 166018, gadget_id = 70300090, pos = { x = -3811.543, y = 199.999, z = -2954.629 }, rot = { x = 0.000, y = 308.669, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166019, gadget_id = 70300086, pos = { x = -3826.784, y = 200.747, z = -2951.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 166022, gadget_id = 70300086, pos = { x = -3850.783, y = 199.121, z = -2939.275 }, rot = { x = 5.716, y = 261.103, z = 309.446 }, level = 27, area_id = 12 },
	{ config_id = 166023, gadget_id = 70300086, pos = { x = -3812.539, y = 199.585, z = -2937.040 }, rot = { x = 0.001, y = 188.220, z = 276.983 }, level = 27, area_id = 12 },
	{ config_id = 166024, gadget_id = 70310001, pos = { x = -3821.957, y = 200.300, z = -2950.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 166026, gadget_id = 70310001, pos = { x = -3883.307, y = 200.887, z = -2934.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 166027, gadget_id = 70220013, pos = { x = -3878.866, y = 200.343, z = -2931.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166028, gadget_id = 70220013, pos = { x = -3876.432, y = 200.420, z = -2932.274 }, rot = { x = 0.000, y = 322.439, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166029, gadget_id = 70220013, pos = { x = -3816.410, y = 199.484, z = -2938.427 }, rot = { x = 13.717, y = 321.134, z = 349.181 }, level = 27, area_id = 12 },
	{ config_id = 166030, gadget_id = 70300089, pos = { x = -3820.037, y = 200.495, z = -2955.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166031, gadget_id = 70300084, pos = { x = -3847.950, y = 201.082, z = -2951.268 }, rot = { x = 0.000, y = 223.488, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166032, gadget_id = 70300084, pos = { x = -3855.085, y = 201.708, z = -2952.130 }, rot = { x = 0.000, y = 258.699, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166033, gadget_id = 70300089, pos = { x = -3873.374, y = 202.587, z = -2944.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166034, gadget_id = 70310004, pos = { x = -3869.697, y = 200.964, z = -2937.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 166035, gadget_id = 70300084, pos = { x = -3814.204, y = 200.340, z = -2960.144 }, rot = { x = 8.680, y = 48.555, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 166036, gadget_id = 70300084, pos = { x = -3819.875, y = 201.601, z = -2965.608 }, rot = { x = 9.880, y = 48.555, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1166016, name = "SPECIFIC_GADGET_HP_CHANGE_166016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53006", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_166016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_166016" },
	{ config_id = 1166017, name = "SPECIFIC_GADGET_HP_CHANGE_166017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "53007", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_166017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_166017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
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
		monsters = { 166001, 166002, 166003, 166004, 166005, 166007 },
		gadgets = { 166006, 166008, 166009, 166010, 166013, 166014, 166015, 166018, 166019, 166022, 166023, 166024, 166026, 166027, 166028, 166029, 166030, 166031, 166032, 166033, 166034, 166035, 166036 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_166016", "SPECIFIC_GADGET_HP_CHANGE_166017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_166016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_166016(context, evt)
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_166017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_166017(context, evt)
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end