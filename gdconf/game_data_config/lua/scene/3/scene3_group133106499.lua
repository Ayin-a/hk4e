-- 基础信息
local base_info = {
	group_id = 133106499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 21030401, pos = { x = -540.219, y = 178.455, z = 1876.605 }, rot = { x = 0.000, y = 220.700, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 19 },
	{ config_id = 499005, monster_id = 21010501, pos = { x = -544.269, y = 178.457, z = 1876.790 }, rot = { x = 0.000, y = 78.272, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 19 },
	{ config_id = 499006, monster_id = 21011001, pos = { x = -540.052, y = 178.260, z = 1872.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499002, gadget_id = 70211002, pos = { x = -537.765, y = 179.268, z = 1879.221 }, rot = { x = 358.208, y = 229.610, z = 358.942 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 499008, gadget_id = 70310001, pos = { x = -534.326, y = 178.821, z = 1873.127 }, rot = { x = 0.634, y = 305.046, z = 1.497 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 499009, gadget_id = 70310001, pos = { x = -531.734, y = 179.380, z = 1879.900 }, rot = { x = 357.322, y = 0.023, z = 3.905 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 499010, gadget_id = 70220013, pos = { x = -530.426, y = 179.413, z = 1878.677 }, rot = { x = 356.036, y = 22.427, z = 2.590 }, level = 36, area_id = 19 },
	{ config_id = 499011, gadget_id = 70220013, pos = { x = -533.649, y = 178.747, z = 1871.158 }, rot = { x = 354.427, y = 51.992, z = 1.263 }, level = 36, area_id = 19 },
	{ config_id = 499012, gadget_id = 70220026, pos = { x = -531.830, y = 179.249, z = 1877.220 }, rot = { x = 359.442, y = 332.379, z = 4.701 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499003, name = "ANY_MONSTER_DIE_499003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499003", action = "action_EVENT_ANY_MONSTER_DIE_499003" }
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
		monsters = { 499001, 499005, 499006 },
		gadgets = { 499002, 499008, 499009, 499010, 499011, 499012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499003(context, evt)
	-- 将configid为 499002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499002, GadgetState.Default) then
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