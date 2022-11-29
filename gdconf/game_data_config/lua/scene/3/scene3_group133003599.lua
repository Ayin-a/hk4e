-- 基础信息
local base_info = {
	group_id = 133003599
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 599001, monster_id = 21010601, pos = { x = 2185.775, y = 254.766, z = -1687.477 }, rot = { x = 0.000, y = 275.236, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 599002, monster_id = 21010601, pos = { x = 2197.102, y = 254.199, z = -1683.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 1 },
	{ config_id = 599003, monster_id = 21010201, pos = { x = 2193.114, y = 255.390, z = -1689.910 }, rot = { x = 352.699, y = 251.149, z = 356.278 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 599012, monster_id = 21030301, pos = { x = 2190.304, y = 255.667, z = -1692.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 599013, monster_id = 21010201, pos = { x = 2190.809, y = 255.071, z = -1688.165 }, rot = { x = 352.699, y = 182.107, z = 356.278 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 599004, gadget_id = 70300083, pos = { x = 2193.864, y = 253.797, z = -1680.984 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 599005, gadget_id = 70300083, pos = { x = 2186.999, y = 254.102, z = -1683.285 }, rot = { x = 0.000, y = 339.465, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 599006, gadget_id = 70300100, pos = { x = 2184.363, y = 254.653, z = -1687.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 599007, gadget_id = 70300100, pos = { x = 2196.969, y = 253.964, z = -1682.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 599010, gadget_id = 70210102, pos = { x = 2190.827, y = 255.327, z = -1689.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1599009, name = "GADGET_STATE_CHANGE_599009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_599009", action = "action_EVENT_GADGET_STATE_CHANGE_599009" }
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
		monsters = { 599001, 599002, 599003, 599012, 599013 },
		gadgets = { 599004, 599005, 599006, 599007, 599010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_599009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_599009(context, evt)
	if 599010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_599009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035991") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end