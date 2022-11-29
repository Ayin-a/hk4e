-- 基础信息
local base_info = {
	group_id = 220145009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9002, monster_id = 26090701, pos = { x = 535.995, y = 94.862, z = 548.054 }, rot = { x = 0.000, y = 106.485, z = 0.000 }, level = 1, pose_id = 104 },
	{ config_id = 9003, monster_id = 26090901, pos = { x = 539.887, y = 94.855, z = 545.304 }, rot = { x = 0.000, y = 336.588, z = 0.000 }, level = 1, pose_id = 104 },
	{ config_id = 9004, monster_id = 26090801, pos = { x = 537.518, y = 94.739, z = 544.364 }, rot = { x = 0.000, y = 10.624, z = 0.000 }, level = 1, pose_id = 104 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70211002, pos = { x = 538.280, y = 94.903, z = 546.914 }, rot = { x = 0.000, y = 192.115, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009005, name = "ANY_MONSTER_DIE_9005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9005", action = "action_EVENT_ANY_MONSTER_DIE_9005" }
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
		monsters = { 9002, 9003, 9004 },
		gadgets = { 9001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9005(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 33010119 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end