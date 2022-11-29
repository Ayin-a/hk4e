-- 基础信息
local base_info = {
	group_id = 133217277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277004, monster_id = 21020801, pos = { x = -4398.798, y = 200.654, z = -3657.930 }, rot = { x = 356.880, y = 93.542, z = 6.938 }, level = 30, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 14 },
	{ config_id = 277009, monster_id = 21011001, pos = { x = -4390.874, y = 200.617, z = -3653.591 }, rot = { x = 7.620, y = 359.971, z = 359.570 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 14 },
	{ config_id = 277010, monster_id = 21011001, pos = { x = -4395.114, y = 201.118, z = -3653.168 }, rot = { x = 5.401, y = 11.306, z = 356.148 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 14 },
	{ config_id = 277014, monster_id = 21010301, pos = { x = -4391.088, y = 202.002, z = -3665.489 }, rot = { x = 0.000, y = 342.710, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277002, gadget_id = 70211012, pos = { x = -4401.416, y = 200.387, z = -3653.298 }, rot = { x = 358.705, y = 128.279, z = 5.462 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 277005, gadget_id = 70300086, pos = { x = -4399.301, y = 199.938, z = -3652.393 }, rot = { x = 353.240, y = 34.421, z = 358.671 }, level = 30, area_id = 14 },
	{ config_id = 277006, gadget_id = 70300086, pos = { x = -4398.721, y = 201.681, z = -3663.790 }, rot = { x = 358.417, y = 37.218, z = 357.790 }, level = 30, area_id = 14 },
	{ config_id = 277007, gadget_id = 70300086, pos = { x = -4388.633, y = 200.042, z = -3654.842 }, rot = { x = 356.220, y = 37.303, z = 357.786 }, level = 30, area_id = 14 },
	{ config_id = 277011, gadget_id = 70300088, pos = { x = -4392.313, y = 200.114, z = -3644.296 }, rot = { x = 10.375, y = 91.365, z = 358.352 }, level = 30, area_id = 14 },
	{ config_id = 277012, gadget_id = 70220013, pos = { x = -4386.467, y = 200.537, z = -3659.055 }, rot = { x = 358.605, y = 347.329, z = 345.926 }, level = 30, area_id = 14 },
	{ config_id = 277013, gadget_id = 70220013, pos = { x = -4387.190, y = 201.008, z = -3661.572 }, rot = { x = 10.894, y = 359.327, z = 352.747 }, level = 30, area_id = 14 },
	{ config_id = 277015, gadget_id = 70300089, pos = { x = -4391.548, y = 201.765, z = -3663.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277003, name = "ANY_MONSTER_DIE_277003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_277003", action = "action_EVENT_ANY_MONSTER_DIE_277003" }
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
		monsters = { 277004, 277009, 277010, 277014 },
		gadgets = { 277002, 277005, 277006, 277007, 277011, 277012, 277013, 277015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_277003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 将configid为 277002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277002, GadgetState.Default) then
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