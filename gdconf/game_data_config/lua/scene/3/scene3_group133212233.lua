-- 基础信息
local base_info = {
	group_id = 133212233
}

-- Trigger变量
local defs = {
	groupID = 133212052,
	shooter = 52001,
	 repeater = {52001,52002,52003,52005,52006,52007},
	target = 52010
}

-- DEFS_MISCS
function CheckSuccess02(context)

	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52001) then  --放大
		return false
	end
	
	if 101 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52002) then --反射1
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52003) then --反射2
		return false
	end
	
	if 303 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52005) then --反射3
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52006) then --反射4
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 52007) then --反射5
		return false
	end
	
	return true

end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 233010, gadget_id = 70950143, pos = { x = -3696.066, y = 200.000, z = -1757.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 233011, gadget_id = 70500000, pos = { x = -3695.882, y = 205.628, z = -1759.189 }, rot = { x = 0.000, y = 344.571, z = 0.000 }, level = 27, point_type = 9171, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1233012, name = "ANY_GADGET_DIE_233012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_233012", action = "action_EVENT_ANY_GADGET_DIE_233012", trigger_count = 0 },
	{ config_id = 1233013, name = "VARIABLE_CHANGE_233013", event = EventType.EVENT_VARIABLE_CHANGE, source = "ShootTrigger", condition = "condition_EVENT_VARIABLE_CHANGE_233013", action = "action_EVENT_VARIABLE_CHANGE_233013", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "ANY_GADGET_DIE_233012", "VARIABLE_CHANGE_233013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 233010, 233011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_233012", "VARIABLE_CHANGE_233013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_233012(context, evt)
	if 233010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_233012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7213202_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 321234031 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321234031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212022, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_233013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233001) then
		return false
	end
	
	if 101 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233002) then
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233003) then
		return false
	end
	
	if 304 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233005) then
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233006) then
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133212052, 233007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_233013(context, evt)
	-- 通知场景上的所有玩家播放名字为321205201 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321205201, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/EnergyAmplifier"