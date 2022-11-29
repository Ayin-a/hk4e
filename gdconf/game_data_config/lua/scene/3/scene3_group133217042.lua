-- 基础信息
local base_info = {
	group_id = 133217042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21020201, pos = { x = -4502.089, y = 201.039, z = -3925.809 }, rot = { x = 8.412, y = 278.273, z = 3.898 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 14 },
	{ config_id = 42005, monster_id = 21011001, pos = { x = -4491.303, y = 207.656, z = -3929.319 }, rot = { x = 10.255, y = 253.719, z = 356.950 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 14 },
	{ config_id = 42010, monster_id = 21011601, pos = { x = -4505.672, y = 200.592, z = -3923.525 }, rot = { x = 3.070, y = 182.494, z = 351.254 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 },
	{ config_id = 42011, monster_id = 21010301, pos = { x = -4504.522, y = 200.514, z = -3928.883 }, rot = { x = 359.701, y = 345.137, z = 9.261 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, area_id = 14 },
	{ config_id = 42016, monster_id = 21010701, pos = { x = -4513.658, y = 200.414, z = -3920.413 }, rot = { x = 3.242, y = 347.954, z = 6.591 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211002, pos = { x = -4500.746, y = 201.568, z = -3923.471 }, rot = { x = 10.945, y = 253.976, z = 3.618 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 42006, gadget_id = 70310006, pos = { x = -4505.707, y = 200.493, z = -3926.502 }, rot = { x = 357.337, y = 359.834, z = 7.125 }, level = 30, area_id = 14 },
	{ config_id = 42007, gadget_id = 70220013, pos = { x = -4487.341, y = 207.910, z = -3931.017 }, rot = { x = 0.000, y = 31.725, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 42008, gadget_id = 70220013, pos = { x = -4488.959, y = 208.014, z = -3932.949 }, rot = { x = 0.000, y = 9.886, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 42009, gadget_id = 70220013, pos = { x = -4488.817, y = 208.266, z = -3934.946 }, rot = { x = 0.000, y = 256.487, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 42012, gadget_id = 70300086, pos = { x = -4500.934, y = 200.742, z = -3930.695 }, rot = { x = 344.731, y = 0.862, z = 359.651 }, level = 30, area_id = 14 },
	{ config_id = 42013, gadget_id = 70300086, pos = { x = -4505.523, y = 200.849, z = -3920.609 }, rot = { x = 6.827, y = 359.897, z = 9.229 }, level = 30, area_id = 14 },
	{ config_id = 42014, gadget_id = 70220013, pos = { x = -4505.497, y = 201.216, z = -3919.163 }, rot = { x = 353.429, y = 32.559, z = 5.296 }, level = 30, area_id = 14 },
	{ config_id = 42015, gadget_id = 70220013, pos = { x = -4503.438, y = 201.560, z = -3918.573 }, rot = { x = 2.107, y = 334.991, z = 10.737 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 42004, monster_id = 21011001, pos = { x = -4492.919, y = 207.835, z = -3933.760 }, rot = { x = 12.413, y = 300.913, z = 359.527 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 14 },
		{ config_id = 42017, monster_id = 21010701, pos = { x = -4520.842, y = 201.218, z = -3936.844 }, rot = { x = 349.196, y = 258.833, z = 1.617 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
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
		monsters = { 42001, 42005, 42010, 42011, 42016 },
		gadgets = { 42002, 42006, 42007, 42008, 42009, 42012, 42013, 42014, 42015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
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