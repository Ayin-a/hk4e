-- 基础信息
local base_info = {
	group_id = 133103334
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
	{ config_id = 334014, npc_id = 20039, pos = { x = 843.307, y = 387.920, z = 1459.051 }, rot = { x = 0.000, y = 88.444, z = 0.000 }, area_id = 6 },
	{ config_id = 334015, npc_id = 20040, pos = { x = 664.119, y = 415.733, z = 1827.555 }, rot = { x = 0.000, y = 185.273, z = 0.000 }, area_id = 6 },
	{ config_id = 334016, npc_id = 20041, pos = { x = 1070.725, y = 388.279, z = 1621.087 }, rot = { x = 0.000, y = 294.445, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
	{ config_id = 334001, gadget_id = 70360001, pos = { x = 794.987, y = 324.216, z = 1527.871 }, rot = { x = 0.000, y = 271.705, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 334002, gadget_id = 70360001, pos = { x = 656.186, y = 414.931, z = 1832.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 334005, gadget_id = 70710091, pos = { x = 664.159, y = 415.154, z = 1827.752 }, rot = { x = 0.000, y = 184.248, z = 0.000 }, level = 24, state = GadgetState.GearStart, persistent = true, area_id = 6 },
	{ config_id = 334006, gadget_id = 70360001, pos = { x = 1070.591, y = 388.155, z = 1621.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 334009, gadget_id = 70710091, pos = { x = 1070.900, y = 387.864, z = 1620.850 }, rot = { x = 0.000, y = 312.745, z = 0.000 }, level = 24, state = GadgetState.GearStart, persistent = true, area_id = 6 },
	{ config_id = 334010, gadget_id = 70360001, pos = { x = 843.400, y = 387.500, z = 1458.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 334013, gadget_id = 70710091, pos = { x = 843.098, y = 387.402, z = 1459.120 }, rot = { x = 0.000, y = 103.028, z = 0.000 }, level = 24, state = GadgetState.GearStart, persistent = true, area_id = 6 },
	{ config_id = 334019, gadget_id = 70900321, pos = { x = 795.997, y = 323.857, z = 1527.757 }, rot = { x = 0.000, y = 262.314, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 334020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 794.880, y = 323.661, z = 1527.623 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1334003, name = "GADGET_CREATE_334003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334003", action = "action_EVENT_GADGET_CREATE_334003", trigger_count = 0 },
	{ config_id = 1334004, name = "SELECT_OPTION_334004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334004", action = "action_EVENT_SELECT_OPTION_334004" },
	{ config_id = 1334007, name = "GADGET_CREATE_334007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334007", action = "action_EVENT_GADGET_CREATE_334007", trigger_count = 0 },
	{ config_id = 1334008, name = "SELECT_OPTION_334008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334008", action = "action_EVENT_SELECT_OPTION_334008" },
	{ config_id = 1334011, name = "GADGET_CREATE_334011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334011", action = "action_EVENT_GADGET_CREATE_334011", trigger_count = 0 },
	{ config_id = 1334012, name = "SELECT_OPTION_334012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334012", action = "action_EVENT_SELECT_OPTION_334012" },
	{ config_id = 1334017, name = "QUEST_FINISH_334017", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_334017", action = "action_EVENT_QUEST_FINISH_334017" },
	{ config_id = 1334018, name = "SELECT_OPTION_334018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_334018", action = "action_EVENT_SELECT_OPTION_334018" },
	{ config_id = 1334020, name = "ENTER_REGION_334020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_334020", action = "action_EVENT_ENTER_REGION_334020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "zhenjun1", value = 1, no_refresh = true },
	{ config_id = 2, name = "zhenjun2", value = 1, no_refresh = true },
	{ config_id = 3, name = "zhenjun3", value = 1, no_refresh = true },
	{ config_id = 4, name = "EnableOption", value = 0, no_refresh = true }
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
		gadgets = { 334005, 334009, 334013 },
		regions = { },
		triggers = { },
		npcs = { 334014, 334015, 334016 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 334020 },
		triggers = { "GADGET_CREATE_334003", "SELECT_OPTION_334004", "GADGET_CREATE_334007", "SELECT_OPTION_334008", "GADGET_CREATE_334011", "SELECT_OPTION_334012", "QUEST_FINISH_334017", "SELECT_OPTION_334018", "ENTER_REGION_334020" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 334001, 334002, 334006, 334010 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 334019 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_334003(context, evt)
	if 334002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"zhenjun1"为1
	if ScriptLib.GetGroupVariableValue(context, "zhenjun1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103334, 334002, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334004(context, evt)
	-- 判断是gadgetid 334002 option_id 171
	if 334002 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334004(context, evt)
	-- 将configid为 334005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103334, 2)
	
	-- 删除指定group： 133103334 ；指定config：334002；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103334, 334002, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103334_step1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "zhenjun1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "zhenjun1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_334007(context, evt)
	if 334006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"zhenjun2"为1
	if ScriptLib.GetGroupVariableValue(context, "zhenjun2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103334, 334006, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334008(context, evt)
	-- 判断是gadgetid 334006 option_id 171
	if 334006 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334008(context, evt)
	-- 将configid为 334009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103334, 3)
	
	-- 删除指定group： 133103334 ；指定config：334006；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103334, 334006, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103334_step2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "zhenjun2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "zhenjun2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_334011(context, evt)
	if 334010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"zhenjun3"为1
	if ScriptLib.GetGroupVariableValue(context, "zhenjun3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103334, 334010, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334012(context, evt)
	-- 判断是gadgetid 334010 option_id 171
	if 334010 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334012(context, evt)
	-- 将configid为 334013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 334013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103334, 4)
	
	-- 删除指定group： 133103334 ；指定config：334010；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103334, 334010, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103334_step3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "zhenjun3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "zhenjun3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_334017(context, evt)
	--检查ID为7100206的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7100206 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_334017(context, evt)
	-- 将本组内变量名为 "EnableOption" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EnableOption", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_334018(context, evt)
	-- 判断是gadgetid 334001 option_id 32
	if 334001 ~= evt.param1 then
		return false	
	end
	
	if 32 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_334018(context, evt)
	-- 删除指定group： 133103334 ；指定config：334001；物件身上指定option：32；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103334, 334001, 32) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103334, 5)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103334_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 解锁目标47
	if 0 ~= ScriptLib.UnlockForce(context, 47) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 将本组内变量名为 "EnableOption" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "EnableOption", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为133103334 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133103334, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_334020(context, evt)
	if evt.param1 ~= 334020 then return false end
	
	-- 判断变量"EnableOption"为1
	if ScriptLib.GetGroupVariableValue(context, "EnableOption") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_334020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103334, 334001, {32}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end