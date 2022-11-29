-- 基础信息
local base_info = {
	group_id = 133301042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42002, monster_id = 28060103, pos = { x = -1297.663, y = 126.000, z = 3418.253 }, rot = { x = 0.000, y = 15.185, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 23 },
	{ config_id = 42003, monster_id = 28060103, pos = { x = -1297.801, y = 126.000, z = 3424.936 }, rot = { x = 0.000, y = 82.612, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 23 },
	{ config_id = 42005, monster_id = 20010701, pos = { x = -1271.092, y = 145.085, z = 3442.287 }, rot = { x = 0.000, y = 186.028, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 42006, monster_id = 20010501, pos = { x = -1269.673, y = 144.455, z = 3438.867 }, rot = { x = 0.000, y = 335.477, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 },
	{ config_id = 42007, monster_id = 20010501, pos = { x = -1273.046, y = 144.281, z = 3439.471 }, rot = { x = 0.000, y = 53.916, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42001, gadget_id = 70210102, pos = { x = -1284.496, y = 126.133, z = 3427.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 42008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1271.321, y = 145.710, z = 3439.875 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1042004, name = "GADGET_STATE_CHANGE_42004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42004", action = "action_EVENT_GADGET_STATE_CHANGE_42004", trigger_count = 0 },
	{ config_id = 1042008, name = "ENTER_REGION_42008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 42002, 42003 },
		gadgets = { 42001 },
		regions = { 42008 },
		triggers = { "GADGET_STATE_CHANGE_42004", "ENTER_REGION_42008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 42005, 42006, 42007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_42004(context, evt)
	if 42001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302104_COLLECT") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end