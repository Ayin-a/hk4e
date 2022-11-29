-- 基础信息
local base_info = {
	group_id = 220147008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8002, monster_id = 26090201, pos = { x = 736.800, y = 71.661, z = 334.863 }, rot = { x = 0.000, y = 9.436, z = 0.000 }, level = 1, pose_id = 104 },
	{ config_id = 8003, monster_id = 26090201, pos = { x = 732.834, y = 71.401, z = 337.824 }, rot = { x = 0.000, y = 68.370, z = 0.000 }, level = 1, pose_id = 104 },
	{ config_id = 8004, monster_id = 26090401, pos = { x = 732.838, y = 71.390, z = 333.341 }, rot = { x = 0.000, y = 57.662, z = 0.000 }, level = 1, pose_id = 104 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70211022, pos = { x = 736.865, y = 71.666, z = 340.174 }, rot = { x = 0.000, y = 221.182, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 8006, gadget_id = 70210101, pos = { x = 736.524, y = 58.990, z = 346.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "ANY_MONSTER_DIE_8005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8005", action = "action_EVENT_ANY_MONSTER_DIE_8005" },
	{ config_id = 1008007, name = "GADGET_STATE_CHANGE_8007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8007", action = "action_EVENT_GADGET_STATE_CHANGE_8007" }
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
		gadgets = { 8001, 8006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8005", "GADGET_STATE_CHANGE_8007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8002, 8003, 8004 },
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
function condition_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	if 8001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	-- 调用提示id为 33010114 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end