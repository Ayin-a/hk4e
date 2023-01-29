-- 基础信息
local base_info = {
	group_id = 133314265
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 25310101, pos = { x = -836.347, y = 69.375, z = 4655.364 }, rot = { x = 0.000, y = 239.675, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 265004, monster_id = 25310301, pos = { x = -836.767, y = 69.453, z = 4657.261 }, rot = { x = 0.000, y = 240.438, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9002, area_id = 32 },
	{ config_id = 265005, monster_id = 25210101, pos = { x = -843.569, y = 63.076, z = 4646.302 }, rot = { x = 0.000, y = 274.198, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 32 },
	{ config_id = 265006, monster_id = 25210302, pos = { x = -855.717, y = 59.183, z = 4649.957 }, rot = { x = 0.000, y = 275.767, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 265007, monster_id = 25210302, pos = { x = -857.278, y = 60.258, z = 4655.411 }, rot = { x = 0.000, y = 269.038, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 265008, monster_id = 25210402, pos = { x = -845.293, y = 62.395, z = 4645.601 }, rot = { x = 0.000, y = 70.115, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 265002, gadget_id = 70211012, pos = { x = -834.794, y = 69.406, z = 4653.022 }, rot = { x = 0.765, y = 245.489, z = 358.913 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1265003, name = "ANY_MONSTER_DIE_265003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_265003", action = "action_EVENT_ANY_MONSTER_DIE_265003" },
	{ config_id = 1265009, name = "ANY_MONSTER_DIE_265009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "" }
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
		monsters = { 265001, 265004, 265006, 265007 },
		gadgets = { 265002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_265003", "ANY_MONSTER_DIE_265009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 265005, 265008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_265003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_265003(context, evt)
	-- 将configid为 265002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 265002, GadgetState.Default) then
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