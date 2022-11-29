-- 基础信息
local base_info = {
	group_id = 133301060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60003, monster_id = 26090101, pos = { x = -209.989, y = 225.990, z = 3510.219 }, rot = { x = 0.000, y = 334.129, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 29 },
	{ config_id = 60004, monster_id = 26090101, pos = { x = -198.156, y = 225.990, z = 3521.308 }, rot = { x = 0.000, y = 23.264, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 29 },
	{ config_id = 60006, monster_id = 26120301, pos = { x = -204.168, y = 225.851, z = 3515.629 }, rot = { x = 0.000, y = 192.671, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 104, area_id = 29 },
	{ config_id = 60007, monster_id = 26090101, pos = { x = -200.673, y = 225.990, z = 3532.497 }, rot = { x = 0.000, y = 23.264, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 29 },
	{ config_id = 60008, monster_id = 26090101, pos = { x = -212.308, y = 225.990, z = 3517.351 }, rot = { x = 0.000, y = 23.264, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60001, gadget_id = 70360001, pos = { x = -203.683, y = 225.990, z = 3512.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060002, name = "ANY_MONSTER_DIE_60002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60002", action = "action_EVENT_ANY_MONSTER_DIE_60002", trigger_count = 0 }
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
		monsters = { 60003, 60004, 60006, 60007, 60008 },
		gadgets = { 60001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302508_CLEAR") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 60001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end