-- 基础信息
local base_info = {
	group_id = 133301541
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 541001, monster_id = 23020102, pos = { x = -1184.218, y = 314.753, z = 2789.477 }, rot = { x = 0.000, y = 236.631, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1008, 1011, 1019 }, isOneoff = true, title_id = 10121, special_name_id = 10171, area_id = 21, vision_level = VisionLevelType.VISION_LEVEL_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 541003, gadget_id = 70360001, pos = { x = -1184.907, y = 314.857, z = 2789.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1541002, name = "ANY_MONSTER_DIE_541002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_541002", action = "action_EVENT_ANY_MONSTER_DIE_541002", trigger_count = 0 },
	{ config_id = 1541004, name = "GROUP_LOAD_541004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_541004", action = "action_EVENT_GROUP_LOAD_541004", trigger_count = 0 }
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
		gadgets = { 541003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_541002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 541001 },
		gadgets = { 541003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_541002", "GROUP_LOAD_541004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_541002(context, evt)
	if 541001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_541002(context, evt)
	-- 调用提示id为 33010059 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010059) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 541003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_541004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_541004(context, evt)
	-- 将configid为 541003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end