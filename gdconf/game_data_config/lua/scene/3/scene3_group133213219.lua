-- 基础信息
local base_info = {
	group_id = 133213219
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 219001, monster_id = 25080101, pos = { x = -3394.817, y = 203.043, z = -3429.419 }, rot = { x = 5.720, y = 279.413, z = 358.238 }, level = 25, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, area_id = 12 },
	{ config_id = 219004, monster_id = 25010501, pos = { x = -3396.220, y = 202.807, z = -3427.410 }, rot = { x = 355.110, y = 151.856, z = 356.547 }, level = 27, drop_tag = "盗宝团", pose_id = 9007, area_id = 12 },
	{ config_id = 219005, monster_id = 25010401, pos = { x = -3398.237, y = 202.802, z = -3432.289 }, rot = { x = 1.098, y = 74.861, z = 0.630 }, level = 27, drop_tag = "盗宝团", pose_id = 9007, area_id = 12 },
	{ config_id = 219006, monster_id = 25080301, pos = { x = -3395.940, y = 202.872, z = -3431.793 }, rot = { x = 1.791, y = 9.213, z = 5.711 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 219002, gadget_id = 70211002, pos = { x = -3399.444, y = 202.796, z = -3429.036 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 219007, gadget_id = 70310006, pos = { x = -3398.763, y = 202.813, z = -3430.639 }, rot = { x = 0.000, y = 0.000, z = 0.895 }, level = 27, area_id = 12 },
	{ config_id = 219008, gadget_id = 70300105, pos = { x = -3401.840, y = 202.506, z = -3425.468 }, rot = { x = 5.448, y = 35.589, z = 9.294 }, level = 27, area_id = 12 },
	{ config_id = 219009, gadget_id = 70300092, pos = { x = -3402.782, y = 202.688, z = -3431.344 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 219010, gadget_id = 70300094, pos = { x = -3397.590, y = 202.804, z = -3434.946 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 219011, gadget_id = 70220048, pos = { x = -3398.874, y = 202.426, z = -3425.280 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 219012, gadget_id = 70220048, pos = { x = -3390.681, y = 203.229, z = -3430.338 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 219013, gadget_id = 70220051, pos = { x = -3399.441, y = 202.592, z = -3426.661 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 219014, gadget_id = 70220051, pos = { x = -3390.724, y = 202.988, z = -3431.798 }, rot = { x = 2.672, y = 0.125, z = 5.356 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219003, name = "ANY_MONSTER_DIE_219003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219003", action = "action_EVENT_ANY_MONSTER_DIE_219003" }
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
		monsters = { 219001, 219004, 219005, 219006 },
		gadgets = { 219002, 219007, 219008, 219009, 219010, 219011, 219012, 219013, 219014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_219003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_219003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219003(context, evt)
	-- 将configid为 219002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 219002, GadgetState.Default) then
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