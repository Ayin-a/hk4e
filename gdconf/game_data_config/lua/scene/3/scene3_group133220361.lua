-- 基础信息
local base_info = {
	group_id = 133220361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 25080101, pos = { x = -2308.228, y = 209.910, z = -3593.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 361019, monster_id = 25100201, pos = { x = -2302.312, y = 209.376, z = -3591.902 }, rot = { x = 0.000, y = 216.746, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1002, area_id = 11 },
	{ config_id = 361020, monster_id = 25080301, pos = { x = -2293.124, y = 213.056, z = -3606.432 }, rot = { x = 0.000, y = 213.361, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361002, gadget_id = 70211002, pos = { x = -2302.492, y = 210.342, z = -3596.498 }, rot = { x = 0.000, y = 46.919, z = 7.007 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 361004, gadget_id = 70300105, pos = { x = -2304.322, y = 210.575, z = -3597.608 }, rot = { x = 3.751, y = 312.863, z = 356.768 }, level = 27, area_id = 11 },
	{ config_id = 361005, gadget_id = 70220052, pos = { x = -2295.382, y = 206.634, z = -3582.070 }, rot = { x = 6.680, y = 204.283, z = 192.707 }, level = 27, area_id = 11 },
	{ config_id = 361006, gadget_id = 70220052, pos = { x = -2303.630, y = 210.691, z = -3600.810 }, rot = { x = 0.420, y = 314.951, z = 0.261 }, level = 27, area_id = 11 },
	{ config_id = 361007, gadget_id = 70220052, pos = { x = -2303.679, y = 210.749, z = -3601.624 }, rot = { x = 0.282, y = 227.884, z = 7.620 }, level = 27, area_id = 11 },
	{ config_id = 361008, gadget_id = 70310006, pos = { x = -2304.785, y = 209.926, z = -3594.225 }, rot = { x = 356.307, y = 137.363, z = 7.916 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 361009, gadget_id = 70220051, pos = { x = -2305.387, y = 210.405, z = -3596.287 }, rot = { x = 4.858, y = 320.437, z = 86.286 }, level = 27, area_id = 11 },
	{ config_id = 361010, gadget_id = 70220051, pos = { x = -2290.926, y = 209.741, z = -3594.465 }, rot = { x = 354.163, y = 250.693, z = 359.374 }, level = 27, area_id = 11 },
	{ config_id = 361011, gadget_id = 70220052, pos = { x = -2291.112, y = 209.945, z = -3595.256 }, rot = { x = 3.743, y = 218.216, z = 356.293 }, level = 27, area_id = 11 },
	{ config_id = 361012, gadget_id = 70220051, pos = { x = -2290.132, y = 209.723, z = -3594.462 }, rot = { x = 2.140, y = 291.965, z = 274.542 }, level = 27, area_id = 11 },
	{ config_id = 361013, gadget_id = 70220052, pos = { x = -2301.104, y = 210.655, z = -3598.084 }, rot = { x = 62.599, y = 125.965, z = 304.233 }, level = 27, area_id = 11 },
	{ config_id = 361014, gadget_id = 70220048, pos = { x = -2308.149, y = 210.196, z = -3597.656 }, rot = { x = 0.000, y = 357.651, z = 358.527 }, level = 27, area_id = 11 },
	{ config_id = 361015, gadget_id = 70220048, pos = { x = -2309.787, y = 210.677, z = -3599.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 361016, gadget_id = 70220048, pos = { x = -2288.514, y = 208.899, z = -3593.143 }, rot = { x = 0.001, y = 13.922, z = 0.013 }, level = 27, area_id = 11 },
	{ config_id = 361017, gadget_id = 70220048, pos = { x = -2310.986, y = 210.371, z = -3598.295 }, rot = { x = 0.000, y = 21.291, z = 2.996 }, level = 27, area_id = 11 },
	{ config_id = 361018, gadget_id = 70220048, pos = { x = -2289.625, y = 208.548, z = -3591.128 }, rot = { x = 359.858, y = 349.220, z = 0.080 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1361003, name = "ANY_MONSTER_DIE_361003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_361003", action = "action_EVENT_ANY_MONSTER_DIE_361003" }
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
		monsters = { 361001, 361019, 361020 },
		gadgets = { 361002, 361004, 361005, 361006, 361007, 361008, 361009, 361010, 361011, 361012, 361013, 361014, 361015, 361016, 361017, 361018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_361003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_361003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_361003(context, evt)
	-- 将configid为 361002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361002, GadgetState.Default) then
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