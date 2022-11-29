-- 基础信息
local base_info = {
	group_id = 133304117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117001, gadget_id = 70220003, pos = { x = -1752.531, y = 250.021, z = 2768.627 }, rot = { x = 0.000, y = 292.920, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 117002, gadget_id = 70210102, pos = { x = -1755.743, y = 250.637, z = 2770.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 117003, gadget_id = 70220003, pos = { x = -1755.652, y = 250.976, z = 2772.202 }, rot = { x = 329.161, y = 352.830, z = 354.415 }, level = 30, area_id = 21 },
	{ config_id = 117004, gadget_id = 70220003, pos = { x = -1748.087, y = 249.127, z = 2769.186 }, rot = { x = 0.000, y = 304.521, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 117006, gadget_id = 70220003, pos = { x = -1755.607, y = 250.074, z = 2767.092 }, rot = { x = 0.368, y = 191.391, z = 14.991 }, level = 30, area_id = 21 },
	{ config_id = 117007, gadget_id = 70220003, pos = { x = -1759.977, y = 251.738, z = 2766.507 }, rot = { x = 9.081, y = 156.129, z = 11.983 }, level = 30, area_id = 21 },
	{ config_id = 117008, gadget_id = 70220003, pos = { x = -1749.316, y = 250.536, z = 2773.306 }, rot = { x = 338.896, y = 300.276, z = 22.508 }, level = 30, area_id = 21 },
	{ config_id = 117009, gadget_id = 70220003, pos = { x = -1761.427, y = 252.343, z = 2773.607 }, rot = { x = 340.737, y = 316.103, z = 18.671 }, level = 30, area_id = 21 },
	{ config_id = 117010, gadget_id = 70220003, pos = { x = -1755.775, y = 253.156, z = 2775.932 }, rot = { x = 328.438, y = 352.917, z = 353.758 }, level = 30, area_id = 21 },
	{ config_id = 117012, gadget_id = 70210102, pos = { x = -1754.920, y = 250.455, z = 2771.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 117013, gadget_id = 70220003, pos = { x = -1752.531, y = 250.021, z = 2768.627 }, rot = { x = 0.000, y = 292.920, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 117014, gadget_id = 70220003, pos = { x = -1753.692, y = 250.776, z = 2773.016 }, rot = { x = 0.000, y = 225.198, z = 15.191 }, level = 30, area_id = 21 },
	{ config_id = 117015, gadget_id = 70220003, pos = { x = -1755.264, y = 250.241, z = 2768.162 }, rot = { x = 0.000, y = 353.614, z = 352.740 }, level = 30, area_id = 21 },
	{ config_id = 117016, gadget_id = 70220003, pos = { x = -1756.945, y = 251.078, z = 2773.091 }, rot = { x = 353.397, y = 288.293, z = 8.929 }, level = 30, area_id = 21 },
	{ config_id = 117017, gadget_id = 70220003, pos = { x = -1760.836, y = 251.825, z = 2769.311 }, rot = { x = 355.050, y = 216.449, z = 5.317 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117005, name = "GADGET_STATE_CHANGE_117005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117005", action = "action_EVENT_GADGET_STATE_CHANGE_117005", trigger_count = 0 },
	{ config_id = 1117011, name = "GADGET_STATE_CHANGE_117011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117011", action = "action_EVENT_GADGET_STATE_CHANGE_117011", trigger_count = 0 }
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
		gadgets = { 117001, 117002, 117003, 117004, 117006, 117007, 117008, 117009, 117010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_117005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 117012, 117013, 117014, 117015, 117016, 117017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_117011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	if 117002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_117011(context, evt)
	if 117012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_117011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end