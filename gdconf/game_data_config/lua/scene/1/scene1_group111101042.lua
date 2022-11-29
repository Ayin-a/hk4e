-- 基础信息
local base_info = {
	group_id = 111101042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21010201, pos = { x = 2278.105, y = 246.600, z = -1416.197 }, rot = { x = 0.000, y = 272.100, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 42012, monster_id = 21010401, pos = { x = 2276.693, y = 246.301, z = -1417.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 42013, monster_id = 21010201, pos = { x = 2275.357, y = 246.041, z = -1416.621 }, rot = { x = 0.000, y = 93.060, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 42014, monster_id = 21010301, pos = { x = 2281.496, y = 247.360, z = -1416.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211012, pos = { x = 2276.014, y = 246.049, z = -1420.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 42004, gadget_id = 70220013, pos = { x = 2277.929, y = 246.417, z = -1420.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42005, gadget_id = 70220013, pos = { x = 2279.715, y = 246.926, z = -1419.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42006, gadget_id = 70220005, pos = { x = 2278.173, y = 246.568, z = -1419.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42007, gadget_id = 70220014, pos = { x = 2274.530, y = 245.771, z = -1421.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42008, gadget_id = 70220014, pos = { x = 2274.162, y = 245.681, z = -1420.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42009, gadget_id = 70220014, pos = { x = 2272.895, y = 245.314, z = -1421.217 }, rot = { x = 0.890, y = 356.640, z = 320.140 }, level = 1 },
	{ config_id = 42010, gadget_id = 70310004, pos = { x = 2276.784, y = 246.337, z = -1416.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 42011, gadget_id = 70220017, pos = { x = 2273.740, y = 245.628, z = -1417.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
		monsters = { 42001, 42012, 42013, 42014 },
		gadgets = { 42002, 42004, 42005, 42006, 42007, 42008, 42009, 42010, 42011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
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