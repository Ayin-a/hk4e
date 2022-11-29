-- 基础信息
local base_info = {
	group_id = 133210518
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 518001, monster_id = 23010501, pos = { x = -4066.551, y = 200.981, z = -879.238 }, rot = { x = 0.000, y = 4.377, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 17 },
	{ config_id = 518004, monster_id = 23010601, pos = { x = -4067.722, y = 200.994, z = -873.172 }, rot = { x = 0.000, y = 80.093, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 518002, gadget_id = 70211002, pos = { x = -4065.482, y = 201.011, z = -872.616 }, rot = { x = 1.024, y = 261.031, z = 0.745 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 518005, gadget_id = 70710414, pos = { x = -4066.947, y = 200.981, z = -882.475 }, rot = { x = 0.000, y = 189.762, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 518006, gadget_id = 70220048, pos = { x = -4066.504, y = 201.075, z = -869.683 }, rot = { x = 0.000, y = 232.486, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 518007, gadget_id = 70220048, pos = { x = -4068.328, y = 201.094, z = -868.742 }, rot = { x = 0.847, y = 198.991, z = 0.291 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1518003, name = "ANY_MONSTER_DIE_518003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_518003", action = "action_EVENT_ANY_MONSTER_DIE_518003" }
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
		monsters = { 518001, 518004 },
		gadgets = { 518002, 518005, 518006, 518007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_518003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_518003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_518003(context, evt)
	-- 将configid为 518002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 518002, GadgetState.Default) then
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