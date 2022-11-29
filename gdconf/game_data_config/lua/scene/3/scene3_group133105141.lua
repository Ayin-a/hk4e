-- 基础信息
local base_info = {
	group_id = 133105141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42, monster_id = 21011001, pos = { x = 505.759, y = 203.430, z = -500.371 }, rot = { x = 0.000, y = 13.254, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 43, monster_id = 21010301, pos = { x = 511.895, y = 200.229, z = -479.978 }, rot = { x = 0.000, y = 45.062, z = 0.000 }, level = 21, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 44, monster_id = 21010701, pos = { x = 506.280, y = 200.160, z = -486.293 }, rot = { x = 0.000, y = 174.172, z = 0.000 }, level = 21, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 45, monster_id = 21010501, pos = { x = 508.790, y = 200.137, z = -489.440 }, rot = { x = 0.000, y = 312.463, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 46, monster_id = 21010201, pos = { x = 506.239, y = 200.150, z = -489.485 }, rot = { x = 0.000, y = 38.527, z = 0.000 }, level = 21, drop_tag = "丘丘人", pose_id = 9011, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369, gadget_id = 70211012, pos = { x = 502.792, y = 200.396, z = -482.560 }, rot = { x = 7.322, y = 99.746, z = 359.452 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000186, name = "ANY_MONSTER_DIE_186", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_186", action = "action_EVENT_ANY_MONSTER_DIE_186" }
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
		-- description = suite_1,
		monsters = { 42, 43, 44, 45, 46 },
		gadgets = { 369 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_186" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_186(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_186(context, evt)
	-- 将configid为 369 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369, GadgetState.Default) then
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