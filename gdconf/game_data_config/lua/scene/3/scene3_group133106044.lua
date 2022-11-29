-- 基础信息
local base_info = {
	group_id = 133106044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 25030201, pos = { x = -894.804, y = 222.350, z = 673.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 8 },
	{ config_id = 44004, monster_id = 25010201, pos = { x = -890.093, y = 222.291, z = 679.973 }, rot = { x = 0.000, y = 123.064, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 8 },
	{ config_id = 44005, monster_id = 25010201, pos = { x = -902.030, y = 224.317, z = 685.699 }, rot = { x = 0.000, y = 111.732, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 8 },
	{ config_id = 44007, monster_id = 25010201, pos = { x = -897.145, y = 222.256, z = 677.073 }, rot = { x = 0.000, y = 136.910, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211002, pos = { x = -897.445, y = 222.375, z = 673.450 }, rot = { x = 0.449, y = 62.009, z = 358.623 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 44006, gadget_id = 70310006, pos = { x = -890.861, y = 222.321, z = 677.929 }, rot = { x = 0.475, y = 0.002, z = 0.508 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
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
		monsters = { 44001, 44004, 44005, 44007 },
		gadgets = { 44002, 44006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
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