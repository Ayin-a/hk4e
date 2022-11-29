-- 基础信息
local base_info = {
	group_id = 133301084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 84005, monster_id = 25210501, pos = { x = -802.114, y = 190.243, z = 3796.151 }, rot = { x = 0.000, y = 257.460, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 23 },
	{ config_id = 84006, monster_id = 25310301, pos = { x = -795.021, y = 191.217, z = 3812.365 }, rot = { x = 0.000, y = 271.759, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", area_id = 23 },
	{ config_id = 84007, monster_id = 25210402, pos = { x = -805.056, y = 190.171, z = 3794.869 }, rot = { x = 0.000, y = 67.200, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 23 },
	{ config_id = 84008, monster_id = 25210202, pos = { x = -829.670, y = 182.788, z = 3789.402 }, rot = { x = 0.000, y = 141.585, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 84016, monster_id = 28061301, pos = { x = -787.904, y = 182.536, z = 3790.760 }, rot = { x = 0.000, y = 204.206, z = 0.000 }, level = 33, drop_tag = "驮兽镀金旅团", disableWander = true, pose_id = 2, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 84001, gadget_id = 70220128, pos = { x = -803.567, y = 190.081, z = 3795.535 }, rot = { x = 0.000, y = 332.916, z = 1.167 }, level = 33, area_id = 23 },
	{ config_id = 84002, gadget_id = 70211012, pos = { x = -807.749, y = 190.085, z = 3793.523 }, rot = { x = 1.540, y = 61.381, z = 1.786 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 84004, gadget_id = 70220048, pos = { x = -803.359, y = 191.132, z = 3803.855 }, rot = { x = 0.000, y = 294.310, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 84009, gadget_id = 70310001, pos = { x = -800.091, y = 183.688, z = 3792.133 }, rot = { x = 351.738, y = 349.146, z = 357.765 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 84010, gadget_id = 70310001, pos = { x = -786.277, y = 185.892, z = 3795.602 }, rot = { x = 359.746, y = 340.423, z = 359.934 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 84011, gadget_id = 70310001, pos = { x = -801.483, y = 190.117, z = 3799.337 }, rot = { x = 0.000, y = 56.476, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 84012, gadget_id = 70310001, pos = { x = -807.447, y = 190.099, z = 3796.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 84013, gadget_id = 70220048, pos = { x = -807.177, y = 190.423, z = 3801.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 84015, gadget_id = 70220048, pos = { x = -807.128, y = 190.709, z = 3804.499 }, rot = { x = 0.000, y = 298.201, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 84017, gadget_id = 70210101, pos = { x = -804.010, y = 191.131, z = 3804.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 },
	{ config_id = 84018, gadget_id = 70210101, pos = { x = -790.966, y = 188.484, z = 3803.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1084003, name = "ANY_MONSTER_DIE_84003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_84003", action = "action_EVENT_ANY_MONSTER_DIE_84003" }
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
		monsters = { 84005, 84006, 84007, 84008, 84016 },
		gadgets = { 84001, 84002, 84004, 84009, 84010, 84011, 84012, 84013, 84015, 84017, 84018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_84003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_84003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_84003(context, evt)
	-- 将configid为 84002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 84002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end