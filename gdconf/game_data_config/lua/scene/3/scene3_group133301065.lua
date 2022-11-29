-- 基础信息
local base_info = {
	group_id = 133301065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 25310201, pos = { x = -1237.100, y = 177.087, z = 2952.561 }, rot = { x = 0.000, y = 349.772, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 1, area_id = 21 },
	{ config_id = 65005, monster_id = 25210203, pos = { x = -1231.021, y = 177.013, z = 2954.025 }, rot = { x = 0.000, y = 290.911, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, isOneoff = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65004, gadget_id = 70360001, pos = { x = -1248.915, y = 176.890, z = 2968.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065002, name = "ANY_MONSTER_DIE_65002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_65002", trigger_count = 0 },
	{ config_id = 1065003, name = "MONSTER_BATTLE_65003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_65003", action = "action_EVENT_MONSTER_BATTLE_65003" }
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
		monsters = { 65001, 65005 },
		gadgets = { 65004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_65002", "MONSTER_BATTLE_65003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_65002(context, evt)
	-- 将configid为 65004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_65003(context, evt)
	if 65001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_65003(context, evt)
	-- 调用提示id为 33010027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"