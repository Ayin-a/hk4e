-- 基础信息
local base_info = {
	group_id = 177008058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 20060601, pos = { x = -262.080, y = 242.592, z = 367.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, affix = { 1041 }, pose_id = 101, area_id = 210 },
	{ config_id = 58004, monster_id = 20060601, pos = { x = -259.728, y = 242.510, z = 375.434 }, rot = { x = 0.000, y = 182.135, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, affix = { 1041 }, pose_id = 101, area_id = 210 },
	{ config_id = 58005, monster_id = 20060501, pos = { x = -263.203, y = 243.897, z = 372.377 }, rot = { x = 0.000, y = 79.887, z = 0.000 }, level = 36, drop_tag = "飘浮灵", affix = { 1041 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211156, pos = { x = -260.749, y = 242.625, z = 371.366 }, rot = { x = 12.848, y = 102.251, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 58006, monster_id = 20060501, pos = { x = -257.537, y = 241.130, z = 370.192 }, rot = { x = 0.000, y = 253.080, z = 0.000 }, level = 36, drop_tag = "飘浮灵", affix = { 1041 }, pose_id = 101, area_id = 210 }
	}
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
		monsters = { 58001, 58004, 58005 },
		gadgets = { 58002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
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