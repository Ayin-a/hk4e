-- 基础信息
local base_info = {
	group_id = 133104191
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 465, monster_id = 21010101, pos = { x = 254.925, y = 210.169, z = 327.787 }, rot = { x = 0.000, y = 154.319, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 466, monster_id = 21010601, pos = { x = 256.341, y = 210.169, z = 326.366 }, rot = { x = 0.000, y = 319.409, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 468, monster_id = 21010401, pos = { x = 263.102, y = 215.913, z = 334.150 }, rot = { x = 0.000, y = 107.763, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 469, monster_id = 21010401, pos = { x = 265.737, y = 211.888, z = 332.924 }, rot = { x = 0.000, y = 166.348, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 191001, monster_id = 21010501, pos = { x = 267.051, y = 212.526, z = 327.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 32, area_id = 9 },
	{ config_id = 191002, monster_id = 21011001, pos = { x = 263.117, y = 216.240, z = 333.934 }, rot = { x = 0.000, y = 176.300, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, affix = { 1019 }, pose_id = 32, area_id = 9 },
	{ config_id = 191003, monster_id = 21011201, pos = { x = 264.046, y = 210.322, z = 326.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9003, area_id = 9 },
	{ config_id = 191004, monster_id = 21011201, pos = { x = 263.488, y = 210.322, z = 331.268 }, rot = { x = 0.000, y = 173.402, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9003, area_id = 9 },
	{ config_id = 191005, monster_id = 21011201, pos = { x = 260.927, y = 210.322, z = 328.959 }, rot = { x = 0.000, y = 87.665, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9003, area_id = 9 },
	{ config_id = 191008, monster_id = 21010901, pos = { x = 267.613, y = 212.011, z = 334.302 }, rot = { x = 0.000, y = 201.476, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 9 },
	{ config_id = 191009, monster_id = 21030101, pos = { x = 263.517, y = 210.322, z = 331.999 }, rot = { x = 0.000, y = 180.169, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 191010, monster_id = 21010201, pos = { x = 263.613, y = 210.322, z = 326.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 191011, monster_id = 21010201, pos = { x = 266.026, y = 210.322, z = 329.617 }, rot = { x = 0.000, y = 264.763, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 727, gadget_id = 70211001, pos = { x = 255.458, y = 209.987, z = 327.355 }, rot = { x = 337.954, y = 11.281, z = 332.012 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 728, gadget_id = 70220013, pos = { x = 265.705, y = 210.317, z = 332.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 729, gadget_id = 70220013, pos = { x = 267.621, y = 210.317, z = 328.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 730, gadget_id = 70220005, pos = { x = 260.837, y = 210.083, z = 330.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 191006, gadget_id = 70310006, pos = { x = 263.356, y = 210.322, z = 329.094 }, rot = { x = 357.947, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191007, name = "ANY_MONSTER_DIE_191007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191007", action = "action_EVENT_ANY_MONSTER_DIE_191007" }
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
		monsters = { 465, 466, 468, 469 },
		gadgets = { 727, 728, 729, 730 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 191001, 191002, 191003, 191004, 191005 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 191002, 191003, 191004, 191005, 191008 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 191001, 191002, 191009, 191010, 191011 },
		gadgets = { 191006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_191007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_191007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310419101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end