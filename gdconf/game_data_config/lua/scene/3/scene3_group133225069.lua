-- 基础信息
local base_info = {
	group_id = 133225069
}

-- DEFS_MISCS
defs = {
        group_id = 133225069,
        questList = {7216719,7216619,7217226,7217320},          --按天填入完成的任务ID
        chestList = {69002,69005,69008},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 69001, monster_id = 21011001, pos = { x = -6233.158, y = 201.975, z = -3222.269 }, rot = { x = 0.000, y = 133.946, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, area_id = 18 },
	{ config_id = 69004, monster_id = 21011001, pos = { x = -6194.531, y = 207.290, z = -3245.293 }, rot = { x = 0.000, y = 90.861, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 18 },
	{ config_id = 69007, monster_id = 21011001, pos = { x = -6225.384, y = 200.235, z = -3202.359 }, rot = { x = 0.000, y = 318.555, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 18 },
	{ config_id = 69013, monster_id = 21011001, pos = { x = -6229.361, y = 200.271, z = -3226.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", area_id = 18 },
	{ config_id = 69014, monster_id = 21010101, pos = { x = -6234.501, y = 200.143, z = -3228.095 }, rot = { x = 0.000, y = 94.088, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 18 },
	{ config_id = 69015, monster_id = 21010101, pos = { x = -6219.704, y = 200.000, z = -3222.603 }, rot = { x = 0.000, y = 208.455, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, area_id = 18 },
	{ config_id = 69017, monster_id = 21011001, pos = { x = -6197.585, y = 203.095, z = -3250.229 }, rot = { x = 0.000, y = 273.172, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 18 },
	{ config_id = 69018, monster_id = 21010101, pos = { x = -6191.625, y = 203.997, z = -3247.332 }, rot = { x = 0.000, y = 287.854, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 18 },
	{ config_id = 69019, monster_id = 21010101, pos = { x = -6201.418, y = 200.861, z = -3252.349 }, rot = { x = 0.000, y = 48.812, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, area_id = 18 },
	{ config_id = 69022, monster_id = 21011001, pos = { x = -6224.604, y = 200.361, z = -3206.336 }, rot = { x = 0.000, y = 14.390, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", area_id = 18 },
	{ config_id = 69023, monster_id = 21010101, pos = { x = -6228.407, y = 200.641, z = -3204.150 }, rot = { x = 0.000, y = 59.059, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 18 },
	{ config_id = 69024, monster_id = 21010101, pos = { x = -6226.491, y = 200.581, z = -3205.953 }, rot = { x = 0.000, y = 325.108, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 69002, gadget_id = 70211002, pos = { x = -6228.261, y = 200.938, z = -3222.216 }, rot = { x = 13.395, y = 124.321, z = 8.156 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 69005, gadget_id = 70211151, pos = { x = -6191.147, y = 203.733, z = -3250.571 }, rot = { x = 352.859, y = 97.490, z = 357.215 }, level = 26, chest_drop_id = 21910001, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 69008, gadget_id = 70211151, pos = { x = -6227.129, y = 200.568, z = -3208.920 }, rot = { x = 0.000, y = 102.971, z = 0.000 }, level = 26, chest_drop_id = 21910002, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 69010, gadget_id = 70220013, pos = { x = -6232.637, y = 199.396, z = -3229.259 }, rot = { x = 334.381, y = 0.000, z = 310.690 }, level = 33, area_id = 18 },
	{ config_id = 69011, gadget_id = 70220013, pos = { x = -6231.490, y = 199.661, z = -3226.784 }, rot = { x = 323.873, y = 318.174, z = 63.429 }, level = 33, area_id = 18 },
	{ config_id = 69012, gadget_id = 70220013, pos = { x = -6220.194, y = 199.104, z = -3224.375 }, rot = { x = 332.706, y = 301.100, z = 37.243 }, level = 33, area_id = 18 },
	{ config_id = 69016, gadget_id = 70300086, pos = { x = -6228.955, y = 198.984, z = -3218.940 }, rot = { x = 13.767, y = 55.879, z = 27.346 }, level = 33, area_id = 18 },
	{ config_id = 69020, gadget_id = 70220013, pos = { x = -6191.417, y = 202.907, z = -3243.844 }, rot = { x = 334.381, y = 29.838, z = 310.690 }, level = 33, area_id = 18 },
	{ config_id = 69021, gadget_id = 70220013, pos = { x = -6191.927, y = 203.077, z = -3241.705 }, rot = { x = 323.873, y = 318.174, z = 63.429 }, level = 33, area_id = 18 },
	{ config_id = 69025, gadget_id = 70310001, pos = { x = -6227.271, y = 200.418, z = -3210.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 69026, gadget_id = 70310001, pos = { x = -6220.890, y = 199.944, z = -3202.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 69027, gadget_id = 70310006, pos = { x = -6232.870, y = 200.682, z = -3224.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 69028, gadget_id = 70310006, pos = { x = -6189.606, y = 203.779, z = -3254.043 }, rot = { x = 358.089, y = 1.459, z = 4.981 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 69029, gadget_id = 70310006, pos = { x = -6226.500, y = 200.396, z = -3203.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 69030, gadget_id = 70310001, pos = { x = -6230.030, y = 200.872, z = -3220.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 69031, gadget_id = 70310001, pos = { x = -6229.748, y = 200.282, z = -3227.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 69032, gadget_id = 70310001, pos = { x = -6194.761, y = 203.592, z = -3248.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 69033, gadget_id = 70310001, pos = { x = -6190.075, y = 204.384, z = -3239.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069003, name = "ANY_MONSTER_DIE_69003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69003", action = "action_EVENT_ANY_MONSTER_DIE_69003" },
	{ config_id = 1069006, name = "ANY_MONSTER_DIE_69006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69006", action = "action_EVENT_ANY_MONSTER_DIE_69006" },
	{ config_id = 1069009, name = "ANY_MONSTER_DIE_69009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69009", action = "action_EVENT_ANY_MONSTER_DIE_69009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
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
		monsters = { 69001, 69013, 69014, 69015 },
		gadgets = { 69002, 69010, 69011, 69012, 69016, 69027, 69030, 69031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_69003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 69004, 69017, 69018, 69019 },
		gadgets = { 69005, 69016, 69020, 69021, 69028, 69032, 69033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_69006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 69007, 69022, 69023, 69024 },
		gadgets = { 69008, 69016, 69025, 69026, 69029 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_69009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69003(context, evt)
	-- 将configid为 69002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69006(context, evt)
	-- 将configid为 69005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69009(context, evt)
	-- 将configid为 69008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"