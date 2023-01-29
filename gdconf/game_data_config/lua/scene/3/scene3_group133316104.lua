-- 基础信息
local base_info = {
	group_id = 133316104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 24010101, pos = { x = 367.714, y = 118.155, z = 6300.586 }, rot = { x = 0.000, y = 153.632, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 101, area_id = 30 },
	{ config_id = 104002, monster_id = 24010101, pos = { x = 389.309, y = 118.810, z = 6271.743 }, rot = { x = 0.000, y = 275.910, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 101, area_id = 30 },
	{ config_id = 104003, monster_id = 24010101, pos = { x = 370.872, y = 118.155, z = 6277.875 }, rot = { x = 0.000, y = 1.640, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", pose_id = 111, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104005, gadget_id = 70350433, pos = { x = 376.959, y = 130.665, z = 6258.736 }, rot = { x = 0.000, y = 8.945, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104004, name = "ANY_MONSTER_DIE_104004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104004", action = "action_EVENT_ANY_MONSTER_DIE_104004", trigger_count = 0 }
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
		monsters = { 104001, 104002, 104003 },
		gadgets = { 104005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_104004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104004(context, evt)
	-- 将configid为 104005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end