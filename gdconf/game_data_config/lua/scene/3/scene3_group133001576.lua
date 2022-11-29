-- 基础信息
local base_info = {
	group_id = 133001576
}

-- DEFS_MISCS
local defs = {
	RegionID =  576039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[576001] = { config_id = 576001, monster_id = 21010201, pos = { x = 1563.408, y = 252.089, z = -1651.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576002] = { config_id = 576002, monster_id = 21010201, pos = { x = 1560.720, y = 252.089, z = -1651.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576003] = { config_id = 576003, monster_id = 21010701, pos = { x = 1558.227, y = 252.090, z = -1649.833 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576004] = { config_id = 576004, monster_id = 21010701, pos = { x = 1556.524, y = 252.089, z = -1647.421 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576005] = { config_id = 576005, monster_id = 21010701, pos = { x = 1554.992, y = 252.089, z = -1645.163 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576006] = { config_id = 576006, monster_id = 21010701, pos = { x = 1554.584, y = 252.089, z = -1642.164 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576007] = { config_id = 576007, monster_id = 21010501, pos = { x = 1566.104, y = 252.089, z = -1651.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576008] = { config_id = 576008, monster_id = 21010501, pos = { x = 1568.490, y = 252.089, z = -1650.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576009] = { config_id = 576009, monster_id = 21010501, pos = { x = 1570.762, y = 252.089, z = -1648.497 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576010] = { config_id = 576010, monster_id = 21010501, pos = { x = 1572.843, y = 252.089, z = -1646.441 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576011] = { config_id = 576011, monster_id = 21010501, pos = { x = 1573.615, y = 252.089, z = -1644.068 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576012] = { config_id = 576012, monster_id = 21011001, pos = { x = 1574.002, y = 252.089, z = -1641.506 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576013] = { config_id = 576013, monster_id = 21011001, pos = { x = 1573.962, y = 252.090, z = -1638.954 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576014] = { config_id = 576014, monster_id = 21011001, pos = { x = 1572.744, y = 252.089, z = -1636.703 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576015] = { config_id = 576015, monster_id = 21011001, pos = { x = 1571.317, y = 252.090, z = -1634.650 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576016] = { config_id = 576016, monster_id = 21011001, pos = { x = 1569.402, y = 252.090, z = -1633.067 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576017] = { config_id = 576017, monster_id = 21011001, pos = { x = 1566.423, y = 252.090, z = -1631.983 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576018] = { config_id = 576018, monster_id = 21011001, pos = { x = 1563.797, y = 252.090, z = -1631.428 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576019] = { config_id = 576019, monster_id = 21020201, pos = { x = 1561.062, y = 252.090, z = -1632.138 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576020] = { config_id = 576020, monster_id = 21020201, pos = { x = 1558.124, y = 252.090, z = -1633.258 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576021] = { config_id = 576021, monster_id = 21010201, pos = { x = 1556.145, y = 252.090, z = -1635.737 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576022] = { config_id = 576022, monster_id = 21010201, pos = { x = 1554.934, y = 252.089, z = -1638.896 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	[576040] = { config_id = 576040, monster_id = 21010201, pos = { x = 1563.516, y = 252.079, z = -1651.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576041] = { config_id = 576041, monster_id = 21010201, pos = { x = 1560.828, y = 252.079, z = -1651.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576042] = { config_id = 576042, monster_id = 21010701, pos = { x = 1558.335, y = 252.079, z = -1649.801 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576043] = { config_id = 576043, monster_id = 21010701, pos = { x = 1556.632, y = 252.078, z = -1647.389 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576044] = { config_id = 576044, monster_id = 21010701, pos = { x = 1555.100, y = 252.078, z = -1645.131 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576045] = { config_id = 576045, monster_id = 21010701, pos = { x = 1554.692, y = 252.078, z = -1642.132 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576046] = { config_id = 576046, monster_id = 21010501, pos = { x = 1566.212, y = 252.078, z = -1651.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576047] = { config_id = 576047, monster_id = 21010501, pos = { x = 1568.598, y = 252.078, z = -1650.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576048] = { config_id = 576048, monster_id = 21010501, pos = { x = 1570.870, y = 252.078, z = -1648.465 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576049] = { config_id = 576049, monster_id = 21010501, pos = { x = 1572.951, y = 252.078, z = -1646.409 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576050] = { config_id = 576050, monster_id = 21010501, pos = { x = 1573.723, y = 252.078, z = -1644.036 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576051] = { config_id = 576051, monster_id = 21011001, pos = { x = 1574.110, y = 252.078, z = -1641.474 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576052] = { config_id = 576052, monster_id = 21011001, pos = { x = 1574.070, y = 252.079, z = -1638.922 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576053] = { config_id = 576053, monster_id = 21011001, pos = { x = 1572.852, y = 252.079, z = -1636.671 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576054] = { config_id = 576054, monster_id = 21011001, pos = { x = 1571.425, y = 252.079, z = -1634.618 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576055] = { config_id = 576055, monster_id = 21011001, pos = { x = 1569.510, y = 252.079, z = -1633.035 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576056] = { config_id = 576056, monster_id = 21011001, pos = { x = 1566.531, y = 252.079, z = -1631.951 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576057] = { config_id = 576057, monster_id = 21011001, pos = { x = 1563.905, y = 252.079, z = -1631.396 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576058] = { config_id = 576058, monster_id = 21020201, pos = { x = 1561.170, y = 252.079, z = -1632.106 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576059] = { config_id = 576059, monster_id = 21020201, pos = { x = 1558.232, y = 252.079, z = -1633.226 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576060] = { config_id = 576060, monster_id = 21010201, pos = { x = 1556.253, y = 252.079, z = -1635.705 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 },
	[576061] = { config_id = 576061, monster_id = 21010201, pos = { x = 1555.042, y = 252.078, z = -1638.864 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1009, 1007 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[576025] = { config_id = 576025, gadget_id = 70950060, pos = { x = 1564.183, y = 252.197, z = -1641.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	[576038] = { config_id = 576038, gadget_id = 70350186, pos = { x = 1564.183, y = 252.197, z = -1641.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[576064] = { config_id = 576064, gadget_id = 70710001, pos = { x = 1563.416, y = 252.080, z = -1640.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[576039] = { config_id = 576039, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1576023, name = "GADGET_CREATE_576023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_576023", action = "action_EVENT_GADGET_CREATE_576023", tlog_tag = "2" },
	{ config_id = 1576024, name = "GADGET_CREATE_576024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_576024", action = "action_EVENT_GADGET_CREATE_576024", tlog_tag = "1" },
	{ config_id = 1576026, name = "VARIABLE_CHANGE_576026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "576" },
	{ config_id = 1576027, name = "CHALLENGE_SUCCESS_576027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_576027" },
	{ config_id = 1576028, name = "CHALLENGE_FAIL_576028", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_576028" },
	{ config_id = 1576029, name = "GADGET_CREATE_576029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_576029", action = "action_EVENT_GADGET_CREATE_576029", tlog_tag = "3" },
	{ config_id = 1576030, name = "CHALLENGE_FAIL_576030", event = EventType.EVENT_CHALLENGE_FAIL, source = "507", condition = "", action = "action_EVENT_CHALLENGE_FAIL_576030" },
	{ config_id = 1576031, name = "CHALLENGE_FAIL_576031", event = EventType.EVENT_CHALLENGE_FAIL, source = "506", condition = "", action = "action_EVENT_CHALLENGE_FAIL_576031" },
	{ config_id = 1576032, name = "CHALLENGE_SUCCESS_576032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "506", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_576032" },
	{ config_id = 1576033, name = "CHALLENGE_SUCCESS_576033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "507", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_576033" },
	{ config_id = 1576034, name = "ANY_MONSTER_DIE_576034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576034", action = "action_EVENT_ANY_MONSTER_DIE_576034", trigger_count = 0 },
	{ config_id = 1576035, name = "ANY_MONSTER_DIE_576035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576035", action = "action_EVENT_ANY_MONSTER_DIE_576035", trigger_count = 0 },
	{ config_id = 1576036, name = "VARIABLE_CHANGE_576036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "676" },
	{ config_id = 1576037, name = "VARIABLE_CHANGE_576037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "776" },
	{ config_id = 1576062, name = "ANY_MONSTER_DIE_576062", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576062", action = "action_EVENT_ANY_MONSTER_DIE_576062", trigger_count = 0 },
	{ config_id = 1576063, name = "ANY_MONSTER_DIE_576063", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_576063", action = "action_EVENT_ANY_MONSTER_DIE_576063", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "tool_trigger", value = 0, no_refresh = false }
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
		regions = { 576039 },
		triggers = { "ANY_MONSTER_DIE_576034", "ANY_MONSTER_DIE_576035", "ANY_MONSTER_DIE_576062", "ANY_MONSTER_DIE_576063" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 576025, 576038, 576064 },
		regions = { },
		triggers = { "GADGET_CREATE_576024", "VARIABLE_CHANGE_576026", "CHALLENGE_SUCCESS_576027", "CHALLENGE_FAIL_576028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 576025, 576038, 576064 },
		regions = { },
		triggers = { "GADGET_CREATE_576023", "CHALLENGE_FAIL_576031", "CHALLENGE_SUCCESS_576032", "VARIABLE_CHANGE_576036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 576025, 576038, 576064 },
		regions = { },
		triggers = { "GADGET_CREATE_576029", "CHALLENGE_FAIL_576030", "CHALLENGE_SUCCESS_576033", "VARIABLE_CHANGE_576037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_576023(context, evt)
	if 576025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_576023(context, evt)
	ScriptLib.CreateFatherChallenge(context, 506, 110151, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 506, 110252, 110152, {180,133001576,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 506, 110253, 110153, {180,3,676,3},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 506, 110254, 110154, {180,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 506)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001576, {576003,576004,576005,576006}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为1502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1502, 133001576, {576001,576002,576021,576022}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为503（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 503, 133001576, {576007,576008,576009,576010,576011}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为504（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001576, {576012,576013,576014,576015,576016,576017,576018}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为505（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 505, 133001576, {576019,576020}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_576024(context, evt)
	if 576025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_576024(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110151, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110152, 110152, {300,133001576,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110153, 110153, {300,3,576,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110154, 110154, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001576, {576003,576004,576005,576006}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为1502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1502, 133001576, {576001,576002,576021,576022}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为503（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 503, 133001576, {576007,576008,576009,576010,576011}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为504（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001576, {576012,576013,576014,576015,576016,576017,576018}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为505（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 505, 133001576, {576019,576020}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_576027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_576028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_576029(context, evt)
	if 576025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_576029(context, evt)
	ScriptLib.CreateFatherChallenge(context, 507, 110151, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 507, 110352, 110152, {180,133001576,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 507, 110353, 110153, {180,3,776,4},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 507, 110354, 110179, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 507)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001576, {576042,576043,576044,576045}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为1502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1502, 133001576, {576040,576041,576060,576061}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为503（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 503, 133001576, {576046,576047,576048,576049,576050}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为504（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001576, {576051,576052,576053,576054,576055,576056,576057}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为505（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 505, 133001576, {576058,576058}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_576030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_576031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_576032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_576033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001576, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576034(context, evt)
	--判断死亡怪物的configid是否为 576019
	if evt.param1 ~= 576019 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576034(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576035(context, evt)
	--判断死亡怪物的configid是否为 576020
	if evt.param1 ~= 576020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576035(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576062(context, evt)
	--判断死亡怪物的configid是否为 576058
	if evt.param1 ~= 576058 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576062(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_576063(context, evt)
	--判断死亡怪物的configid是否为 576059
	if evt.param1 ~= 576059 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_576063(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "Activity_ArenaChallengeSub"