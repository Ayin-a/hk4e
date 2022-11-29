-- 基础信息
local base_info = {
	group_id = 177005179
}

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
	{ config_id = 179001, gadget_id = 70360170, pos = { x = 225.300, y = 316.963, z = 288.469 }, rot = { x = 270.000, y = 217.901, z = 0.000 }, level = 36, persistent = true, worktop_config = { is_persistent = true, init_options = { 324 } }, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 03：拉动拉杆
	{ config_id = 1179002, name = "SELECT_OPTION_179002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_179002", action = "action_EVENT_SELECT_OPTION_179002", trigger_count = 0 }
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
		gadgets = { 179001 },
		regions = { },
		triggers = { "SELECT_OPTION_179002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_179002(context, evt)
	--联机下不可使用
	if ScriptLib.CheckIsInMpMode(context) then
	    ScriptLib.AssignPlayerShowTemplateReminder(context, 165, {param_vec={},param_uid_vec={},uid_vec={context.uid}})
	    return false 
	end
	
	-- 判断是gadgetid 179001 option_id 324
	if 179001 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_179002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7227617") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 179001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 177005179 ；指定config：179001；物件身上指定option：324；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005179, 179001, 324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 177005076, monsters = {}, gadgets = {76015} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end