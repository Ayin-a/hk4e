-- 基础信息
local base_info = {
	group_id = 133220492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 24010101, pos = { x = -2428.577, y = 248.435, z = -4287.738 }, rot = { x = 0.000, y = 41.360, z = 0.000 }, level = 27, drop_tag = "遗迹守卫", pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 492002, gadget_id = 70211002, pos = { x = -2431.790, y = 247.535, z = -4291.149 }, rot = { x = 0.000, y = 41.489, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 492005, gadget_id = 70290095, pos = { x = -2425.939, y = 246.104, z = -4284.333 }, rot = { x = 0.001, y = 40.660, z = 0.785 }, level = 27, area_id = 11 },
	{ config_id = 492006, gadget_id = 70330064, pos = { x = -2431.777, y = 247.383, z = -4284.043 }, rot = { x = 353.953, y = 312.313, z = 6.319 }, level = 27, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1492003, name = "ANY_MONSTER_DIE_492003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492003", action = "action_EVENT_ANY_MONSTER_DIE_492003" }
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
		monsters = { 492001 },
		gadgets = { 492002, 492005, 492006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492003(context, evt)
	-- 将configid为 492002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492002, GadgetState.Default) then
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