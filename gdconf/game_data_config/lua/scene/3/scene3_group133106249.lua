-- 基础信息
local base_info = {
	group_id = 133106249
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249005, monster_id = 23010201, pos = { x = -165.466, y = 196.637, z = 873.682 }, rot = { x = 0.000, y = 262.627, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 249006, monster_id = 23010501, pos = { x = -169.654, y = 196.637, z = 872.591 }, rot = { x = 0.000, y = 47.248, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249002, gadget_id = 70211012, pos = { x = -173.229, y = 196.646, z = 871.171 }, rot = { x = 0.000, y = 359.302, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 249004, gadget_id = 70310004, pos = { x = -167.187, y = 196.637, z = 872.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 249007, gadget_id = 70220014, pos = { x = -162.969, y = 196.610, z = 871.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 249008, gadget_id = 70220014, pos = { x = -162.079, y = 196.610, z = 871.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249003, name = "ANY_MONSTER_DIE_249003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249003", action = "action_EVENT_ANY_MONSTER_DIE_249003" }
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
		monsters = { 249005, 249006 },
		gadgets = { 249002, 249004, 249007, 249008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_249003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
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