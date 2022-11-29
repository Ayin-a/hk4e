-- 基础信息
local base_info = {
	group_id = 133003600
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 600001, monster_id = 21010601, pos = { x = 2257.215, y = 273.588, z = -1745.251 }, rot = { x = 0.000, y = 119.237, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 600002, monster_id = 21020201, pos = { x = 2260.452, y = 273.537, z = -1737.386 }, rot = { x = 0.000, y = 208.666, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 600003, monster_id = 21030201, pos = { x = 2262.161, y = 275.010, z = -1745.634 }, rot = { x = 0.000, y = 268.025, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 600004, monster_id = 21011001, pos = { x = 2269.437, y = 274.797, z = -1750.034 }, rot = { x = 0.000, y = 296.575, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 600005, monster_id = 21010601, pos = { x = 2260.383, y = 273.962, z = -1749.934 }, rot = { x = 0.000, y = 353.333, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9011, area_id = 1 },
	{ config_id = 600006, monster_id = 21010301, pos = { x = 2255.950, y = 272.122, z = -1757.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 600007, gadget_id = 70210102, pos = { x = 2260.166, y = 274.579, z = -1746.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600010, gadget_id = 70220014, pos = { x = 2260.029, y = 272.920, z = -1734.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600011, gadget_id = 70220014, pos = { x = 2261.351, y = 273.070, z = -1733.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600012, gadget_id = 70220013, pos = { x = 2263.412, y = 273.203, z = -1732.657 }, rot = { x = 0.000, y = 41.298, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600013, gadget_id = 70300100, pos = { x = 2251.324, y = 271.593, z = -1748.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 600014, gadget_id = 70300088, pos = { x = 2267.184, y = 273.927, z = -1735.746 }, rot = { x = 0.000, y = 152.937, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 600015, gadget_id = 70300086, pos = { x = 2268.845, y = 274.646, z = -1740.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 600016, gadget_id = 70300086, pos = { x = 2271.965, y = 274.763, z = -1747.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 600017, gadget_id = 70220013, pos = { x = 2273.365, y = 273.355, z = -1758.557 }, rot = { x = 0.000, y = 12.449, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600018, gadget_id = 70220013, pos = { x = 2264.497, y = 273.402, z = -1763.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 600019, gadget_id = 70300081, pos = { x = 2269.876, y = 273.704, z = -1763.234 }, rot = { x = 0.000, y = 65.976, z = 8.241 }, level = 15, area_id = 1 },
	{ config_id = 600020, gadget_id = 70300101, pos = { x = 2258.789, y = 272.264, z = -1760.221 }, rot = { x = 0.000, y = 49.761, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1600008, name = "GADGET_STATE_CHANGE_600008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_600008", action = "action_EVENT_GADGET_STATE_CHANGE_600008" }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 600001, 600002, 600003, 600004, 600005, 600006 },
		gadgets = { 600007, 600010, 600011, 600012, 600013, 600014, 600015, 600016, 600017, 600018, 600019, 600020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_600008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_600008(context, evt)
	if 600007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_600008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330036001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end