-- 基础信息
local base_info = {
	group_id = 133104040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87, monster_id = 21010601, pos = { x = 665.836, y = 201.503, z = 337.384 }, rot = { x = 0.209, y = 286.992, z = 0.226 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 89, monster_id = 21010301, pos = { x = 659.579, y = 201.044, z = 335.043 }, rot = { x = 0.000, y = 53.430, z = 0.000 }, level = 17, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 91, monster_id = 21030301, pos = { x = 665.654, y = 200.996, z = 341.094 }, rot = { x = 0.000, y = 165.353, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71, gadget_id = 70211012, pos = { x = 662.890, y = 201.075, z = 345.589 }, rot = { x = 0.000, y = 202.227, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 40001, gadget_id = 70220005, pos = { x = 662.425, y = 201.075, z = 334.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, area_id = 9 },
	{ config_id = 40003, gadget_id = 70220013, pos = { x = 669.384, y = 201.075, z = 339.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000054, name = "ANY_MONSTER_DIE_54", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54", action = "action_EVENT_ANY_MONSTER_DIE_54" }
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
		monsters = { 87, 89, 91 },
		gadgets = { 71, 40001, 40003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54(context, evt)
	-- 将configid为 71 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end