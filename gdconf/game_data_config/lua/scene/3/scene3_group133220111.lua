-- 基础信息
local base_info = {
	group_id = 133220111
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
	{ config_id = 111017, gadget_id = 70500000, pos = { x = -1852.175, y = 192.172, z = -4242.568 }, rot = { x = 0.000, y = 309.602, z = 0.000 }, level = 27, point_type = 9131, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111018, gadget_id = 70500000, pos = { x = -1862.513, y = 192.177, z = -4241.928 }, rot = { x = 353.331, y = 13.454, z = 8.630 }, level = 27, point_type = 9131, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111019, gadget_id = 70500000, pos = { x = -1859.519, y = 192.182, z = -4245.034 }, rot = { x = 0.000, y = 13.454, z = 0.000 }, level = 27, point_type = 9131, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111020, gadget_id = 70500000, pos = { x = -1862.608, y = 192.068, z = -4240.328 }, rot = { x = 0.000, y = 13.454, z = 0.000 }, level = 27, point_type = 9131, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111023, gadget_id = 70220051, pos = { x = -1851.739, y = 192.054, z = -4243.274 }, rot = { x = 14.863, y = 72.358, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111024, gadget_id = 70220051, pos = { x = -1853.223, y = 192.059, z = -4245.171 }, rot = { x = 344.567, y = 71.251, z = 8.163 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111025, gadget_id = 70220050, pos = { x = -1852.598, y = 192.161, z = -4245.142 }, rot = { x = 355.365, y = 337.632, z = 355.293 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111026, gadget_id = 70220050, pos = { x = -1852.087, y = 192.619, z = -4239.880 }, rot = { x = 313.143, y = 96.158, z = 301.163 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111028, gadget_id = 70220050, pos = { x = -1862.307, y = 192.257, z = -4242.635 }, rot = { x = 0.000, y = 106.341, z = 352.032 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111029, gadget_id = 70220052, pos = { x = -1852.971, y = 192.048, z = -4244.608 }, rot = { x = 0.000, y = 203.789, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111030, gadget_id = 70220052, pos = { x = -1860.754, y = 192.158, z = -4243.963 }, rot = { x = 7.086, y = 96.933, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111031, gadget_id = 70220052, pos = { x = -1861.530, y = 192.125, z = -4242.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111032, gadget_id = 70220051, pos = { x = -1852.600, y = 193.006, z = -4239.221 }, rot = { x = 331.274, y = 217.767, z = 7.126 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111033, gadget_id = 70211001, pos = { x = -1856.908, y = 192.426, z = -4245.809 }, rot = { x = 0.000, y = 359.601, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 111034, gadget_id = 70220052, pos = { x = -1853.004, y = 192.352, z = -4237.335 }, rot = { x = 7.944, y = 135.901, z = 358.704 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111036, gadget_id = 70210101, pos = { x = -1853.269, y = 192.332, z = -4238.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111037, gadget_id = 70210101, pos = { x = -1851.977, y = 192.941, z = -4240.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111038, gadget_id = 70210101, pos = { x = -1852.847, y = 192.978, z = -4239.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111039, gadget_id = 70210101, pos = { x = -1853.039, y = 192.217, z = -4244.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111040, gadget_id = 70210101, pos = { x = -1852.582, y = 192.519, z = -4240.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111041, gadget_id = 70210101, pos = { x = -1862.720, y = 191.996, z = -4243.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111042, gadget_id = 70210101, pos = { x = -1853.321, y = 192.087, z = -4240.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111043, gadget_id = 70210101, pos = { x = -1862.633, y = 192.834, z = -4243.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111044, gadget_id = 70210101, pos = { x = -1861.394, y = 192.460, z = -4244.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111045, gadget_id = 70210101, pos = { x = -1851.768, y = 192.232, z = -4243.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 111046, gadget_id = 70500000, pos = { x = -1862.926, y = 191.989, z = -4237.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9131, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111022, name = "GADGET_STATE_CHANGE_111022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111022", action = "action_EVENT_GADGET_STATE_CHANGE_111022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 111001, gadget_id = 70900304, pos = { x = -1883.821, y = 193.464, z = -4221.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 111002, gadget_id = 70900304, pos = { x = -1883.821, y = 193.464, z = -4223.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111003, gadget_id = 70900304, pos = { x = -1883.821, y = 193.464, z = -4225.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111004, gadget_id = 70900304, pos = { x = -1883.821, y = 193.464, z = -4227.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111005, gadget_id = 70900304, pos = { x = -1885.891, y = 193.464, z = -4221.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111006, gadget_id = 70900304, pos = { x = -1885.821, y = 193.464, z = -4223.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 111007, gadget_id = 70900304, pos = { x = -1885.821, y = 193.464, z = -4225.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111008, gadget_id = 70900304, pos = { x = -1885.821, y = 193.464, z = -4227.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111009, gadget_id = 70900304, pos = { x = -1887.821, y = 193.464, z = -4227.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111010, gadget_id = 70900304, pos = { x = -1887.821, y = 193.464, z = -4225.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 111011, gadget_id = 70900304, pos = { x = -1887.836, y = 193.464, z = -4223.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 111012, gadget_id = 70900304, pos = { x = -1887.890, y = 193.464, z = -4221.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111013, gadget_id = 70900304, pos = { x = -1889.889, y = 193.464, z = -4221.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111014, gadget_id = 70900304, pos = { x = -1889.835, y = 193.464, z = -4223.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111015, gadget_id = 70900304, pos = { x = -1889.821, y = 193.464, z = -4225.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 111016, gadget_id = 70900304, pos = { x = -1889.821, y = 193.464, z = -4227.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 111027, gadget_id = 70211001, pos = { x = -1853.309, y = 192.010, z = -4244.954 }, rot = { x = 0.000, y = 9.576, z = 17.412 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
		monsters = { },
		gadgets = { 111017, 111018, 111019, 111020, 111023, 111024, 111025, 111026, 111028, 111029, 111030, 111031, 111032, 111033, 111034, 111036, 111037, 111038, 111039, 111040, 111041, 111042, 111043, 111044, 111045, 111046 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111022(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133220111, 111033) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201112") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end