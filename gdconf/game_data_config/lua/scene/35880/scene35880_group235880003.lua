-- 基础信息
local base_info = {
	group_id = 235880003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3002] = { config_id = 3002, monster_id = 21010301, pos = { x = 214.276, y = 90.184, z = 217.463 }, rot = { x = 0.000, y = 135.763, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3003] = { config_id = 3003, monster_id = 21010301, pos = { x = 218.443, y = 90.184, z = 219.773 }, rot = { x = 0.000, y = 167.381, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3004] = { config_id = 3004, monster_id = 21010701, pos = { x = 215.515, y = 90.184, z = 220.722 }, rot = { x = 0.000, y = 152.681, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3005] = { config_id = 3005, monster_id = 21010601, pos = { x = 213.459, y = 90.184, z = 212.036 }, rot = { x = 0.000, y = 55.406, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3006] = { config_id = 3006, monster_id = 21011601, pos = { x = 216.224, y = 90.184, z = 208.374 }, rot = { x = 0.000, y = 36.646, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3007] = { config_id = 3007, monster_id = 21010701, pos = { x = 213.063, y = 90.183, z = 208.759 }, rot = { x = 0.000, y = 57.113, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3008] = { config_id = 3008, monster_id = 21010601, pos = { x = 222.822, y = 90.184, z = 218.653 }, rot = { x = 0.000, y = 227.737, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3009] = { config_id = 3009, monster_id = 21011301, pos = { x = 225.257, y = 90.184, z = 214.273 }, rot = { x = 0.000, y = 252.984, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3010] = { config_id = 3010, monster_id = 21010301, pos = { x = 226.823, y = 90.184, z = 217.942 }, rot = { x = 0.000, y = 241.665, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3011] = { config_id = 3011, monster_id = 21010901, pos = { x = 218.089, y = 90.184, z = 203.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3012] = { config_id = 3012, monster_id = 21010501, pos = { x = 227.308, y = 90.185, z = 209.076 }, rot = { x = 0.000, y = 280.433, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3013] = { config_id = 3013, monster_id = 21010501, pos = { x = 222.514, y = 90.183, z = 223.699 }, rot = { x = 0.000, y = 190.844, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3014] = { config_id = 3014, monster_id = 21011001, pos = { x = 210.556, y = 90.165, z = 216.340 }, rot = { x = 0.000, y = 116.059, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3015] = { config_id = 3015, monster_id = 21011001, pos = { x = 209.853, y = 90.183, z = 207.219 }, rot = { x = 0.000, y = 62.370, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3016] = { config_id = 3016, monster_id = 21010901, pos = { x = 230.018, y = 90.184, z = 216.316 }, rot = { x = 0.000, y = 266.542, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 }, pose_id = 32 },
	[3017] = { config_id = 3017, monster_id = 21030301, pos = { x = 223.394, y = 90.187, z = 205.718 }, rot = { x = 0.000, y = 326.467, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3018] = { config_id = 3018, monster_id = 21030101, pos = { x = 225.794, y = 90.184, z = 221.522 }, rot = { x = 0.000, y = 216.011, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3019] = { config_id = 3019, monster_id = 21030201, pos = { x = 209.290, y = 90.183, z = 211.483 }, rot = { x = 0.000, y = 92.373, z = 0.000 }, level = 1, disableWander = true, affix = { 5255 } },
	[3020] = { config_id = 3020, monster_id = 21020101, pos = { x = 222.159, y = 90.184, z = 208.498 }, rot = { x = 0.000, y = 327.121, z = 0.000 }, level = 1, disableWander = true },
	[3021] = { config_id = 3021, monster_id = 21020201, pos = { x = 229.024, y = 90.184, z = 219.744 }, rot = { x = 0.000, y = 232.915, z = 0.000 }, level = 1, disableWander = true },
	[3022] = { config_id = 3022, monster_id = 21020701, pos = { x = 213.555, y = 90.187, z = 223.048 }, rot = { x = 0.000, y = 144.910, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3001] = { config_id = 3001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3023] = { config_id = 3023, gadget_id = 70900205, pos = { x = 219.550, y = 88.504, z = 217.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3026] = { config_id = 3026, gadget_id = 44000552, pos = { x = 219.037, y = 90.180, z = 213.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003024, name = "ANY_MONSTER_DIE_3024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_3024", trigger_count = 0 },
	{ config_id = 1003025, name = "VARIABLE_CHANGE_3025", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_3025", action = "action_EVENT_VARIABLE_CHANGE_3025", trigger_count = 0 }
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
		gadgets = { 3023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3001, 3026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3024", "VARIABLE_CHANGE_3025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3011, 3012, 3013, 3014, 3015, 3016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3017, 3018, 3019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 3020, 3021, 3022 },
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
function action_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为21
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 21 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3025(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235880001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end