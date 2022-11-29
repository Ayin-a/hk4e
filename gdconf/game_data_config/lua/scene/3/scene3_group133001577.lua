-- 基础信息
local base_info = {
	group_id = 133001577
}

-- DEFS_MISCS
local defs = {
	RegionID =  577029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[577002] = { config_id = 577002, monster_id = 20011101, pos = { x = 1560.801, y = 252.060, z = -1651.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6106 }, area_id = 2 },
	[577003] = { config_id = 577003, monster_id = 20011001, pos = { x = 1558.308, y = 252.061, z = -1649.706 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577004] = { config_id = 577004, monster_id = 20011001, pos = { x = 1556.605, y = 252.060, z = -1647.294 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577005] = { config_id = 577005, monster_id = 20011001, pos = { x = 1555.073, y = 252.060, z = -1645.036 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577006] = { config_id = 577006, monster_id = 20011001, pos = { x = 1554.665, y = 252.060, z = -1642.037 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577007] = { config_id = 577007, monster_id = 20011001, pos = { x = 1566.185, y = 252.060, z = -1651.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577008] = { config_id = 577008, monster_id = 20011101, pos = { x = 1568.571, y = 252.060, z = -1650.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6106 }, area_id = 2 },
	[577009] = { config_id = 577009, monster_id = 20011001, pos = { x = 1570.843, y = 252.060, z = -1648.370 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577010] = { config_id = 577010, monster_id = 20011001, pos = { x = 1572.924, y = 252.060, z = -1646.314 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577011] = { config_id = 577011, monster_id = 20011001, pos = { x = 1556.492, y = 252.061, z = -1635.454 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577012] = { config_id = 577012, monster_id = 20011001, pos = { x = 1574.083, y = 252.060, z = -1641.379 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577013] = { config_id = 577013, monster_id = 20011001, pos = { x = 1574.043, y = 252.061, z = -1638.827 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577014] = { config_id = 577014, monster_id = 20011101, pos = { x = 1572.825, y = 252.060, z = -1636.576 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 6106 }, area_id = 2 },
	[577015] = { config_id = 577015, monster_id = 20011001, pos = { x = 1571.398, y = 252.061, z = -1634.523 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577016] = { config_id = 577016, monster_id = 20011001, pos = { x = 1569.483, y = 252.061, z = -1632.940 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577017] = { config_id = 577017, monster_id = 20011001, pos = { x = 1566.504, y = 252.061, z = -1631.856 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577018] = { config_id = 577018, monster_id = 20011001, pos = { x = 1563.878, y = 252.061, z = -1631.301 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577019] = { config_id = 577019, monster_id = 20011001, pos = { x = 1561.143, y = 252.061, z = -1632.011 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[577031] = { config_id = 577031, monster_id = 20011101, pos = { x = 1560.767, y = 252.079, z = -1651.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034, 6106 }, area_id = 2 },
	[577032] = { config_id = 577032, monster_id = 20011001, pos = { x = 1558.274, y = 252.079, z = -1649.633 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577033] = { config_id = 577033, monster_id = 20011001, pos = { x = 1556.571, y = 252.079, z = -1647.221 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577034] = { config_id = 577034, monster_id = 20011001, pos = { x = 1555.039, y = 252.079, z = -1644.963 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577035] = { config_id = 577035, monster_id = 20011001, pos = { x = 1554.631, y = 252.079, z = -1641.964 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577036] = { config_id = 577036, monster_id = 20011001, pos = { x = 1566.151, y = 252.079, z = -1651.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577037] = { config_id = 577037, monster_id = 20011101, pos = { x = 1568.537, y = 252.079, z = -1650.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034, 6106 }, area_id = 2 },
	[577038] = { config_id = 577038, monster_id = 20011001, pos = { x = 1570.809, y = 252.079, z = -1648.297 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577039] = { config_id = 577039, monster_id = 20011001, pos = { x = 1572.890, y = 252.079, z = -1646.241 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577040] = { config_id = 577040, monster_id = 20011001, pos = { x = 1556.458, y = 252.079, z = -1635.381 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577041] = { config_id = 577041, monster_id = 20011001, pos = { x = 1574.049, y = 252.079, z = -1641.306 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577042] = { config_id = 577042, monster_id = 20011001, pos = { x = 1574.009, y = 252.080, z = -1638.754 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577043] = { config_id = 577043, monster_id = 20011101, pos = { x = 1572.791, y = 252.079, z = -1636.503 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034, 6106 }, area_id = 2 },
	[577044] = { config_id = 577044, monster_id = 20011001, pos = { x = 1571.364, y = 252.079, z = -1634.450 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577045] = { config_id = 577045, monster_id = 20011001, pos = { x = 1569.449, y = 252.080, z = -1632.867 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577046] = { config_id = 577046, monster_id = 20011001, pos = { x = 1566.470, y = 252.079, z = -1631.783 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577047] = { config_id = 577047, monster_id = 20011001, pos = { x = 1563.844, y = 252.080, z = -1631.228 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 },
	[577048] = { config_id = 577048, monster_id = 20011001, pos = { x = 1561.109, y = 252.080, z = -1631.938 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1034 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[577001] = { config_id = 577001, gadget_id = 70950060, pos = { x = 1564.035, y = 252.186, z = -1642.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	[577030] = { config_id = 577030, gadget_id = 70350178, pos = { x = 1564.035, y = 252.186, z = -1642.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[577049] = { config_id = 577049, gadget_id = 70710001, pos = { x = 1564.267, y = 252.080, z = -1640.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[577029] = { config_id = 577029, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1577020, name = "GADGET_CREATE_577020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_577020", action = "action_EVENT_GADGET_CREATE_577020", tlog_tag = "2" },
	{ config_id = 1577021, name = "CHALLENGE_SUCCESS_577021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "503", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_577021" },
	{ config_id = 1577022, name = "CHALLENGE_FAIL_577022", event = EventType.EVENT_CHALLENGE_FAIL, source = "503", condition = "", action = "action_EVENT_CHALLENGE_FAIL_577022" },
	{ config_id = 1577023, name = "GADGET_CREATE_577023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_577023", action = "action_EVENT_GADGET_CREATE_577023", tlog_tag = "3" },
	{ config_id = 1577024, name = "CHALLENGE_SUCCESS_577024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "505", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_577024" },
	{ config_id = 1577025, name = "GADGET_CREATE_577025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_577025", action = "action_EVENT_GADGET_CREATE_577025", tlog_tag = "1" },
	{ config_id = 1577026, name = "CHALLENGE_FAIL_577026", event = EventType.EVENT_CHALLENGE_FAIL, source = "505", condition = "", action = "action_EVENT_CHALLENGE_FAIL_577026" },
	{ config_id = 1577027, name = "CHALLENGE_SUCCESS_577027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_577027" },
	{ config_id = 1577028, name = "CHALLENGE_FAIL_577028", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_577028" }
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
		gadgets = { },
		regions = { 577029 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 577001, 577030, 577049 },
		regions = { },
		triggers = { "GADGET_CREATE_577025", "CHALLENGE_SUCCESS_577027", "CHALLENGE_FAIL_577028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 577001, 577030, 577049 },
		regions = { },
		triggers = { "GADGET_CREATE_577020", "CHALLENGE_SUCCESS_577021", "CHALLENGE_FAIL_577022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 577001, 577030, 577049 },
		regions = { },
		triggers = { "GADGET_CREATE_577023", "CHALLENGE_SUCCESS_577024", "CHALLENGE_FAIL_577026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_577020(context, evt)
	if 577001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_577020(context, evt)
	ScriptLib.CreateFatherChallenge(context, 503, 110155, 240, {success =2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 503, 110256, 110156, {240,133001577,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110257, 110157, {25,133001577,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110258, 110158, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 503)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001577, {577002,577003,577004,577005,577006,577007,577008,577009,577010,577011,577012,577013,577014,577015,577016,577017,577018,577019}, 99, 5, 5) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_577021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_577022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_577023(context, evt)
	if 577001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_577023(context, evt)
	ScriptLib.CreateFatherChallenge(context, 505, 110155, 180, {success =2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 505, 110356, 110156, {180,133001577,30,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110357, 110157, {20,133001577,30,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110358, 110179, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 505)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 506, 133001577, {577031,577032,577033,577034,577035,577036,577037,577038,577039,577040,577041,577042,577043,577044,577045,577046,577047,577048}, 99, 5, 5) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_577024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_577025(context, evt)
	if 577001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_577025(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110155, 300, {success =2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110156, 110156, {300,133001577,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110157, 110157, {25,133001577,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110158, 110158, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001577, {577002,577003,577004,577005,577006,577007,577008,577009,577010,577011,577012,577013,577014,577015,577016,577017,577018,577019}, 99, 07, 7) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_577026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_577027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_577028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001577, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "Activity_ArenaChallengeSub"
require "WindFlora_Arenashake"