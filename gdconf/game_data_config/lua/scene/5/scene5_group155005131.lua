-- 基础信息
local base_info = {
	group_id = 155005131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21010201, pos = { x = 380.610, y = 146.622, z = 914.534 }, rot = { x = 0.000, y = 107.316, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 131014, monster_id = 21020101, pos = { x = 352.976, y = 144.987, z = 917.398 }, rot = { x = 0.000, y = 96.814, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 131015, monster_id = 21020101, pos = { x = 359.605, y = 145.162, z = 928.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 200 },
	{ config_id = 131016, monster_id = 21010401, pos = { x = 363.233, y = 146.190, z = 909.650 }, rot = { x = 0.000, y = 46.259, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 131017, monster_id = 21010401, pos = { x = 369.409, y = 145.850, z = 925.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131002, gadget_id = 70211002, pos = { x = 368.044, y = 146.141, z = 927.351 }, rot = { x = 10.354, y = 199.865, z = 358.130 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 131004, gadget_id = 70220013, pos = { x = 371.436, y = 146.000, z = 929.300 }, rot = { x = 0.000, y = 0.000, z = 352.432 }, level = 36, area_id = 200 },
	{ config_id = 131005, gadget_id = 70220013, pos = { x = 381.116, y = 146.705, z = 917.185 }, rot = { x = 351.248, y = 0.000, z = 6.864 }, level = 36, area_id = 200 },
	{ config_id = 131006, gadget_id = 70220013, pos = { x = 351.234, y = 145.142, z = 921.171 }, rot = { x = 359.377, y = 2.326, z = 343.317 }, level = 36, area_id = 200 },
	{ config_id = 131007, gadget_id = 70220013, pos = { x = 348.472, y = 146.029, z = 917.708 }, rot = { x = 346.230, y = 300.968, z = 351.871 }, level = 36, area_id = 200 },
	{ config_id = 131008, gadget_id = 70300086, pos = { x = 369.945, y = 145.936, z = 929.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 131009, gadget_id = 70300086, pos = { x = 349.368, y = 144.913, z = 919.921 }, rot = { x = 347.728, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 131010, gadget_id = 70300086, pos = { x = 382.648, y = 146.330, z = 916.086 }, rot = { x = 334.917, y = 359.770, z = 17.410 }, level = 36, area_id = 200 },
	{ config_id = 131011, gadget_id = 70220026, pos = { x = 350.937, y = 145.404, z = 918.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 131012, gadget_id = 70220026, pos = { x = 368.087, y = 146.399, z = 929.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 131013, gadget_id = 70220026, pos = { x = 369.980, y = 146.159, z = 927.983 }, rot = { x = 351.787, y = 324.640, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 131018, gadget_id = 70310001, pos = { x = 378.644, y = 146.267, z = 917.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 131019, gadget_id = 70310001, pos = { x = 350.798, y = 145.603, z = 915.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 131020, gadget_id = 70310001, pos = { x = 372.554, y = 146.153, z = 926.050 }, rot = { x = 355.576, y = 359.690, z = 8.005 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131003, name = "ANY_MONSTER_DIE_131003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131003", action = "action_EVENT_ANY_MONSTER_DIE_131003" }
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
		monsters = { 131001, 131014, 131015, 131016, 131017 },
		gadgets = { 131002, 131004, 131005, 131006, 131007, 131008, 131009, 131010, 131011, 131012, 131013, 131018, 131019, 131020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131003(context, evt)
	-- 将configid为 131002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131002, GadgetState.Default) then
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