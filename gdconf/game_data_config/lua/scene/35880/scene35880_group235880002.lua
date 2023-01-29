-- 基础信息
local base_info = {
	group_id = 235880002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 26090101, pos = { x = 223.917, y = 90.184, z = 222.845 }, rot = { x = 0.000, y = 193.021, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2002] = { config_id = 2002, monster_id = 26090101, pos = { x = 211.666, y = 90.184, z = 218.621 }, rot = { x = 0.000, y = 131.581, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2003] = { config_id = 2003, monster_id = 26090201, pos = { x = 208.480, y = 90.183, z = 210.144 }, rot = { x = 0.000, y = 65.162, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2004] = { config_id = 2004, monster_id = 26090201, pos = { x = 214.051, y = 90.183, z = 204.240 }, rot = { x = 0.000, y = 27.392, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2005] = { config_id = 2005, monster_id = 26090301, pos = { x = 225.425, y = 90.187, z = 207.166 }, rot = { x = 0.000, y = 317.709, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2006] = { config_id = 2006, monster_id = 26090301, pos = { x = 229.138, y = 90.184, z = 214.210 }, rot = { x = 0.000, y = 298.146, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2008] = { config_id = 2008, monster_id = 26090101, pos = { x = 218.524, y = 90.183, z = 223.995 }, rot = { x = 0.000, y = 175.069, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2009] = { config_id = 2009, monster_id = 26090201, pos = { x = 220.349, y = 90.184, z = 202.505 }, rot = { x = 0.000, y = 353.371, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2010] = { config_id = 2010, monster_id = 26090401, pos = { x = 223.502, y = 90.184, z = 210.027 }, rot = { x = 0.000, y = 320.968, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2011] = { config_id = 2011, monster_id = 26090401, pos = { x = 225.476, y = 90.184, z = 215.916 }, rot = { x = 0.000, y = 260.474, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2012] = { config_id = 2012, monster_id = 26090601, pos = { x = 220.765, y = 90.184, z = 218.800 }, rot = { x = 0.000, y = 196.519, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2013] = { config_id = 2013, monster_id = 26090601, pos = { x = 223.863, y = 90.184, z = 216.786 }, rot = { x = 0.000, y = 231.982, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2014] = { config_id = 2014, monster_id = 26090501, pos = { x = 214.482, y = 90.184, z = 209.972 }, rot = { x = 0.000, y = 49.982, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2015] = { config_id = 2015, monster_id = 26090501, pos = { x = 216.486, y = 90.184, z = 218.073 }, rot = { x = 0.000, y = 145.055, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2016] = { config_id = 2016, monster_id = 26090601, pos = { x = 225.410, y = 90.184, z = 213.476 }, rot = { x = 0.000, y = 270.961, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2017] = { config_id = 2017, monster_id = 26090401, pos = { x = 213.128, y = 90.193, z = 214.377 }, rot = { x = 0.000, y = 92.870, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2018] = { config_id = 2018, monster_id = 26120301, pos = { x = 216.284, y = 90.184, z = 221.136 }, rot = { x = 0.000, y = 158.861, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2019] = { config_id = 2019, monster_id = 26120101, pos = { x = 227.144, y = 90.184, z = 217.993 }, rot = { x = 0.000, y = 237.184, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 201 },
	[2020] = { config_id = 2020, monster_id = 26120201, pos = { x = 210.399, y = 90.165, z = 215.535 }, rot = { x = 0.000, y = 106.976, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 201 },
	[2021] = { config_id = 2021, monster_id = 26120401, pos = { x = 215.354, y = 90.184, z = 207.361 }, rot = { x = 0.000, y = 34.010, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2026] = { config_id = 2026, monster_id = 26090701, pos = { x = 226.746, y = 90.184, z = 210.325 }, rot = { x = 0.000, y = 300.494, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2027] = { config_id = 2027, monster_id = 26090701, pos = { x = 212.033, y = 90.184, z = 211.168 }, rot = { x = 0.000, y = 80.566, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2028] = { config_id = 2028, monster_id = 26090801, pos = { x = 218.696, y = 90.184, z = 221.015 }, rot = { x = 0.000, y = 171.527, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2029] = { config_id = 2029, monster_id = 26090801, pos = { x = 217.714, y = 90.184, z = 204.874 }, rot = { x = 0.000, y = 13.323, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2030] = { config_id = 2030, monster_id = 26090901, pos = { x = 222.061, y = 90.184, z = 221.949 }, rot = { x = 0.000, y = 205.679, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2031] = { config_id = 2031, monster_id = 26090901, pos = { x = 213.960, y = 90.184, z = 220.734 }, rot = { x = 0.000, y = 145.055, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2032] = { config_id = 2032, monster_id = 26091001, pos = { x = 211.028, y = 90.184, z = 206.941 }, rot = { x = 0.000, y = 38.438, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 },
	[2033] = { config_id = 2033, monster_id = 26091001, pos = { x = 213.610, y = 90.193, z = 216.937 }, rot = { x = 0.000, y = 129.753, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2007] = { config_id = 2007, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2022] = { config_id = 2022, gadget_id = 70900205, pos = { x = 219.550, y = 88.504, z = 217.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2025] = { config_id = 2025, gadget_id = 44000552, pos = { x = 219.037, y = 90.180, z = 213.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002023, name = "ANY_MONSTER_DIE_2023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_2023", trigger_count = 0 },
	{ config_id = 1002024, name = "VARIABLE_CHANGE_2024", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_2024", action = "action_EVENT_VARIABLE_CHANGE_2024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { 2022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2007, 2025 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2023", "VARIABLE_CHANGE_2024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2008, 2009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 2018, 2019, 2020, 2021 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2023(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为28
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 28 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2024(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235880001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end