-- 基础信息
local base_info = {
	group_id = 133212005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5004, monster_id = 25080101, pos = { x = -3554.177, y = 202.246, z = -2805.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 5005, monster_id = 25080101, pos = { x = -3557.895, y = 202.263, z = -2803.847 }, rot = { x = 0.000, y = 16.928, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 5006, monster_id = 25080101, pos = { x = -3546.418, y = 202.276, z = -2803.045 }, rot = { x = 0.000, y = 320.998, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 5007, monster_id = 25100101, pos = { x = -3552.928, y = 203.521, z = -2798.630 }, rot = { x = 0.000, y = 149.976, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1001, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70211002, pos = { x = -3555.588, y = 200.757, z = -2811.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "ANY_MONSTER_DIE_5003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5003", action = "action_EVENT_ANY_MONSTER_DIE_5003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 5001, monster_id = 25080101, pos = { x = -3549.594, y = 202.215, z = -2805.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1006, area_id = 13 }
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
		monsters = { 5004, 5005, 5006, 5007 },
		gadgets = { 5002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
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