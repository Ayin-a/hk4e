-- 基础信息
local base_info = {
	group_id = 111101246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 21010201, pos = { x = 2353.197, y = 248.033, z = -1375.309 }, rot = { x = 0.000, y = 107.334, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 246002, monster_id = 21010701, pos = { x = 2353.042, y = 248.042, z = -1382.802 }, rot = { x = 0.000, y = 346.703, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 246003, monster_id = 21020101, pos = { x = 2346.778, y = 248.084, z = -1375.346 }, rot = { x = 0.000, y = 92.479, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 246010, monster_id = 21010501, pos = { x = 2360.260, y = 253.982, z = -1368.773 }, rot = { x = 0.000, y = 234.567, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 246014, monster_id = 21010201, pos = { x = 2354.693, y = 248.263, z = -1380.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246004, gadget_id = 70220005, pos = { x = 2357.338, y = 248.915, z = -1380.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 246005, gadget_id = 70210101, pos = { x = 2354.499, y = 248.786, z = -1379.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬蒙德", isOneoff = true, persistent = true },
	{ config_id = 246006, gadget_id = 70210101, pos = { x = 2345.795, y = 249.723, z = -1372.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬蒙德", isOneoff = true, persistent = true },
	{ config_id = 246007, gadget_id = 70220013, pos = { x = 2345.525, y = 248.103, z = -1373.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 246008, gadget_id = 70220013, pos = { x = 2345.143, y = 248.216, z = -1375.665 }, rot = { x = 0.000, y = 290.769, z = 0.000 }, level = 1 },
	{ config_id = 246009, gadget_id = 70900025, pos = { x = 2359.990, y = 250.466, z = -1368.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 246011, gadget_id = 70220005, pos = { x = 2345.358, y = 247.237, z = -1368.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 246012, gadget_id = 70211002, pos = { x = 2346.255, y = 247.963, z = -1378.076 }, rot = { x = 0.000, y = 62.768, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246013, name = "ANY_MONSTER_DIE_246013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246013", action = "action_EVENT_ANY_MONSTER_DIE_246013", trigger_count = 0 }
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
		monsters = { 246001, 246002, 246003, 246010, 246014 },
		gadgets = { 246004, 246005, 246006, 246007, 246008, 246009, 246011, 246012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101246) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246013(context, evt)
	-- 将configid为 246012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end