-- 基础信息
local base_info = {
	group_id = 133108199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199001, monster_id = 25010501, pos = { x = -498.815, y = 200.132, z = -880.752 }, rot = { x = 0.000, y = 259.569, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 199002, monster_id = 25010401, pos = { x = -504.920, y = 200.098, z = -874.122 }, rot = { x = 0.000, y = 206.903, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 7 },
	{ config_id = 199006, monster_id = 25010201, pos = { x = -503.000, y = 200.143, z = -875.768 }, rot = { x = 0.000, y = 236.451, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 2, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199003, gadget_id = 70800089, pos = { x = -498.148, y = 200.000, z = -879.257 }, rot = { x = 0.000, y = 32.252, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199004, gadget_id = 70800105, pos = { x = -503.193, y = 200.000, z = -880.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199005, gadget_id = 70300118, pos = { x = -508.680, y = 200.000, z = -878.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199007, gadget_id = 70800089, pos = { x = -504.315, y = 200.000, z = -874.297 }, rot = { x = 0.000, y = 324.748, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199008, gadget_id = 70800060, pos = { x = -508.680, y = 200.000, z = -878.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199011, gadget_id = 70800105, pos = { x = -508.607, y = 200.000, z = -874.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199016, gadget_id = 70360001, pos = { x = -517.749, y = 200.000, z = -793.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199017, gadget_id = 70360001, pos = { x = -512.808, y = 200.000, z = -716.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 199018, gadget_id = 70360001, pos = { x = -458.335, y = 200.000, z = -674.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 199012, shape = RegionShape.SPHERE, radius = 170, pos = { x = -476.637, y = 200.000, z = -749.958 }, area_id = 7, team_ability_group_list = { "QunyugeDebris_Play_QuestVersion" } }
}

-- 触发器
triggers = {
	{ config_id = 1199009, name = "ANY_MONSTER_DIE_199009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_199009", action = "action_EVENT_ANY_MONSTER_DIE_199009" },
	{ config_id = 1199010, name = "SELECT_OPTION_199010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199010", action = "action_EVENT_SELECT_OPTION_199010" },
	{ config_id = 1199013, name = "GADGET_CREATE_199013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199013", action = "action_EVENT_GADGET_CREATE_199013", trigger_count = 0 },
	{ config_id = 1199014, name = "GROUP_LOAD_199014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_199014", action = "action_EVENT_GROUP_LOAD_199014", trigger_count = 0 },
	-- 第一次动态加载
	{ config_id = 1199015, name = "GROUP_REFRESH_199015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_199015", action = "action_EVENT_GROUP_REFRESH_199015", trigger_count = 0 },
	{ config_id = 1199019, name = "GADGET_STATE_CHANGE_199019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_199019", action = "action_EVENT_GADGET_STATE_CHANGE_199019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "killed", value = 0, no_refresh = true },
	{ config_id = 2, name = "picked", value = 0, no_refresh = true }
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
		monsters = { 199001, 199002, 199006 },
		gadgets = { 199003, 199004, 199007, 199011, 199016, 199017, 199018 },
		regions = { 199012 },
		triggers = { "ANY_MONSTER_DIE_199009", "SELECT_OPTION_199010", "GADGET_CREATE_199013", "GROUP_LOAD_199014", "GROUP_REFRESH_199015", "GADGET_STATE_CHANGE_199019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 199005 },
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
function condition_EVENT_ANY_MONSTER_DIE_199009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_199009(context, evt)
	-- 将configid为 199008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108199, 199008, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108199, 2)
	
	-- 将本组内变量名为 "killed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199010(context, evt)
	if 199008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199010(context, evt)
	-- 删除指定group： 133108199 ；指定config：199008；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108199, 199008, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 199008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133108199") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108199, EntityType.GADGET, 199005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 给浪船加特效
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 1); 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_199013(context, evt)
	-- 判断变量"killed"为1
	if ScriptLib.GetGroupVariableValue(context, "killed") ~= 1 then
			return false
	end
	
	if 199008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199013(context, evt)
	-- 将configid为 199008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108199, 199008, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_199014(context, evt)
	-- 判断变量"picked"为0
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_199014(context, evt)
	-- 创建id为199008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_199015(context, evt)
	-- 判断变量"picked"为0
	if ScriptLib.GetGroupVariableValue(context, "picked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_199015(context, evt)
	-- 创建id为199008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_199019(context, evt)
	if 199008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_199019(context, evt)
	-- 将本组内变量名为 "picked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "picked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end