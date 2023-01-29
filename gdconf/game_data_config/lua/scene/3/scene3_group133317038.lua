-- 基础信息
local base_info = {
	group_id = 133317038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38004, monster_id = 21010101, pos = { x = 889.084, y = 200.000, z = 6091.029 }, rot = { x = 0.000, y = 120.069, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 38005, monster_id = 21010101, pos = { x = 894.944, y = 200.000, z = 6094.604 }, rot = { x = 0.000, y = 188.187, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 38006, monster_id = 21010101, pos = { x = 898.554, y = 200.000, z = 6090.521 }, rot = { x = 0.000, y = 280.385, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38001, gadget_id = 70950011, pos = { x = 884.569, y = 200.098, z = 6069.159 }, rot = { x = 0.000, y = 87.268, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 30 },
	{ config_id = 38007, gadget_id = 70360022, pos = { x = 907.164, y = 210.158, z = 6074.450 }, rot = { x = 25.156, y = 266.593, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 38008, gadget_id = 70220013, pos = { x = 906.364, y = 207.644, z = 6077.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038002, name = "ANY_MONSTER_DIE_38002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38002", action = "action_EVENT_ANY_MONSTER_DIE_38002", trigger_count = 0 },
	{ config_id = 1038003, name = "GADGET_STATE_CHANGE_38003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38003", action = "action_EVENT_GADGET_STATE_CHANGE_38003", trigger_count = 0 },
	{ config_id = 1038009, name = "ANY_GADGET_DIE_38009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38009", action = "action_EVENT_ANY_GADGET_DIE_38009", trigger_count = 0 }
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
		gadgets = { 38001, 38007, 38008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38002", "GADGET_STATE_CHANGE_38003", "ANY_GADGET_DIE_38009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 38004, 38005, 38006 },
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
function condition_EVENT_ANY_MONSTER_DIE_38002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133317038, EntityType.GADGET, 38001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38003(context, evt)
	if 38007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317038, 2)
	
	-- 调用提示id为 1000230013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000230013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38009(context, evt)
	if 38008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38009(context, evt)
	-- 将configid为 38007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end