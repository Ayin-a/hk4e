-- 基础信息
local base_info = {
	group_id = 220133044
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
	{ config_id = 44001, gadget_id = 70310462, pos = { x = 235.858, y = 135.203, z = 2072.500 }, rot = { x = 15.522, y = 279.449, z = 353.641 }, level = 1, persistent = true },
	{ config_id = 44002, gadget_id = 70310463, pos = { x = 253.826, y = 139.511, z = 2075.425 }, rot = { x = 9.903, y = 260.231, z = 357.877 }, level = 1, persistent = true },
	{ config_id = 44003, gadget_id = 70310462, pos = { x = 271.885, y = 144.894, z = 2079.764 }, rot = { x = 0.107, y = 286.618, z = 1.499 }, level = 1, persistent = true },
	{ config_id = 44008, gadget_id = 70310464, pos = { x = 290.493, y = 150.204, z = 2060.732 }, rot = { x = 4.646, y = 336.946, z = 359.366 }, level = 1, persistent = true },
	{ config_id = 44011, gadget_id = 70310317, pos = { x = 300.176, y = 152.485, z = 2024.404 }, rot = { x = 3.634, y = 319.144, z = 356.991 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 44012, gadget_id = 70310317, pos = { x = 296.965, y = 152.639, z = 2022.489 }, rot = { x = 4.640, y = 348.450, z = 359.824 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 44014, gadget_id = 70310317, pos = { x = 293.610, y = 152.484, z = 2023.108 }, rot = { x = 4.330, y = 11.847, z = 1.679 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 4次切换已完成
	{ config_id = 1044004, name = "QUEST_START_44004", event = EventType.EVENT_QUEST_START, source = "4006916", condition = "condition_EVENT_QUEST_START_44004", action = "action_EVENT_QUEST_START_44004", trigger_count = 0 },
	-- 门1换门2
	{ config_id = 1044005, name = "QUEST_FINISH_44005", event = EventType.EVENT_QUEST_FINISH, source = "4006911", condition = "", action = "action_EVENT_QUEST_FINISH_44005", trigger_count = 0 },
	-- 门2换门3
	{ config_id = 1044006, name = "QUEST_FINISH_44006", event = EventType.EVENT_QUEST_FINISH, source = "4006920", condition = "", action = "action_EVENT_QUEST_FINISH_44006", trigger_count = 0 },
	-- 门3换门4
	{ config_id = 1044007, name = "QUEST_FINISH_44007", event = EventType.EVENT_QUEST_FINISH, source = "4006921", condition = "", action = "action_EVENT_QUEST_FINISH_44007", trigger_count = 0 },
	-- 刷出门1
	{ config_id = 1044009, name = "QUEST_START_44009", event = EventType.EVENT_QUEST_START, source = "4006911", condition = "", action = "action_EVENT_QUEST_START_44009", trigger_count = 0 },
	-- 门4换屏风
	{ config_id = 1044010, name = "QUEST_FINISH_44010", event = EventType.EVENT_QUEST_FINISH, source = "4006922", condition = "", action = "action_EVENT_QUEST_FINISH_44010", trigger_count = 0 },
	{ config_id = 1044013, name = "GROUP_LOAD_44013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_44013" },
	-- group加载保底-显示3屏风
	{ config_id = 1044015, name = "GROUP_LOAD_44015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_44015", trigger_count = 0 },
	-- group加载保底-切回空
	{ config_id = 1044016, name = "GROUP_LOAD_44016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_44016", trigger_count = 0 },
	-- group加载保底-回滚后清除已创建门
	{ config_id = 1044017, name = "GROUP_LOAD_44017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_44017", trigger_count = 0 },
	-- 对话重连保底-重刷门
	{ config_id = 1044018, name = "GROUP_REFRESH_44018", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_44018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 5, name = "talkShadowDoor", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_44013", "GROUP_LOAD_44017" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_44004", "QUEST_FINISH_44005", "QUEST_FINISH_44006", "QUEST_FINISH_44007", "QUEST_START_44009", "QUEST_FINISH_44010", "GROUP_LOAD_44015", "GROUP_LOAD_44016", "GROUP_LOAD_44017", "GROUP_REFRESH_44018" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 44001, 44002, 44003, 44008 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 44011, 44012, 44014 },
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
function condition_EVENT_QUEST_START_44004(context, evt)
	-- 判断变量"talkShadowDoor"为4
	if ScriptLib.GetGroupVariableValue(context, "talkShadowDoor") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_44004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006916") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_44005(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为44002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "talkShadowDoor" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talkShadowDoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_44006(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为44003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "talkShadowDoor" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talkShadowDoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_44007(context, evt)
	-- 将configid为 44003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为44008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "talkShadowDoor" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talkShadowDoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_44009(context, evt)
	-- 创建id为44001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_44010(context, evt)
	-- 将configid为 44008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133044, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006916") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "talkShadowDoor" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "talkShadowDoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44013(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006916)==2 or ScriptLib.GetHostQuestState(context,4006903)==2 then
				ScriptLib.RefreshGroup(context, { group_id = 220133044, suite = 2 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44015(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006904)==2 then
		ScriptLib.RemoveExtraGroupSuite(context, 220133044, 3)
		ScriptLib.AddExtraGroupSuite(context, 220133044, 4)
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44016(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006904)==3 then
				ScriptLib.RefreshGroup(context, { group_id = 220133044, suite = 1 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44017(context, evt)
	if ScriptLib.GetHostQuestState(context,4006903) == 2 then
		ScriptLib.RemoveExtraGroupSuite(context, 220133044, 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_44018(context, evt)
	if ScriptLib.GetHostQuestState(context,4006918) == 2 then
		ScriptLib.AddExtraGroupSuite(context, 220133044, 4)
	end
	
	return 0
end