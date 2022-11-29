-- 基础信息
local base_info = {
	group_id = 133220459
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 459001, monster_id = 21010201, pos = { x = -2963.278, y = 200.028, z = -3937.427 }, rot = { x = 0.000, y = 274.344, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 459004, monster_id = 21010201, pos = { x = -2965.189, y = 200.136, z = -3935.378 }, rot = { x = 0.000, y = 203.363, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9002, area_id = 11 },
	{ config_id = 459008, monster_id = 21011601, pos = { x = -2969.706, y = 202.581, z = -3931.233 }, rot = { x = 0.000, y = 59.680, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 459009, monster_id = 21010701, pos = { x = -2958.069, y = 200.055, z = -3919.525 }, rot = { x = 0.000, y = 88.421, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 459002, gadget_id = 70211002, pos = { x = -2964.515, y = 201.125, z = -3925.377 }, rot = { x = 14.467, y = 91.270, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 459005, gadget_id = 70300086, pos = { x = -2972.909, y = 201.518, z = -3930.714 }, rot = { x = 351.602, y = 18.087, z = 357.269 }, level = 27, area_id = 11 },
	{ config_id = 459006, gadget_id = 70300086, pos = { x = -2972.741, y = 200.309, z = -3920.076 }, rot = { x = 11.619, y = 37.994, z = 8.142 }, level = 27, area_id = 11 },
	{ config_id = 459007, gadget_id = 70310009, pos = { x = -2966.272, y = 200.089, z = -3938.076 }, rot = { x = 0.000, y = 47.982, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1459003, name = "ANY_MONSTER_DIE_459003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_459003", action = "action_EVENT_ANY_MONSTER_DIE_459003" }
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
		monsters = { 459001, 459004, 459008, 459009 },
		gadgets = { 459002, 459005, 459006, 459007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_459003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_459003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_459003(context, evt)
	-- 将configid为 459002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 459002, GadgetState.Default) then
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