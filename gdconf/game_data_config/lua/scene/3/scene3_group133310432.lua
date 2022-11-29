-- 基础信息
local base_info = {
	group_id = 133310432
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 432001, monster_id = 25210401, pos = { x = -2502.261, y = 124.518, z = 4885.454 }, rot = { x = 0.000, y = 335.911, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 432004, monster_id = 25210202, pos = { x = -2505.260, y = 130.534, z = 4894.105 }, rot = { x = 0.000, y = 127.875, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9004, area_id = 27 },
	{ config_id = 432005, monster_id = 25210302, pos = { x = -2499.181, y = 124.629, z = 4886.989 }, rot = { x = 0.000, y = 309.880, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 27 },
	{ config_id = 432006, monster_id = 25210501, pos = { x = -2497.292, y = 124.821, z = 4889.213 }, rot = { x = 0.000, y = 296.056, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 27 },
	{ config_id = 432007, monster_id = 28060901, pos = { x = -2491.041, y = 124.574, z = 4892.972 }, rot = { x = 0.000, y = 252.671, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 432002, gadget_id = 70211002, pos = { x = -2511.976, y = 127.327, z = 4883.908 }, rot = { x = 12.525, y = 135.102, z = 2.932 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1432003, name = "ANY_MONSTER_DIE_432003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_432003", action = "action_EVENT_ANY_MONSTER_DIE_432003" }
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
		monsters = { 432001, 432004, 432005, 432006, 432007 },
		gadgets = { 432002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_432003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_432003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_432003(context, evt)
	-- 将configid为 432002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 432002, GadgetState.Default) then
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