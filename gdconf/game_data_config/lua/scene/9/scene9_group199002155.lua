-- 基础信息
local base_info = {
	group_id = 199002155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155005, monster_id = 21011001, pos = { x = 551.962, y = 127.128, z = -105.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 402 },
	{ config_id = 155006, monster_id = 21010501, pos = { x = 553.010, y = 126.927, z = -87.196 }, rot = { x = 0.000, y = 174.205, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 402 },
	{ config_id = 155007, monster_id = 21020101, pos = { x = 548.566, y = 123.067, z = -97.900 }, rot = { x = 0.000, y = 72.142, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 402 },
	{ config_id = 155015, monster_id = 21010101, pos = { x = 549.630, y = 122.742, z = -94.725 }, rot = { x = 0.000, y = 65.005, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
	{ config_id = 155016, monster_id = 21010101, pos = { x = 548.985, y = 122.965, z = -99.277 }, rot = { x = 0.000, y = 118.392, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 402 },
	{ config_id = 155017, monster_id = 21010301, pos = { x = 557.758, y = 120.655, z = -83.080 }, rot = { x = 0.000, y = 229.247, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155001, gadget_id = 70300081, pos = { x = 553.013, y = 121.683, z = -110.570 }, rot = { x = 6.321, y = 62.567, z = 358.951 }, level = 20, area_id = 402 },
	{ config_id = 155002, gadget_id = 70300081, pos = { x = 550.149, y = 122.015, z = -82.298 }, rot = { x = 345.404, y = 239.704, z = 2.842 }, level = 20, area_id = 402 },
	{ config_id = 155003, gadget_id = 70300090, pos = { x = 552.788, y = 121.527, z = -87.116 }, rot = { x = 0.000, y = 340.547, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155004, gadget_id = 70300090, pos = { x = 551.860, y = 121.728, z = -105.765 }, rot = { x = 0.000, y = 358.948, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155008, gadget_id = 70211012, pos = { x = 547.096, y = 123.445, z = -93.906 }, rot = { x = 339.523, y = 270.107, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 155009, gadget_id = 70300089, pos = { x = 545.633, y = 123.871, z = -90.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155010, gadget_id = 70300089, pos = { x = 546.203, y = 123.848, z = -102.843 }, rot = { x = 0.000, y = 0.000, z = 352.705 }, level = 20, area_id = 402 },
	{ config_id = 155011, gadget_id = 70300089, pos = { x = 556.065, y = 120.823, z = -82.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155012, gadget_id = 70300089, pos = { x = 556.881, y = 120.997, z = -105.651 }, rot = { x = 359.606, y = 359.504, z = 358.795 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155013, name = "ANY_MONSTER_DIE_155013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155013", action = "action_EVENT_ANY_MONSTER_DIE_155013" }
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
		monsters = { 155005, 155006, 155007, 155015, 155016, 155017 },
		gadgets = { 155001, 155002, 155003, 155004, 155008, 155009, 155010, 155011, 155012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155013(context, evt)
	-- 将configid为 155008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end