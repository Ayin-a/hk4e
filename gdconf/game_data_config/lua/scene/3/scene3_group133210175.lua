-- 基础信息
local base_info = {
	group_id = 133210175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 21010501, pos = { x = -3936.231, y = 107.660, z = -837.091 }, rot = { x = 0.000, y = 144.960, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 17 },
	{ config_id = 175004, monster_id = 21010501, pos = { x = -3925.688, y = 107.993, z = -841.575 }, rot = { x = 0.000, y = 260.992, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 17 },
	{ config_id = 175012, monster_id = 21011001, pos = { x = -3936.981, y = 107.407, z = -852.044 }, rot = { x = 0.000, y = 2.199, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175002, gadget_id = 70211002, pos = { x = -3937.003, y = 107.398, z = -853.721 }, rot = { x = 0.000, y = 357.941, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 175008, gadget_id = 70300088, pos = { x = -3930.776, y = 106.201, z = -845.156 }, rot = { x = 342.660, y = 221.726, z = 12.694 }, level = 30, area_id = 17 },
	{ config_id = 175009, gadget_id = 70300088, pos = { x = -3945.462, y = 106.730, z = -847.602 }, rot = { x = 322.512, y = 349.460, z = 359.697 }, level = 30, area_id = 17 },
	{ config_id = 175013, gadget_id = 70300081, pos = { x = -3929.765, y = 106.744, z = -836.369 }, rot = { x = 359.524, y = 302.114, z = 0.758 }, level = 30, area_id = 17 },
	{ config_id = 175014, gadget_id = 70300085, pos = { x = -3937.279, y = 106.943, z = -852.805 }, rot = { x = 0.000, y = 271.100, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 175018, gadget_id = 70300088, pos = { x = -3943.727, y = 106.579, z = -845.110 }, rot = { x = 8.477, y = 359.243, z = 4.771 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175003, name = "ANY_MONSTER_DIE_175003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175003", action = "action_EVENT_ANY_MONSTER_DIE_175003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 175005, monster_id = 21011601, pos = { x = -3938.766, y = 106.839, z = -849.624 }, rot = { x = 0.000, y = 85.780, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 17 },
		{ config_id = 175011, monster_id = 21011601, pos = { x = -3935.699, y = 106.739, z = -849.749 }, rot = { x = 0.000, y = 268.889, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 17 }
	},
	gadgets = {
		{ config_id = 175006, gadget_id = 70300088, pos = { x = -3929.033, y = 106.941, z = -847.543 }, rot = { x = 0.000, y = 182.462, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 175007, gadget_id = 70220065, pos = { x = -3943.056, y = 106.885, z = -855.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 175015, gadget_id = 70300088, pos = { x = -3936.239, y = 107.068, z = -855.544 }, rot = { x = 0.000, y = 291.792, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 175016, gadget_id = 70300088, pos = { x = -3934.284, y = 107.499, z = -855.447 }, rot = { x = 0.000, y = 247.576, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 175017, gadget_id = 70300088, pos = { x = -3937.845, y = 109.400, z = -856.917 }, rot = { x = 8.477, y = 264.727, z = 4.771 }, level = 30, area_id = 17 },
		{ config_id = 175019, gadget_id = 70220013, pos = { x = -3940.665, y = 106.998, z = -856.650 }, rot = { x = 0.000, y = 37.826, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 175001, 175004, 175012 },
		gadgets = { 175002, 175008, 175009, 175013, 175014, 175018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 将configid为 175002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.Default) then
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