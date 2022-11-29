-- 基础信息
local base_info = {
	group_id = 133308242
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {440}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 24040101, pos = { x = -1297.393, y = 27.504, z = 4552.974 }, rot = { x = 0.000, y = 189.627, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1004, area_id = 26 },
	{ config_id = 242003, monster_id = 24040301, pos = { x = -1291.610, y = 26.903, z = 4545.299 }, rot = { x = 0.000, y = 279.161, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 26 },
	{ config_id = 242005, monster_id = 24040101, pos = { x = -1293.547, y = 26.597, z = 4545.611 }, rot = { x = 0.000, y = 279.161, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 26 },
	{ config_id = 242006, monster_id = 24040201, pos = { x = -1305.056, y = 26.597, z = 4547.768 }, rot = { x = 0.000, y = 100.313, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 242007, gadget_id = 70330434, pos = { x = -1269.102, y = 21.845, z = 4541.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 242008, gadget_id = 70330283, pos = { x = -1298.578, y = 26.642, z = 4546.690 }, rot = { x = 0.000, y = 324.943, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 },
	{ config_id = 242016, gadget_id = 70330434, pos = { x = -1298.888, y = 47.242, z = 4547.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 242015, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 15.000 }, pos = { x = -1269.428, y = 51.565, z = 4542.042 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1242009, name = "SELECT_OPTION_242009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_242009", action = "action_EVENT_SELECT_OPTION_242009", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1242010, name = "GADGET_STATE_CHANGE_242010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_242010", action = "action_EVENT_GADGET_STATE_CHANGE_242010", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1242011, name = "GROUP_LOAD_242011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_242011", action = "action_EVENT_GROUP_LOAD_242011", trigger_count = 0 },
	{ config_id = 1242012, name = "ANY_MONSTER_DIE_242012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242012", action = "action_EVENT_ANY_MONSTER_DIE_242012" },
	{ config_id = 1242013, name = "ANY_MONSTER_DIE_242013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242013", action = "action_EVENT_ANY_MONSTER_DIE_242013" },
	{ config_id = 1242014, name = "ANY_MONSTER_DIE_242014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242014", action = "action_EVENT_ANY_MONSTER_DIE_242014" },
	{ config_id = 1242015, name = "ENTER_REGION_242015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_242015", action = "action_EVENT_ENTER_REGION_242015" },
	-- 杀一个怪
	{ config_id = 1242017, name = "GROUP_LOAD_242017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_242017", action = "action_EVENT_GROUP_LOAD_242017", trigger_count = 0 },
	-- 杀两个怪
	{ config_id = 1242018, name = "GROUP_LOAD_242018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_242018", action = "action_EVENT_GROUP_LOAD_242018", trigger_count = 0 },
	-- 杀所有怪
	{ config_id = 1242019, name = "GROUP_LOAD_242019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_242019", action = "action_EVENT_GROUP_LOAD_242019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 242002, monster_id = 24040201, pos = { x = -1299.606, y = 26.597, z = 4541.249 }, rot = { x = 0.000, y = 10.696, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1004, area_id = 26 },
		{ config_id = 242004, monster_id = 24040301, pos = { x = -1305.056, y = 26.807, z = 4547.767 }, rot = { x = 0.000, y = 100.313, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 26 }
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
		monsters = { 242001 },
		gadgets = { 242008 },
		regions = { },
		triggers = { "SELECT_OPTION_242009", "GADGET_STATE_CHANGE_242010", "GROUP_LOAD_242011", "ANY_MONSTER_DIE_242012", "GROUP_LOAD_242017", "GROUP_LOAD_242018", "GROUP_LOAD_242019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 242003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_242013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 242005, 242006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_242014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 242007, 242016 },
		regions = { 242015 },
		triggers = { "ENTER_REGION_242015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_242009(context, evt)
	-- 判断是gadgetid 242008 option_id 440
	if 242008 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_242009(context, evt)
	-- 将configid为 242008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242008, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_242010(context, evt)
	if 242008 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_242010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305515") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_242011(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308242, 242008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_242011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305515") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133308122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242012(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242013(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242014(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 242008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_242015(context, evt)
	if evt.param1 ~= 242015 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_242015(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1298.888, y=47.24238, z=4547.299}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1298.888, y=47.24238, z=4547.299}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_242017(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_242017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_242018(context, evt)
	-- 判断变量"monsterdie"为2
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_242018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308242, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_242019(context, evt)
	-- 判断变量"monsterdie"为3
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 3 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133308242, 242008) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_242019(context, evt)
	-- 将configid为 242008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"