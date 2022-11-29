-- 基础信息
local base_info = {
	group_id = 133309115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115002, monster_id = 21020501, pos = { x = -2728.972, y = -29.829, z = 5300.667 }, rot = { x = 0.000, y = 36.353, z = 0.000 }, level = 32, drop_tag = "丘丘岩盔王", isElite = true, pose_id = 401, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115003, gadget_id = 70211002, pos = { x = -2732.383, y = -31.166, z = 5303.276 }, rot = { x = 355.441, y = 34.596, z = 18.929 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 115004, gadget_id = 70210101, pos = { x = -2711.088, y = -31.926, z = 5315.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 115005, gadget_id = 70210101, pos = { x = -2709.236, y = -31.789, z = 5313.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 115006, gadget_id = 70210101, pos = { x = -2744.611, y = -36.450, z = 5311.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1115001, name = "ANY_MONSTER_DIE_115001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115001", action = "action_EVENT_ANY_MONSTER_DIE_115001" }
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
		monsters = { 115002 },
		gadgets = { 115003, 115004, 115005, 115006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_115001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_115001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_115001(context, evt)
	-- 将configid为 115003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end