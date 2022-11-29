-- 基础信息
local base_info = {
	group_id = 133301399
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 399001, monster_id = 25310101, pos = { x = -661.686, y = 229.829, z = 3169.858 }, rot = { x = 0.000, y = 268.220, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, affix = { 1011, 1008 }, pose_id = 9005, area_id = 22 },
	{ config_id = 399002, monster_id = 25310301, pos = { x = -661.369, y = 229.933, z = 3171.337 }, rot = { x = 0.000, y = 314.696, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9002, area_id = 22 },
	{ config_id = 399014, monster_id = 28060603, pos = { x = -693.815, y = 231.920, z = 3172.730 }, rot = { x = 0.000, y = 81.037, z = 0.000 }, level = 33, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 399003, gadget_id = 70710352, pos = { x = -659.708, y = 229.946, z = 3172.522 }, rot = { x = 0.000, y = 358.653, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 399004, gadget_id = 70310006, pos = { x = -661.356, y = 230.137, z = 3173.453 }, rot = { x = 0.000, y = 5.665, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 399005, gadget_id = 70210101, pos = { x = -640.501, y = 224.270, z = 3170.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 399006, gadget_id = 70217020, pos = { x = -654.658, y = 229.990, z = 3175.518 }, rot = { x = 0.000, y = 71.785, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 399007, gadget_id = 70210101, pos = { x = -659.283, y = 230.318, z = 3169.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 22 },
	{ config_id = 399008, gadget_id = 70210101, pos = { x = -667.866, y = 230.934, z = 3176.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 399009, gadget_id = 70210101, pos = { x = -661.389, y = 230.183, z = 3166.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 399010, gadget_id = 70210101, pos = { x = -666.201, y = 229.887, z = 3166.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 399011, gadget_id = 70210101, pos = { x = -659.947, y = 230.486, z = 3172.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 399012, gadget_id = 70211002, pos = { x = -665.232, y = 230.226, z = 3174.558 }, rot = { x = 0.000, y = 223.108, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 399015, gadget_id = 70210101, pos = { x = -695.016, y = 233.303, z = 3178.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 22 },
	{ config_id = 399016, gadget_id = 70210101, pos = { x = -696.405, y = 232.589, z = 3174.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1399013, name = "ANY_MONSTER_DIE_399013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_399013", action = "action_EVENT_ANY_MONSTER_DIE_399013", trigger_count = 0 }
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
		monsters = { 399001, 399002, 399014 },
		gadgets = { 399003, 399004, 399005, 399006, 399007, 399008, 399009, 399010, 399011, 399012, 399015, 399016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_399013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_399013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301399) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_399013(context, evt)
	-- 将configid为 399012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 399012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end