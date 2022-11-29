-- 基础信息
local base_info = {
	group_id = 133310268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268001, monster_id = 25310301, pos = { x = -2824.045, y = 80.104, z = 4482.507 }, rot = { x = 0.000, y = 299.004, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 28 },
	{ config_id = 268007, monster_id = 25310101, pos = { x = -2822.006, y = 80.107, z = 4480.506 }, rot = { x = 0.000, y = 251.685, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268002, gadget_id = 70211012, pos = { x = -2817.988, y = 80.104, z = 4481.528 }, rot = { x = 0.000, y = 246.742, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 268004, gadget_id = 70330429, pos = { x = -2828.298, y = 80.178, z = 4486.510 }, rot = { x = 0.000, y = 45.103, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 268005, gadget_id = 70330428, pos = { x = -2827.351, y = 80.211, z = 4487.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268003, name = "ANY_MONSTER_DIE_268003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_268003", action = "action_EVENT_ANY_MONSTER_DIE_268003" }
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
		monsters = { 268001, 268007 },
		gadgets = { 268002, 268004, 268005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_268003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 将configid为 268002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268002, GadgetState.Default) then
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