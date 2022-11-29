-- 基础信息
local base_info = {
	group_id = 133212032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 25010201, pos = { x = -3662.281, y = 232.910, z = -2263.579 }, rot = { x = 0.000, y = 342.344, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 32002, monster_id = 25100101, pos = { x = -3659.032, y = 232.718, z = -2265.724 }, rot = { x = 0.000, y = 342.344, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1001, area_id = 13 },
	{ config_id = 32003, monster_id = 25010701, pos = { x = -3658.717, y = 232.567, z = -2261.951 }, rot = { x = 0.000, y = 313.078, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32004, gadget_id = 70211002, pos = { x = -3655.064, y = 232.278, z = -2263.420 }, rot = { x = 348.300, y = 260.835, z = 359.845 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032005, name = "ANY_MONSTER_DIE_32005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32005", action = "action_EVENT_ANY_MONSTER_DIE_32005" },
	{ config_id = 1032006, name = "MONSTER_BATTLE_32006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_32006", action = "action_EVENT_MONSTER_BATTLE_32006" }
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
		monsters = { 32001, 32002, 32003 },
		gadgets = { 32004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32005", "MONSTER_BATTLE_32006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_32005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32005(context, evt)
	-- 将configid为 32004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_32006(context, evt)
	if 32001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_32006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212032, 2)
	
	return 0
end