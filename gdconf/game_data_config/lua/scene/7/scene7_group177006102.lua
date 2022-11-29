-- 基础信息
local base_info = {
	group_id = 177006102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 21010201, pos = { x = 491.635, y = 182.377, z = -363.121 }, rot = { x = 0.000, y = 104.733, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1032 }, pose_id = 9012, area_id = 210 },
	{ config_id = 102004, monster_id = 21010201, pos = { x = 490.971, y = 183.742, z = -367.585 }, rot = { x = 0.000, y = 48.142, z = 0.000 }, level = 36, drop_tag = "丘丘人", affix = { 1032 }, pose_id = 9012, area_id = 210 },
	{ config_id = 102005, monster_id = 21010201, pos = { x = 492.897, y = 184.406, z = -370.110 }, rot = { x = 0.000, y = 36.792, z = 0.000 }, level = 36, drop_tag = "丘丘人", affix = { 1032 }, pose_id = 9012, area_id = 210 },
	{ config_id = 102006, monster_id = 22010101, pos = { x = 494.385, y = 183.284, z = -366.256 }, rot = { x = 0.000, y = 34.084, z = 0.000 }, level = 36, drop_tag = "深渊法师", affix = { 1032 }, pose_id = 9013, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 102002, gadget_id = 70211156, pos = { x = 492.400, y = 181.701, z = -360.931 }, rot = { x = 0.000, y = 317.743, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 102007, gadget_id = 70300107, pos = { x = 498.215, y = 182.760, z = -364.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102003, name = "ANY_MONSTER_DIE_102003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102003", action = "action_EVENT_ANY_MONSTER_DIE_102003" }
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
		monsters = { 102001, 102004, 102005, 102006 },
		gadgets = { 102002, 102007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102003(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Default) then
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