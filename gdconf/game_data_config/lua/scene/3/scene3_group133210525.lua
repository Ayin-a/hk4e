-- 基础信息
local base_info = {
	group_id = 133210525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 525001, monster_id = 25030201, pos = { x = -3608.390, y = 210.651, z = -947.861 }, rot = { x = 0.000, y = 176.749, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 17 },
	{ config_id = 525004, monster_id = 25010301, pos = { x = -3598.983, y = 210.460, z = -946.239 }, rot = { x = 0.000, y = 157.316, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 17 },
	{ config_id = 525005, monster_id = 25010601, pos = { x = -3598.376, y = 210.328, z = -947.467 }, rot = { x = 0.000, y = 331.996, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 17 },
	{ config_id = 525006, monster_id = 25010201, pos = { x = -3617.845, y = 208.435, z = -963.772 }, rot = { x = 0.000, y = 176.749, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525002, gadget_id = 70211002, pos = { x = -3608.773, y = 210.825, z = -951.024 }, rot = { x = 11.650, y = 180.102, z = 356.916 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 525008, gadget_id = 70300104, pos = { x = -3611.690, y = 211.112, z = -942.437 }, rot = { x = 353.385, y = 329.862, z = 358.894 }, level = 30, area_id = 17 },
	{ config_id = 525009, gadget_id = 70300105, pos = { x = -3596.717, y = 210.441, z = -945.531 }, rot = { x = 0.679, y = 150.056, z = 353.294 }, level = 30, area_id = 17 },
	{ config_id = 525010, gadget_id = 70220048, pos = { x = -3610.022, y = 211.148, z = -940.145 }, rot = { x = 357.417, y = 239.507, z = 3.974 }, level = 30, area_id = 17 },
	{ config_id = 525011, gadget_id = 70220048, pos = { x = -3608.337, y = 210.920, z = -941.821 }, rot = { x = 358.565, y = 291.246, z = 2.053 }, level = 30, area_id = 17 },
	{ config_id = 525012, gadget_id = 70300092, pos = { x = -3599.442, y = 210.697, z = -940.568 }, rot = { x = 353.314, y = 316.072, z = 357.935 }, level = 30, area_id = 17 },
	{ config_id = 525013, gadget_id = 70900393, pos = { x = -3600.032, y = 210.544, z = -944.480 }, rot = { x = 359.507, y = 8.560, z = 354.880 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 525014, gadget_id = 70900393, pos = { x = -3597.506, y = 210.110, z = -949.010 }, rot = { x = 354.864, y = 246.353, z = 6.494 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1525003, name = "ANY_MONSTER_DIE_525003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_525003", action = "action_EVENT_ANY_MONSTER_DIE_525003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 525007, monster_id = 25070101, pos = { x = -3610.744, y = 210.948, z = -943.470 }, rot = { x = 0.000, y = 134.578, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 17 }
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
		monsters = { 525001, 525004, 525005, 525006 },
		gadgets = { 525002, 525008, 525009, 525010, 525011, 525012, 525013, 525014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_525003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 将configid为 525002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 525002, GadgetState.Default) then
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