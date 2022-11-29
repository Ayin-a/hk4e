-- 基础信息
local base_info = {
	group_id = 240009003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3005, monster_id = 21010501, pos = { x = -135.292, y = -12.484, z = 128.590 }, rot = { x = 0.000, y = 40.793, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3006, monster_id = 21010501, pos = { x = -135.039, y = -12.484, z = 132.847 }, rot = { x = 0.000, y = 119.845, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3007, monster_id = 20010601, pos = { x = -124.060, y = -12.484, z = 119.809 }, rot = { x = 0.000, y = 0.339, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 20010601, pos = { x = -123.995, y = -12.484, z = 135.473 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 21020101, pos = { x = -129.152, y = -12.483, z = 126.375 }, rot = { x = 0.000, y = 56.145, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 3020, monster_id = 21010301, pos = { x = -128.599, y = -12.484, z = 130.908 }, rot = { x = 0.000, y = 145.149, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 3021, monster_id = 21010301, pos = { x = -132.397, y = -12.484, z = 138.190 }, rot = { x = 0.000, y = 12.173, z = 0.000 }, level = 1, pose_id = 9002 },
	{ config_id = 3034, monster_id = 20011001, pos = { x = -129.535, y = -12.484, z = 123.045 }, rot = { x = 0.000, y = 48.208, z = 0.000 }, level = 1 },
	{ config_id = 3035, monster_id = 20011001, pos = { x = -129.076, y = -12.483, z = 132.657 }, rot = { x = 0.000, y = 125.608, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70211001, pos = { x = -116.834, y = -12.592, z = 141.661 }, rot = { x = 0.000, y = 180.706, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3002, gadget_id = 70220025, pos = { x = -129.801, y = -12.468, z = 125.935 }, rot = { x = 270.608, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70220005, pos = { x = -137.131, y = -12.518, z = 135.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70220005, pos = { x = -136.176, y = -12.484, z = 136.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70350003, pos = { x = -128.508, y = -12.381, z = 112.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70220005, pos = { x = -138.174, y = -12.522, z = 137.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70310002, pos = { x = -141.925, y = -7.017, z = 121.777 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3014, gadget_id = 70220013, pos = { x = -114.620, y = -12.483, z = 141.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220025, pos = { x = -115.240, y = -12.458, z = 141.340 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220013, pos = { x = -117.563, y = -12.484, z = 140.236 }, rot = { x = 0.000, y = 20.299, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220014, pos = { x = -115.982, y = -12.484, z = 139.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70310001, pos = { x = -134.011, y = -12.484, z = 130.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3019, gadget_id = 70310001, pos = { x = -134.100, y = -12.502, z = 123.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3022, gadget_id = 70220013, pos = { x = -140.342, y = -12.613, z = 116.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220013, pos = { x = -139.041, y = -12.618, z = 119.064 }, rot = { x = 0.000, y = 336.835, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220025, pos = { x = -140.389, y = -12.641, z = 117.087 }, rot = { x = 271.945, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220014, pos = { x = -138.706, y = -12.561, z = 114.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220014, pos = { x = -138.403, y = -12.595, z = 117.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220014, pos = { x = -138.092, y = -12.574, z = 115.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220025, pos = { x = -133.625, y = -12.473, z = 140.620 }, rot = { x = 270.304, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70310004, pos = { x = -128.309, y = -12.483, z = 127.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3030, gadget_id = 70220025, pos = { x = -132.286, y = -12.452, z = 137.986 }, rot = { x = 271.150, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70220014, pos = { x = -138.632, y = -12.484, z = 135.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220014, pos = { x = -139.616, y = -12.483, z = 136.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70310002, pos = { x = -142.000, y = -7.017, z = 133.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003010, name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010" },
	{ config_id = 1003036, name = "ANY_MONSTER_DIE_3036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3036", action = "action_EVENT_ANY_MONSTER_DIE_3036" }
}

-- 变量
variables = {
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
		monsters = { 3005, 3006, 3013, 3020, 3021 },
		gadgets = { 3001, 3002, 3003, 3004, 3009, 3011, 3012, 3014, 3015, 3016, 3017, 3018, 3019, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3010", "ANY_MONSTER_DIE_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3007, 3008, 3034, 3035 },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	-- 判断指定group组剩余怪物数量是否是2 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240009003) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3036(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240009003, 2)
	
	return 0
end