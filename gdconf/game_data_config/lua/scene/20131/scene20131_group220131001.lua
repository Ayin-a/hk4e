-- 基础信息
local base_info = {
	group_id = 220131001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 22010101, pos = { x = 172.281, y = 0.311, z = -3.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 1002, monster_id = 21020201, pos = { x = 169.312, y = 0.312, z = 3.343 }, rot = { x = 0.000, y = 133.836, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 1003, monster_id = 21010201, pos = { x = 169.126, y = 0.310, z = -1.373 }, rot = { x = 0.000, y = 66.124, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 1004, monster_id = 21010401, pos = { x = 172.656, y = 0.312, z = 4.431 }, rot = { x = 0.000, y = 183.824, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70300089, pos = { x = 172.610, y = 0.307, z = 0.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350005, pos = { x = 156.695, y = 0.278, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70211002, pos = { x = 165.097, y = 0.315, z = 0.225 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "ANY_MONSTER_DIE_1008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1008", action = "action_EVENT_ANY_MONSTER_DIE_1008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 1005, monster_id = 21010401, pos = { x = 174.745, y = 0.307, z = 0.410 }, rot = { x = 0.000, y = 260.576, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
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
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { 1006, 1007, 1009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 调用提示id为 201310103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 2, 220131016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 1009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end