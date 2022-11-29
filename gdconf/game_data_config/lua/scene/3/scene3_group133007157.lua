-- 基础信息
local base_info = {
	group_id = 133007157
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 157001, monster_id = 21010201, pos = { x = 2639.475, y = 206.950, z = -11.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 157004, monster_id = 21010401, pos = { x = 2636.266, y = 206.950, z = -11.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 157005, monster_id = 21010401, pos = { x = 2638.205, y = 206.950, z = -5.521 }, rot = { x = 0.000, y = 165.013, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 157006, monster_id = 21010701, pos = { x = 2640.234, y = 206.950, z = -10.209 }, rot = { x = 0.000, y = 309.199, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 157002, gadget_id = 70211012, pos = { x = 2635.699, y = 206.950, z = -6.801 }, rot = { x = 0.000, y = 135.963, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 157007, gadget_id = 70220013, pos = { x = 2633.886, y = 206.950, z = -8.061 }, rot = { x = 0.000, y = 314.058, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 157008, gadget_id = 70310004, pos = { x = 2638.217, y = 206.950, z = -8.787 }, rot = { x = 0.000, y = 182.474, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157003, name = "ANY_MONSTER_DIE_157003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157003", action = "action_EVENT_ANY_MONSTER_DIE_157003" }
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
		monsters = { 157001, 157004, 157005, 157006 },
		gadgets = { 157002, 157007, 157008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_157003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_157003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_157003(context, evt)
	-- 将configid为 157002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157002, GadgetState.Default) then
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