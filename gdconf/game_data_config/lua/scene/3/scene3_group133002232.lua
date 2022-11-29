-- 基础信息
local base_info = {
	group_id = 133002232
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232001, monster_id = 21010701, pos = { x = 2060.051, y = 248.790, z = -437.734 }, rot = { x = 0.000, y = 301.017, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 232002, monster_id = 21010201, pos = { x = 2056.548, y = 248.906, z = -436.133 }, rot = { x = 0.000, y = 141.714, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 232003, monster_id = 21010201, pos = { x = 2056.467, y = 248.516, z = -438.711 }, rot = { x = 0.000, y = 67.727, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 232004, monster_id = 21010501, pos = { x = 2076.784, y = 251.306, z = -442.305 }, rot = { x = 0.000, y = 236.984, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 3 },
	{ config_id = 232005, monster_id = 21020201, pos = { x = 2047.178, y = 247.134, z = -446.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1996, gadget_id = 70310001, pos = { x = 2045.854, y = 248.727, z = -427.667 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1997, gadget_id = 70310001, pos = { x = 2042.983, y = 248.645, z = -430.568 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1998, gadget_id = 70310001, pos = { x = 2064.308, y = 251.049, z = -427.229 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1999, gadget_id = 70310001, pos = { x = 2072.753, y = 250.441, z = -437.092 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2000, gadget_id = 70310001, pos = { x = 2066.156, y = 248.399, z = -454.841 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2001, gadget_id = 70310001, pos = { x = 2053.143, y = 247.577, z = -467.671 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2002, gadget_id = 70310001, pos = { x = 2034.018, y = 250.124, z = -453.381 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2003, gadget_id = 70310001, pos = { x = 2035.207, y = 250.018, z = -471.959 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2004, gadget_id = 70310001, pos = { x = 2020.922, y = 247.078, z = -492.390 }, rot = { x = 0.000, y = 288.246, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2005, gadget_id = 70220019, pos = { x = 2054.635, y = 247.527, z = -447.184 }, rot = { x = 0.000, y = 356.411, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2022, gadget_id = 70220013, pos = { x = 2052.852, y = 248.462, z = -430.446 }, rot = { x = 6.480, y = 315.209, z = 355.272 }, level = 15, area_id = 3 },
	{ config_id = 2023, gadget_id = 70220013, pos = { x = 2055.109, y = 248.683, z = -430.734 }, rot = { x = 6.480, y = 315.209, z = 355.272 }, level = 15, area_id = 3 },
	{ config_id = 2024, gadget_id = 70220013, pos = { x = 2075.411, y = 249.759, z = -440.846 }, rot = { x = 0.000, y = 354.344, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2025, gadget_id = 70220013, pos = { x = 2076.990, y = 249.689, z = -442.215 }, rot = { x = 0.000, y = 35.571, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2026, gadget_id = 70220013, pos = { x = 2068.030, y = 248.355, z = -455.731 }, rot = { x = 0.000, y = 42.614, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2027, gadget_id = 70220013, pos = { x = 2067.307, y = 248.257, z = -457.486 }, rot = { x = 0.000, y = 68.108, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2028, gadget_id = 70220014, pos = { x = 2060.857, y = 254.124, z = -424.378 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2029, gadget_id = 70220014, pos = { x = 2059.605, y = 254.101, z = -424.053 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2030, gadget_id = 70220014, pos = { x = 2036.711, y = 254.416, z = -432.367 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2031, gadget_id = 70220014, pos = { x = 2035.202, y = 254.460, z = -438.729 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2032, gadget_id = 70220014, pos = { x = 2052.059, y = 247.348, z = -469.200 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2033, gadget_id = 70220014, pos = { x = 2050.872, y = 247.493, z = -467.607 }, rot = { x = 0.000, y = 77.446, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2034, gadget_id = 70310006, pos = { x = 2058.032, y = 248.697, z = -437.173 }, rot = { x = 0.000, y = 171.451, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 2035, gadget_id = 70220005, pos = { x = 2054.211, y = 248.762, z = -436.022 }, rot = { x = 0.000, y = 13.342, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2036, gadget_id = 70220005, pos = { x = 2076.970, y = 249.739, z = -444.495 }, rot = { x = 0.000, y = 283.814, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2037, gadget_id = 70220005, pos = { x = 2065.758, y = 248.241, z = -457.441 }, rot = { x = 0.000, y = 309.285, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2038, gadget_id = 70220005, pos = { x = 2065.266, y = 248.128, z = -458.309 }, rot = { x = 0.000, y = 29.740, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2039, gadget_id = 70220005, pos = { x = 2064.707, y = 248.215, z = -457.501 }, rot = { x = 0.000, y = 309.285, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2045, gadget_id = 70220020, pos = { x = 2090.926, y = 246.586, z = -461.564 }, rot = { x = 0.000, y = 190.355, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2046, gadget_id = 70220020, pos = { x = 2090.801, y = 247.062, z = -458.704 }, rot = { x = 0.000, y = 174.658, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2047, gadget_id = 70220020, pos = { x = 2089.734, y = 246.942, z = -460.188 }, rot = { x = 0.000, y = 263.547, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2048, gadget_id = 70220020, pos = { x = 2092.488, y = 246.302, z = -460.426 }, rot = { x = 0.000, y = 263.547, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 232006, gadget_id = 70211012, pos = { x = 2054.700, y = 254.000, z = -447.100 }, rot = { x = 0.000, y = 176.113, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232007, name = "ANY_MONSTER_DIE_232007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232007", action = "action_EVENT_ANY_MONSTER_DIE_232007" }
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
		monsters = { 232001, 232002, 232003, 232004, 232005 },
		gadgets = { 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2045, 2046, 2047, 2048, 232006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_232007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232007(context, evt)
	-- 将configid为 232006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end