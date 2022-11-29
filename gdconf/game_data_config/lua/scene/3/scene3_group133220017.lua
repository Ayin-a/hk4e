-- 基础信息
local base_info = {
	group_id = 133220017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17010, monster_id = 25100101, pos = { x = -2114.521, y = 162.104, z = -4390.718 }, rot = { x = 0.000, y = 247.829, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 5111 }, isOneoff = true, pose_id = 1002, title_id = 10015, special_name_id = 10031, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17001, gadget_id = 70220063, pos = { x = -2120.815, y = 161.607, z = -4395.504 }, rot = { x = 295.684, y = 256.422, z = 2.052 }, level = 27, area_id = 11 },
	{ config_id = 17006, gadget_id = 70220064, pos = { x = -2122.678, y = 161.929, z = -4388.249 }, rot = { x = 0.000, y = 127.830, z = 358.257 }, level = 27, area_id = 11 },
	{ config_id = 17009, gadget_id = 70220063, pos = { x = -2119.056, y = 161.847, z = -4393.067 }, rot = { x = 331.995, y = 144.930, z = 46.265 }, level = 27, area_id = 11 },
	{ config_id = 17011, gadget_id = 70220063, pos = { x = -2117.027, y = 161.822, z = -4390.553 }, rot = { x = 339.578, y = 128.274, z = 3.402 }, level = 27, area_id = 11 },
	{ config_id = 17012, gadget_id = 70310006, pos = { x = -2120.674, y = 166.414, z = -4366.408 }, rot = { x = 0.000, y = 6.504, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 17013, gadget_id = 70211022, pos = { x = -2109.440, y = 163.917, z = -4386.131 }, rot = { x = 359.898, y = 232.251, z = 356.719 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17014, gadget_id = 70220064, pos = { x = -2121.974, y = 162.598, z = -4389.148 }, rot = { x = 6.486, y = 251.400, z = 196.812 }, level = 27, area_id = 11 },
	{ config_id = 17015, gadget_id = 70220063, pos = { x = -2118.929, y = 161.841, z = -4386.719 }, rot = { x = 340.633, y = 78.569, z = 356.826 }, level = 27, area_id = 11 },
	{ config_id = 17016, gadget_id = 70220025, pos = { x = -2108.094, y = 162.215, z = -4394.958 }, rot = { x = 83.544, y = 83.606, z = 78.249 }, level = 27, area_id = 11 },
	{ config_id = 17017, gadget_id = 70220063, pos = { x = -2123.301, y = 161.804, z = -4388.503 }, rot = { x = 322.346, y = 317.908, z = 14.132 }, level = 27, area_id = 11 },
	{ config_id = 17018, gadget_id = 70220050, pos = { x = -2125.568, y = 161.456, z = -4381.761 }, rot = { x = 352.930, y = 303.495, z = 294.021 }, level = 27, area_id = 11 },
	{ config_id = 17019, gadget_id = 70220064, pos = { x = -2105.567, y = 162.993, z = -4391.465 }, rot = { x = 345.712, y = 286.600, z = 198.681 }, level = 27, area_id = 11 },
	{ config_id = 17020, gadget_id = 70220064, pos = { x = -2108.506, y = 162.150, z = -4390.698 }, rot = { x = 0.000, y = 127.830, z = 358.257 }, level = 27, area_id = 11 },
	{ config_id = 17021, gadget_id = 70220064, pos = { x = -2113.411, y = 162.386, z = -4411.541 }, rot = { x = 1.392, y = 254.873, z = 1.050 }, level = 27, area_id = 11 },
	{ config_id = 17022, gadget_id = 70220064, pos = { x = -2111.759, y = 162.491, z = -4410.566 }, rot = { x = 351.204, y = 322.884, z = 10.211 }, level = 27, area_id = 11 },
	{ config_id = 17023, gadget_id = 70220063, pos = { x = -2112.812, y = 162.335, z = -4410.914 }, rot = { x = 346.155, y = 1.265, z = 7.504 }, level = 27, area_id = 11 },
	{ config_id = 17025, gadget_id = 70220063, pos = { x = -2106.305, y = 162.720, z = -4390.573 }, rot = { x = 343.281, y = 11.206, z = 272.556 }, level = 27, area_id = 11 },
	{ config_id = 17027, gadget_id = 70220025, pos = { x = -2106.964, y = 162.290, z = -4395.859 }, rot = { x = 83.544, y = 83.606, z = 78.249 }, level = 27, area_id = 11 },
	{ config_id = 17028, gadget_id = 70220050, pos = { x = -2116.447, y = 166.540, z = -4369.890 }, rot = { x = 9.927, y = 350.560, z = 4.533 }, level = 27, area_id = 11 },
	{ config_id = 17029, gadget_id = 70220064, pos = { x = -2124.563, y = 161.389, z = -4395.277 }, rot = { x = 320.232, y = 5.401, z = 26.518 }, level = 27, area_id = 11 },
	{ config_id = 17030, gadget_id = 70220063, pos = { x = -2120.160, y = 162.126, z = -4386.182 }, rot = { x = 23.751, y = 66.797, z = 73.204 }, level = 27, area_id = 11 },
	{ config_id = 17031, gadget_id = 70220064, pos = { x = -2120.119, y = 161.984, z = -4395.852 }, rot = { x = 0.627, y = 187.398, z = 159.928 }, level = 27, area_id = 11 },
	{ config_id = 17032, gadget_id = 70220063, pos = { x = -2114.643, y = 161.310, z = -4396.646 }, rot = { x = 341.641, y = 318.008, z = 358.549 }, level = 27, area_id = 11 },
	{ config_id = 17033, gadget_id = 70220064, pos = { x = -2125.329, y = 161.450, z = -4390.682 }, rot = { x = 341.026, y = 114.596, z = 36.060 }, level = 27, area_id = 11 },
	{ config_id = 17034, gadget_id = 70210105, pos = { x = -2114.843, y = 161.930, z = -4402.959 }, rot = { x = 0.000, y = 302.982, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17035, gadget_id = 70210105, pos = { x = -2115.742, y = 161.621, z = -4404.937 }, rot = { x = 0.000, y = 265.628, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17036, gadget_id = 70210105, pos = { x = -2120.585, y = 161.930, z = -4405.726 }, rot = { x = 0.000, y = 240.344, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17037, gadget_id = 70220050, pos = { x = -2109.318, y = 161.998, z = -4399.926 }, rot = { x = 5.064, y = 9.963, z = 359.415 }, level = 27, area_id = 11 },
	{ config_id = 17038, gadget_id = 70210105, pos = { x = -2145.921, y = 161.930, z = -4399.228 }, rot = { x = 0.000, y = 199.446, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17039, gadget_id = 70210105, pos = { x = -2153.514, y = 161.930, z = -4383.625 }, rot = { x = 0.000, y = 241.462, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17040, gadget_id = 70210105, pos = { x = -2132.302, y = 161.930, z = -4371.984 }, rot = { x = 0.000, y = 241.462, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17041, gadget_id = 70210105, pos = { x = -2135.870, y = 161.930, z = -4370.058 }, rot = { x = 0.000, y = 118.062, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 17042, gadget_id = 70220064, pos = { x = -2116.696, y = 166.413, z = -4368.688 }, rot = { x = 0.000, y = 272.597, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 17043, gadget_id = 70220064, pos = { x = -2120.147, y = 167.946, z = -4376.300 }, rot = { x = 0.000, y = 272.597, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 17044, gadget_id = 70220064, pos = { x = -2120.430, y = 166.771, z = -4368.952 }, rot = { x = 46.840, y = 43.101, z = 186.748 }, level = 27, area_id = 11 },
	{ config_id = 17045, gadget_id = 70220064, pos = { x = -2118.685, y = 162.312, z = -4393.467 }, rot = { x = 6.486, y = 251.400, z = 196.812 }, level = 27, area_id = 11 },
	{ config_id = 17046, gadget_id = 70220064, pos = { x = -2121.439, y = 161.401, z = -4396.020 }, rot = { x = 0.000, y = 127.830, z = 28.438 }, level = 27, area_id = 11 },
	{ config_id = 17047, gadget_id = 70310006, pos = { x = -2132.975, y = 162.099, z = -4421.191 }, rot = { x = 0.000, y = 6.504, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 17002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2124.564, y = 162.210, z = -4389.396 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1017002, name = "ENTER_REGION_17002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17002", action = "action_EVENT_ENTER_REGION_17002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003", trigger_count = 0 },
	{ config_id = 1017004, name = "GROUP_LOAD_17004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17004", action = "action_EVENT_GROUP_LOAD_17004", trigger_count = 0 },
	{ config_id = 1017005, name = "MONSTER_BATTLE_17005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_17005", action = "action_EVENT_MONSTER_BATTLE_17005", trigger_count = 0 },
	{ config_id = 1017007, name = "ANY_MONSTER_DIE_17007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17007", action = "action_EVENT_ANY_MONSTER_DIE_17007", trigger_count = 0 },
	{ config_id = 1017008, name = "QUEST_START_17008", event = EventType.EVENT_QUEST_START, source = "7211014", condition = "", action = "action_EVENT_QUEST_START_17008", trigger_count = 0 },
	{ config_id = 1017024, name = "GROUP_LOAD_17024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17024", action = "action_EVENT_GROUP_LOAD_17024", trigger_count = 0 },
	{ config_id = 1017026, name = "ANY_MONSTER_DIE_17026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17026", action = "action_EVENT_ANY_MONSTER_DIE_17026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = false },
	{ config_id = 2, name = "rua", value = 0, no_refresh = false }
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
		monsters = { 17010 },
		gadgets = { 17001, 17006, 17009, 17011, 17012, 17013, 17014, 17015, 17016, 17017, 17018, 17019, 17020, 17021, 17022, 17023, 17025, 17027, 17028, 17029, 17030, 17031, 17032, 17033, 17034, 17035, 17036, 17037, 17038, 17039, 17040, 17041, 17042, 17043, 17044, 17045, 17046, 17047 },
		regions = { 17002 },
		triggers = { "ENTER_REGION_17002", "ANY_MONSTER_DIE_17003", "GROUP_LOAD_17004", "MONSTER_BATTLE_17005", "ANY_MONSTER_DIE_17007", "QUEST_START_17008", "GROUP_LOAD_17024", "ANY_MONSTER_DIE_17026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17001, 17006, 17009, 17011, 17012, 17013, 17014, 17015, 17016, 17017, 17018, 17019, 17020, 17021, 17022, 17023, 17025, 17027, 17028, 17029, 17030, 17031, 17032, 17033, 17034, 17035, 17036, 17037, 17038, 17039, 17040, 17041, 17042, 17043, 17044, 17045, 17046, 17047 },
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
function condition_EVENT_ENTER_REGION_17002(context, evt)
	if evt.param1 ~= 17002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	if 17010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_17004(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7211006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_17005(context, evt)
	if 17010 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"rua"为0
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_17005(context, evt)
	-- 调用提示id为 -1074247095 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247095) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "rua" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17007(context, evt)
	--判断死亡怪物的configid是否为 17010
	if evt.param1 ~= 17010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17007(context, evt)
	-- 调用提示id为 -1074247093 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074247093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_17008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220017, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_17024(context, evt)
	-- 判断变量"rua"为1
	if ScriptLib.GetGroupVariableValue(context, "rua") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17024(context, evt)
	-- 将本组内变量名为 "rua" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "rua", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17026(context, evt)
	if 17010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17026(context, evt)
	-- 将configid为 17013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end