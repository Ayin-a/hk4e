-- 基础信息
local base_info = {
	group_id = 199004131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21020701, pos = { x = -424.223, y = 116.763, z = -703.653 }, rot = { x = 0.000, y = 337.722, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 131002, monster_id = 22010401, pos = { x = -427.391, y = 115.260, z = -699.077 }, rot = { x = 0.000, y = 62.660, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 131003, monster_id = 21020701, pos = { x = -437.150, y = 114.654, z = -698.282 }, rot = { x = 0.000, y = 75.253, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 400 },
	{ config_id = 131004, monster_id = 20010501, pos = { x = -426.035, y = 115.608, z = -698.393 }, rot = { x = 0.000, y = 76.847, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 400 },
	{ config_id = 131010, monster_id = 20010601, pos = { x = -441.985, y = 115.315, z = -694.145 }, rot = { x = 0.000, y = 80.139, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 131011, monster_id = 20010701, pos = { x = -440.365, y = 115.022, z = -691.650 }, rot = { x = 0.000, y = 133.497, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131005, gadget_id = 70210122, pos = { x = -420.176, y = 117.685, z = -694.220 }, rot = { x = 8.617, y = 255.754, z = 0.000 }, level = 16, chest_drop_id = 1050210, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 400 },
	{ config_id = 131008, gadget_id = 70300087, pos = { x = -426.066, y = 115.607, z = -698.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131006, name = "ANY_MONSTER_DIE_131006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131006", action = "action_EVENT_ANY_MONSTER_DIE_131006" },
	{ config_id = 1131009, name = "ANY_MONSTER_DIE_131009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131009", action = "action_EVENT_ANY_MONSTER_DIE_131009" }
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
		monsters = { 131001, 131002, 131003, 131004 },
		gadgets = { 131005, 131008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131010, 131011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131006(context, evt)
	-- 将configid为 131005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131009(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004131, 2)
	
	return 0
end