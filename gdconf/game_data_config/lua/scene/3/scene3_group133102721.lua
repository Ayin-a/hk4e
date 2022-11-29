-- 基础信息
local base_info = {
	group_id = 133102721
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 721001, monster_id = 25010501, pos = { x = 1560.807, y = 231.893, z = 769.005 }, rot = { x = 0.000, y = 42.844, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 721004, monster_id = 25010201, pos = { x = 1559.772, y = 231.922, z = 751.789 }, rot = { x = 0.000, y = 198.066, z = 0.000 }, level = 18, drop_tag = "盗宝团", pose_id = 9005, area_id = 5 },
	{ config_id = 721005, monster_id = 25030201, pos = { x = 1569.930, y = 232.013, z = 760.516 }, rot = { x = 353.178, y = 311.990, z = 2.245 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9008, area_id = 5 },
	{ config_id = 721006, monster_id = 25010501, pos = { x = 1564.665, y = 232.025, z = 765.483 }, rot = { x = 0.000, y = 109.198, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, area_id = 5 },
	{ config_id = 721010, monster_id = 25020201, pos = { x = 1542.272, y = 229.893, z = 756.177 }, rot = { x = 0.000, y = 32.778, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 721002, gadget_id = 70211012, pos = { x = 1555.795, y = 230.940, z = 762.190 }, rot = { x = 2.090, y = 359.961, z = 350.613 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 721007, gadget_id = 70220013, pos = { x = 1536.372, y = 229.506, z = 752.207 }, rot = { x = 4.626, y = 355.749, z = 359.562 }, level = 18, area_id = 5 },
	{ config_id = 721008, gadget_id = 70220026, pos = { x = 1535.462, y = 229.891, z = 753.993 }, rot = { x = 353.086, y = 289.478, z = 352.884 }, level = 18, area_id = 5 },
	{ config_id = 721009, gadget_id = 70220026, pos = { x = 1537.693, y = 229.559, z = 753.700 }, rot = { x = 7.487, y = 17.342, z = 353.984 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1721003, name = "ANY_MONSTER_DIE_721003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_721003", action = "action_EVENT_ANY_MONSTER_DIE_721003" }
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
		monsters = { 721001, 721004, 721005, 721006, 721010 },
		gadgets = { 721002, 721007, 721008, 721009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_721003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_721003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_721003(context, evt)
	-- 将configid为 721002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 721002, GadgetState.Default) then
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