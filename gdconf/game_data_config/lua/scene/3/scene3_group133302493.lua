-- 基础信息
local base_info = {
	group_id = 133302493
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 493001, monster_id = 21030101, pos = { x = -380.716, y = 200.192, z = 2921.620 }, rot = { x = 0.000, y = 298.644, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 493008, monster_id = 26090701, pos = { x = -382.179, y = 200.545, z = 2925.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 24 },
	{ config_id = 493009, monster_id = 21010401, pos = { x = -391.063, y = 200.000, z = 2945.250 }, rot = { x = 0.000, y = 152.315, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 493010, monster_id = 21010401, pos = { x = -397.250, y = 200.317, z = 2943.824 }, rot = { x = 0.000, y = 348.039, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 24 },
	{ config_id = 493012, monster_id = 26090701, pos = { x = -384.080, y = 200.531, z = 2923.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 493002, gadget_id = 70300086, pos = { x = -377.356, y = 197.815, z = 2929.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 493003, gadget_id = 70300086, pos = { x = -390.119, y = 199.251, z = 2923.743 }, rot = { x = 336.904, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 493004, gadget_id = 70300102, pos = { x = -383.427, y = 200.076, z = 2924.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 493005, gadget_id = 70300086, pos = { x = -397.525, y = 199.644, z = 2944.659 }, rot = { x = 0.000, y = 0.000, z = 18.219 }, level = 27, area_id = 24 },
	{ config_id = 493006, gadget_id = 70300086, pos = { x = -387.533, y = 199.327, z = 2944.619 }, rot = { x = 336.931, y = 273.871, z = 6.261 }, level = 27, area_id = 24 },
	{ config_id = 493007, gadget_id = 70220103, pos = { x = -398.792, y = 206.696, z = 2944.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 493011, gadget_id = 70310004, pos = { x = -383.204, y = 200.538, z = 2924.754 }, rot = { x = 359.845, y = 0.000, z = 0.266 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 493013, gadget_id = 70211002, pos = { x = -379.011, y = 200.339, z = 2918.998 }, rot = { x = 0.000, y = 317.665, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 493016, gadget_id = 70220103, pos = { x = -390.031, y = 206.070, z = 2922.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1493014, name = "ANY_MONSTER_DIE_493014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_493014", action = "action_EVENT_ANY_MONSTER_DIE_493014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 493017, monster_id = 28050106, pos = { x = -392.708, y = 243.184, z = 2890.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
		{ config_id = 493018, monster_id = 28050106, pos = { x = -402.427, y = 241.334, z = 2879.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
		{ config_id = 493019, monster_id = 28030313, pos = { x = -400.176, y = 253.488, z = 2915.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 }
	},
	gadgets = {
		{ config_id = 493015, gadget_id = 70330216, pos = { x = -388.366, y = 198.245, z = 2934.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
	}
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
		monsters = { 493001, 493008, 493009, 493010, 493012 },
		gadgets = { 493002, 493003, 493004, 493005, 493006, 493007, 493011, 493013, 493016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_493014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_493014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302493) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_493014(context, evt)
	-- 将configid为 493013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 493013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end