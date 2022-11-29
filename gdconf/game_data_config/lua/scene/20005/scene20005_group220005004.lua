-- 基础信息
local base_info = {
	group_id = 220005004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 20010801, pos = { x = -168.162, y = 22.035, z = 46.306 }, rot = { x = 0.000, y = 107.567, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 4003, monster_id = 20010801, pos = { x = -170.306, y = 22.035, z = 39.320 }, rot = { x = 0.000, y = 42.246, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 4004, monster_id = 20010801, pos = { x = -169.633, y = 22.035, z = 36.080 }, rot = { x = 1.598, y = 107.497, z = 354.944 }, level = 1, pose_id = 901 },
	{ config_id = 4005, monster_id = 20010801, pos = { x = -167.131, y = 22.071, z = 36.973 }, rot = { x = 1.598, y = 107.497, z = 354.944 }, level = 1, pose_id = 901 },
	{ config_id = 4006, monster_id = 20010801, pos = { x = -169.659, y = 22.121, z = 49.330 }, rot = { x = 1.598, y = 33.240, z = 354.944 }, level = 1, pose_id = 901 },
	{ config_id = 4007, monster_id = 20010801, pos = { x = -167.191, y = 22.985, z = 49.594 }, rot = { x = 1.598, y = 130.759, z = 354.944 }, level = 1, pose_id = 901 },
	{ config_id = 4019, monster_id = 20010801, pos = { x = -176.417, y = 23.437, z = 51.890 }, rot = { x = 0.000, y = 122.415, z = 0.000 }, level = 1 },
	{ config_id = 4020, monster_id = 20010801, pos = { x = -177.858, y = 22.893, z = 51.247 }, rot = { x = 0.000, y = 122.415, z = 0.000 }, level = 1 },
	{ config_id = 4021, monster_id = 20010801, pos = { x = -178.916, y = 24.041, z = 49.558 }, rot = { x = 0.000, y = 122.415, z = 0.000 }, level = 1 },
	{ config_id = 4022, monster_id = 20010801, pos = { x = -179.443, y = 23.854, z = 35.451 }, rot = { x = 0.000, y = 33.097, z = 0.000 }, level = 1 },
	{ config_id = 4023, monster_id = 20010801, pos = { x = -178.445, y = 23.941, z = 33.655 }, rot = { x = 0.000, y = 38.474, z = 0.000 }, level = 1 },
	{ config_id = 4024, monster_id = 20010801, pos = { x = -178.443, y = 22.747, z = 35.064 }, rot = { x = 0.000, y = 167.471, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70350005, pos = { x = -183.966, y = 21.556, z = 42.990 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4008, gadget_id = 70290008, pos = { x = -166.894, y = 21.573, z = 48.216 }, rot = { x = 0.000, y = 286.256, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 4009, gadget_id = 70500000, pos = { x = -166.894, y = 21.573, z = 48.216 }, rot = { x = 0.000, y = 286.304, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 4008 },
	{ config_id = 4012, gadget_id = 70290008, pos = { x = -167.383, y = 21.695, z = 39.253 }, rot = { x = 0.000, y = 84.298, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 4013, gadget_id = 70500000, pos = { x = -167.383, y = 21.695, z = 39.253 }, rot = { x = 0.000, y = 84.253, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 4012 },
	{ config_id = 4014, gadget_id = 70900201, pos = { x = -190.518, y = 27.837, z = 141.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010" },
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_4009", value = 0, no_refresh = true },
	{ config_id = 2, name = "is_4013", value = 0, no_refresh = true }
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
		monsters = { 4002, 4003, 4004, 4005, 4006, 4007 },
		gadgets = { 4001, 4008, 4009, 4012, 4013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4019, 4020, 4021, 4022, 4023, 4024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220005004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220005005, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 200050201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005003, monsters = {}, gadgets = {3011} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为4014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end