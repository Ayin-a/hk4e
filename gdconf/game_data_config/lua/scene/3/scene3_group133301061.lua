-- 基础信息
local base_info = {
	group_id = 133301061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 26090201, pos = { x = -191.800, y = 240.268, z = 3614.827 }, rot = { x = 0.000, y = 204.176, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 104, area_id = 29 },
	{ config_id = 61003, monster_id = 26120101, pos = { x = -199.927, y = 240.343, z = 3613.051 }, rot = { x = 0.000, y = 147.933, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 29 },
	{ config_id = 61004, monster_id = 26090201, pos = { x = -200.034, y = 240.574, z = 3607.626 }, rot = { x = 0.000, y = 25.429, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 29 },
	{ config_id = 61005, monster_id = 26090401, pos = { x = -187.852, y = 240.706, z = 3615.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 103, area_id = 29 },
	{ config_id = 61006, monster_id = 26090401, pos = { x = -186.032, y = 239.089, z = 3609.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61007, gadget_id = 70360001, pos = { x = -195.195, y = 239.800, z = 3611.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061002, name = "ANY_MONSTER_DIE_61002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61002", action = "action_EVENT_ANY_MONSTER_DIE_61002", trigger_count = 0 }
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
		monsters = { 61001, 61003, 61004, 61005, 61006 },
		gadgets = { 61007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302509_CLEAR") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 61007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end