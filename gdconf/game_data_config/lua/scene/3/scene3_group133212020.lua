-- 基础信息
local base_info = {
	group_id = 133212020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 25100101, pos = { x = -3458.056, y = 208.036, z = -2160.903 }, rot = { x = 0.000, y = 328.714, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, affix = { 1101 }, pose_id = 1002, area_id = 13 },
	{ config_id = 20005, monster_id = 25010201, pos = { x = -3455.565, y = 206.645, z = -2154.119 }, rot = { x = 3.503, y = 78.321, z = 6.487 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 },
	{ config_id = 20006, monster_id = 25010201, pos = { x = -3462.442, y = 208.983, z = -2164.050 }, rot = { x = 0.000, y = 143.410, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 },
	{ config_id = 20007, monster_id = 25010301, pos = { x = -3454.837, y = 206.739, z = -2156.632 }, rot = { x = 0.000, y = 88.504, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20002, gadget_id = 70211002, pos = { x = -3464.208, y = 207.286, z = -2149.158 }, rot = { x = 354.589, y = 180.890, z = 3.478 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 20009, gadget_id = 70310006, pos = { x = -3458.306, y = 207.326, z = -2145.125 }, rot = { x = 354.698, y = 0.040, z = 359.137 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 20010, gadget_id = 70900393, pos = { x = -3471.424, y = 210.692, z = -2158.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 20011, gadget_id = 70900393, pos = { x = -3451.702, y = 204.968, z = -2144.239 }, rot = { x = 0.000, y = 359.148, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "ANY_MONSTER_DIE_20003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20003", action = "action_EVENT_ANY_MONSTER_DIE_20003" },
	{ config_id = 1020008, name = "MONSTER_BATTLE_20008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_20008", action = "action_EVENT_MONSTER_BATTLE_20008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 20004, monster_id = 25100101, pos = { x = -3454.875, y = 207.500, z = -2166.764 }, rot = { x = 0.000, y = 141.221, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1001, area_id = 13 }
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
		monsters = { 20001 },
		gadgets = { 20002, 20009, 20010, 20011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20003", "MONSTER_BATTLE_20008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 20005, 20006, 20007 },
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
function condition_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20003(context, evt)
	-- 将configid为 20002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_20008(context, evt)
	if 20001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_20008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212020, 2)
	
	return 0
end