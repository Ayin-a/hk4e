-- 基础信息
local base_info = {
	group_id = 133220593
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 593001, monster_id = 25080101, pos = { x = -2469.537, y = 200.061, z = -4682.801 }, rot = { x = 353.579, y = 335.820, z = 4.799 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 593004, monster_id = 25080201, pos = { x = -2465.471, y = 200.135, z = -4694.017 }, rot = { x = 354.454, y = 139.076, z = 1.898 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 11 },
	{ config_id = 593005, monster_id = 25080301, pos = { x = -2470.703, y = 199.994, z = -4680.443 }, rot = { x = 359.759, y = 166.362, z = 0.345 }, level = 27, drop_tag = "浪人武士", pose_id = 1004, area_id = 11 },
	{ config_id = 593021, monster_id = 25080201, pos = { x = -2468.803, y = 200.442, z = -4671.835 }, rot = { x = 0.000, y = 230.106, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 593002, gadget_id = 70211002, pos = { x = -2472.427, y = 204.884, z = -4674.109 }, rot = { x = 359.921, y = 148.011, z = 351.225 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 593006, gadget_id = 70310006, pos = { x = -2468.328, y = 200.065, z = -4680.137 }, rot = { x = 0.000, y = 38.062, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 593007, gadget_id = 70220048, pos = { x = -2470.175, y = 198.929, z = -4695.610 }, rot = { x = 338.123, y = 47.544, z = 337.971 }, level = 27, area_id = 11 },
	{ config_id = 593008, gadget_id = 70220048, pos = { x = -2470.457, y = 200.081, z = -4666.888 }, rot = { x = 359.618, y = 302.083, z = 1.411 }, level = 27, area_id = 11 },
	{ config_id = 593009, gadget_id = 70220048, pos = { x = -2464.116, y = 199.579, z = -4684.928 }, rot = { x = 1.676, y = 71.757, z = 359.779 }, level = 27, area_id = 11 },
	{ config_id = 593010, gadget_id = 70220048, pos = { x = -2465.163, y = 199.676, z = -4686.652 }, rot = { x = 4.209, y = 123.609, z = 4.104 }, level = 27, area_id = 11 },
	{ config_id = 593011, gadget_id = 70220048, pos = { x = -2471.043, y = 199.992, z = -4665.109 }, rot = { x = 358.294, y = 337.219, z = 2.301 }, level = 27, area_id = 11 },
	{ config_id = 593012, gadget_id = 70220048, pos = { x = -2473.118, y = 200.145, z = -4663.230 }, rot = { x = 3.952, y = 79.434, z = 357.352 }, level = 27, area_id = 11 },
	{ config_id = 593013, gadget_id = 70220050, pos = { x = -2471.981, y = 199.344, z = -4695.312 }, rot = { x = 22.928, y = 40.793, z = 50.097 }, level = 27, area_id = 11 },
	{ config_id = 593014, gadget_id = 70220051, pos = { x = -2470.236, y = 200.091, z = -4678.176 }, rot = { x = 5.603, y = 21.783, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 593015, gadget_id = 70220052, pos = { x = -2470.587, y = 200.026, z = -4683.133 }, rot = { x = 0.000, y = 38.872, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 593016, gadget_id = 70220050, pos = { x = -2469.210, y = 200.342, z = -4675.018 }, rot = { x = 356.699, y = 180.089, z = 0.957 }, level = 27, area_id = 11 },
	{ config_id = 593017, gadget_id = 70220050, pos = { x = -2475.321, y = 199.886, z = -4664.967 }, rot = { x = 54.028, y = 252.263, z = 310.219 }, level = 27, area_id = 11 },
	{ config_id = 593018, gadget_id = 70900393, pos = { x = -2464.281, y = 200.029, z = -4661.929 }, rot = { x = 0.000, y = 26.060, z = 355.728 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 593019, gadget_id = 70900393, pos = { x = -2472.987, y = 200.051, z = -4666.621 }, rot = { x = 2.440, y = 28.320, z = 356.722 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 593020, gadget_id = 70900393, pos = { x = -2469.575, y = 199.834, z = -4657.164 }, rot = { x = 15.764, y = 31.657, z = 25.363 }, level = 27, area_id = 11 },
	{ config_id = 593022, gadget_id = 70950137, pos = { x = -2465.021, y = 200.021, z = -4689.991 }, rot = { x = 0.000, y = 260.368, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 593023, gadget_id = 70950136, pos = { x = -2464.793, y = 200.074, z = -4690.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 593024, gadget_id = 70220025, pos = { x = -2470.507, y = 200.070, z = -4682.123 }, rot = { x = 88.626, y = 60.330, z = 60.323 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1593003, name = "ANY_MONSTER_DIE_593003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_593003", action = "action_EVENT_ANY_MONSTER_DIE_593003" }
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
		monsters = { 593001, 593004, 593005, 593021 },
		gadgets = { 593002, 593006, 593007, 593008, 593009, 593010, 593011, 593012, 593013, 593014, 593015, 593016, 593017, 593018, 593019, 593020, 593022, 593023, 593024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_593003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_593003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_593003(context, evt)
	-- 将configid为 593002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end