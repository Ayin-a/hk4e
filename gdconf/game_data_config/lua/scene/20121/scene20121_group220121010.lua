-- 基础信息
local base_info = {
	group_id = 220121010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21020201, pos = { x = -48.523, y = -583.177, z = -176.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 10002, monster_id = 21020201, pos = { x = -41.058, y = -583.203, z = -176.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 10003, monster_id = 20011101, pos = { x = -43.239, y = -583.194, z = -180.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 10004, monster_id = 26040101, pos = { x = -45.358, y = -583.207, z = -181.169 }, rot = { x = 359.557, y = 2.282, z = 0.002 }, level = 1, drop_id = 1000100 },
	{ config_id = 10008, monster_id = 24010101, pos = { x = -52.412, y = -583.304, z = -174.896 }, rot = { x = 0.000, y = 72.216, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	{ config_id = 10009, monster_id = 24010101, pos = { x = -37.874, y = -583.302, z = -172.562 }, rot = { x = 0.000, y = 257.205, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	{ config_id = 10034, monster_id = 20011101, pos = { x = -47.021, y = -583.161, z = -179.902 }, rot = { x = 356.843, y = 9.429, z = 359.518 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10010, gadget_id = 70290297, pos = { x = -45.058, y = -583.157, z = -173.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10011, gadget_id = 70290255, pos = { x = -45.283, y = -583.150, z = -173.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10012, gadget_id = 70290256, pos = { x = -45.058, y = -583.157, z = -173.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10026, gadget_id = 70900201, pos = { x = -45.006, y = -580.544, z = -173.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 10013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -45.099, y = -583.150, z = -173.698 } }
}

-- 触发器
triggers = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 1010013, name = "ENTER_REGION_10013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_10013" },
	{ config_id = 1010014, name = "ANY_MONSTER_DIE_10014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10014", trigger_count = 0 },
	{ config_id = 1010015, name = "VARIABLE_CHANGE_10015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10015", action = "action_EVENT_VARIABLE_CHANGE_10015", trigger_count = 0 },
	-- 监听转到101，召唤第一波怪
	{ config_id = 1010016, name = "GADGET_STATE_CHANGE_10016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10016", action = "action_EVENT_GADGET_STATE_CHANGE_10016", trigger_count = 0 },
	-- 监听转到103，召唤第二波怪
	{ config_id = 1010017, name = "GADGET_STATE_CHANGE_10017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10017", action = "action_EVENT_GADGET_STATE_CHANGE_10017", trigger_count = 0 },
	-- 监听转到201，召唤第三波怪
	{ config_id = 1010018, name = "GADGET_STATE_CHANGE_10018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10018", action = "action_EVENT_GADGET_STATE_CHANGE_10018", trigger_count = 0 },
	-- 设置战斗类型
	{ config_id = 1010019, name = "GADGET_CREATE_10019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10019", action = "action_EVENT_GADGET_CREATE_10019", trigger_count = 0 },
	{ config_id = 1010020, name = "ANY_MONSTER_DIE_10020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10020", trigger_count = 0 },
	{ config_id = 1010021, name = "VARIABLE_CHANGE_10021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10021", action = "action_EVENT_VARIABLE_CHANGE_10021", trigger_count = 0 },
	{ config_id = 1010022, name = "ANY_MONSTER_DIE_10022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_10022", trigger_count = 0 },
	{ config_id = 1010023, name = "VARIABLE_CHANGE_10023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10023", action = "action_EVENT_VARIABLE_CHANGE_10023", trigger_count = 0 },
	-- 机关被摧毁逻辑处理
	{ config_id = 1010030, name = "ANY_GADGET_DIE_10030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10030", action = "action_EVENT_ANY_GADGET_DIE_10030" },
	-- 监听变为可攻击状态。
	{ config_id = 1010032, name = "GADGET_STATE_CHANGE_10032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10032", action = "action_EVENT_GADGET_STATE_CHANGE_10032", trigger_count = 0 },
	{ config_id = 1010033, name = "TIME_AXIS_PASS_10033", event = EventType.EVENT_TIME_AXIS_PASS, source = "_wave_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_10033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "_stage1_monster", value = 0, no_refresh = false },
	{ config_id = 2, name = "_stage2_monster", value = 0, no_refresh = false },
	{ config_id = 3, name = "_stage3_monster", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 6,
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
		gadgets = { 10010, 10026 },
		regions = { 10013 },
		triggers = { "ENTER_REGION_10013", "GADGET_STATE_CHANGE_10016", "GADGET_STATE_CHANGE_10017", "GADGET_STATE_CHANGE_10018", "GADGET_CREATE_10019", "ANY_GADGET_DIE_10030", "GADGET_STATE_CHANGE_10032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1-怪物,
		monsters = { 10001, 10002, 10003, 10034 },
		gadgets = { 10011, 10012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10014", "VARIABLE_CHANGE_10015", "TIME_AXIS_PASS_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2-怪物,
		monsters = { 10004 },
		gadgets = { 10011, 10012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10020", "VARIABLE_CHANGE_10021", "TIME_AXIS_PASS_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 10008, 10009 },
		gadgets = { 10011, 10012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10022", "VARIABLE_CHANGE_10023", "TIME_AXIS_PASS_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_ENTER_REGION_10013(context, evt)
	-- 将configid为 10010 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10010, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10014(context, evt)
	-- 针对当前group内变量名为 "_stage1_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage1_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage1_monster"为4
	if ScriptLib.GetGroupVariableValue(context, "_stage1_monster") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10015(context, evt)
	-- 将configid为 10010 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10010, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10016(context, evt)
	if 10010 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121010, 2)
	
	-- 创建标识为"_wave_tick"，时间节点为{4}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {4}, true)
	
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-45,y=-583,z=-173}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10017(context, evt)
	if 10010 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121010, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-45,y=-583,z=-177}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10018(context, evt)
	if 10010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121010, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-45,y=-583,z=-180}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400121, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10019(context, evt)
	if 10010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10019(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 10010, "SGV_Mechanic_Type", 2)
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10020(context, evt)
	-- 针对当前group内变量名为 "_stage2_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage2_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage2_monster"为1
	if ScriptLib.GetGroupVariableValue(context, "_stage2_monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10021(context, evt)
	-- 将configid为 10010 的物件更改为状态 GadgetState.ChestBramble
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10010, GadgetState.ChestBramble) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10022(context, evt)
	-- 针对当前group内变量名为 "_stage3_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage3_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage3_monster"为2
	if ScriptLib.GetGroupVariableValue(context, "_stage3_monster") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10023(context, evt)
	-- 将configid为 10010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10030(context, evt)
	if 10010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 220121010, EntityType.GADGET, 10026 )
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 220121010, EntityType.GADGET, 10011 )
	
		-- 卸载指定gadget
		ScriptLib.RemoveEntityByConfigId(context, 220121010, EntityType.GADGET, 10012 )
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10032(context, evt)
	if 10010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10032(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-36,y=-395,z=-37}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400122, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_10033(context, evt)
	-- 将configid为 10012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end