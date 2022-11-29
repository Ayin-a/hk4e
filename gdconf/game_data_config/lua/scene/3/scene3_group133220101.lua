-- 基础信息
local base_info = {
	group_id = 133220101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101004, monster_id = 21030601, pos = { x = -2710.841, y = 200.472, z = -3957.718 }, rot = { x = 358.583, y = 260.143, z = 358.323 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 101005, monster_id = 21030601, pos = { x = -2713.747, y = 200.606, z = -3954.474 }, rot = { x = 0.000, y = 156.053, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 101006, monster_id = 21020701, pos = { x = -2712.115, y = 200.298, z = -3964.516 }, rot = { x = 359.207, y = 334.279, z = 0.382 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 11 },
	{ config_id = 101009, monster_id = 21010101, pos = { x = -2717.207, y = 200.514, z = -3962.426 }, rot = { x = 0.000, y = 57.643, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101001, gadget_id = 70310006, pos = { x = -2715.992, y = 200.835, z = -3959.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 101002, gadget_id = 70211002, pos = { x = -2716.149, y = 200.621, z = -3955.701 }, rot = { x = 0.000, y = 113.038, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 101007, gadget_id = 70300087, pos = { x = -2716.642, y = 200.611, z = -3952.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003" }
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
		monsters = { 101004, 101005, 101006, 101009 },
		gadgets = { 101001, 101002, 101007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
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