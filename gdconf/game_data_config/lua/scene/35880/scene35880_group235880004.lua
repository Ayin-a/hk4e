-- 基础信息
local base_info = {
	group_id = 235880004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 20060101, pos = { x = 218.288, y = 90.183, z = 221.896 }, rot = { x = 0.000, y = 167.140, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4003] = { config_id = 4003, monster_id = 20060501, pos = { x = 223.139, y = 90.184, z = 220.717 }, rot = { x = 0.000, y = 192.370, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4004] = { config_id = 4004, monster_id = 20060501, pos = { x = 213.764, y = 90.184, z = 219.517 }, rot = { x = 0.000, y = 167.140, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4005] = { config_id = 4005, monster_id = 20060101, pos = { x = 221.228, y = 90.184, z = 205.856 }, rot = { x = 0.000, y = 346.919, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4006] = { config_id = 4006, monster_id = 20060201, pos = { x = 224.248, y = 90.184, z = 208.270 }, rot = { x = 0.000, y = 336.746, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4007] = { config_id = 4007, monster_id = 20060201, pos = { x = 217.413, y = 90.184, z = 206.531 }, rot = { x = 0.000, y = 355.029, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4008] = { config_id = 4008, monster_id = 20060201, pos = { x = 226.411, y = 90.184, z = 218.541 }, rot = { x = 0.000, y = 243.942, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4009] = { config_id = 4009, monster_id = 20060201, pos = { x = 227.399, y = 90.183, z = 212.147 }, rot = { x = 0.000, y = 268.920, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4010] = { config_id = 4010, monster_id = 20060501, pos = { x = 228.776, y = 90.184, z = 215.767 }, rot = { x = 0.000, y = 253.080, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4011] = { config_id = 4011, monster_id = 20060501, pos = { x = 211.571, y = 90.173, z = 215.646 }, rot = { x = 0.000, y = 86.434, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4012] = { config_id = 4012, monster_id = 20060201, pos = { x = 212.828, y = 90.183, z = 209.203 }, rot = { x = 0.000, y = 69.410, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4013] = { config_id = 4013, monster_id = 20060101, pos = { x = 209.465, y = 90.183, z = 212.289 }, rot = { x = 0.000, y = 73.964, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4014] = { config_id = 4014, monster_id = 20060101, pos = { x = 218.288, y = 90.183, z = 221.896 }, rot = { x = 0.000, y = 167.140, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4015] = { config_id = 4015, monster_id = 20060501, pos = { x = 223.139, y = 90.184, z = 220.717 }, rot = { x = 0.000, y = 192.370, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4016] = { config_id = 4016, monster_id = 20060501, pos = { x = 213.764, y = 90.184, z = 219.517 }, rot = { x = 0.000, y = 167.140, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4017] = { config_id = 4017, monster_id = 20060101, pos = { x = 221.228, y = 90.184, z = 205.856 }, rot = { x = 0.000, y = 346.919, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4018] = { config_id = 4018, monster_id = 20060701, pos = { x = 224.248, y = 90.184, z = 208.270 }, rot = { x = 0.000, y = 336.746, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4019] = { config_id = 4019, monster_id = 20060701, pos = { x = 217.413, y = 90.184, z = 206.531 }, rot = { x = 0.000, y = 355.029, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4020] = { config_id = 4020, monster_id = 20060101, pos = { x = 226.411, y = 90.184, z = 218.541 }, rot = { x = 0.000, y = 243.942, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4021] = { config_id = 4021, monster_id = 20060101, pos = { x = 227.399, y = 90.183, z = 212.147 }, rot = { x = 0.000, y = 268.920, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4022] = { config_id = 4022, monster_id = 20060701, pos = { x = 228.776, y = 90.184, z = 215.767 }, rot = { x = 0.000, y = 253.080, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4023] = { config_id = 4023, monster_id = 20060101, pos = { x = 211.571, y = 90.173, z = 215.646 }, rot = { x = 0.000, y = 86.434, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4024] = { config_id = 4024, monster_id = 20060501, pos = { x = 212.828, y = 90.183, z = 209.203 }, rot = { x = 0.000, y = 69.410, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[4025] = { config_id = 4025, monster_id = 20060701, pos = { x = 209.465, y = 90.183, z = 212.289 }, rot = { x = 0.000, y = 73.964, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4026] = { config_id = 4026, gadget_id = 70900205, pos = { x = 219.550, y = 88.504, z = 217.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4029] = { config_id = 4029, gadget_id = 44000552, pos = { x = 219.037, y = 90.180, z = 213.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004027, name = "ANY_MONSTER_DIE_4027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_4027", trigger_count = 0 },
	{ config_id = 1004028, name = "VARIABLE_CHANGE_4028", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_4028", action = "action_EVENT_VARIABLE_CHANGE_4028", trigger_count = 0 },
	{ config_id = 1004030, name = "VARIABLE_CHANGE_4030", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_4030", action = "action_EVENT_VARIABLE_CHANGE_4030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { 4026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001, 4029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4027", "VARIABLE_CHANGE_4028", "VARIABLE_CHANGE_4030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025 },
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

-- 自动持续刷怪
function TLA_active_monster_tide(context, evt, source_name, group_id, monster_table, total_num, min, max)
	-- 创建编号为source_name（该怪物潮的识别id)的怪物潮，创建怪物总数为total_num，场上怪物最少min只，最多max只
	if 0 ~= ScriptLib.AutoMonsterTide(context, source_name, group_id, monster_table, total_num, min, max) then
		return -1
	end
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4027(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为24
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 24 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4028(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235880001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为12
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4030(context, evt)
	TLA_active_monster_tide(context, evt, 2, 235880004, {4014,4015,4016,4017,4018,4019,4020,4021,4022,4023,4024,4025}, 12, 6, 6)
	
	return 0
end