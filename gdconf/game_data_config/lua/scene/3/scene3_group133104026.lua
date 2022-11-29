-- 基础信息
local base_info = {
	group_id = 133104026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82, monster_id = 21010601, pos = { x = 603.603, y = 197.925, z = 230.865 }, rot = { x = 0.000, y = 142.918, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 84, monster_id = 21030301, pos = { x = 583.631, y = 198.156, z = 228.870 }, rot = { x = 0.000, y = 79.827, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 9 },
	{ config_id = 85, monster_id = 21010501, pos = { x = 592.311, y = 198.152, z = 229.209 }, rot = { x = 0.000, y = 252.065, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57, gadget_id = 70211012, pos = { x = 588.439, y = 197.918, z = 234.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 26001, gadget_id = 70310006, pos = { x = 589.260, y = 198.184, z = 228.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 26002, gadget_id = 70220014, pos = { x = 593.876, y = 198.104, z = 225.300 }, rot = { x = 0.000, y = 10.788, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 26003, gadget_id = 70220014, pos = { x = 582.289, y = 198.137, z = 226.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 26004, gadget_id = 70220014, pos = { x = 594.206, y = 198.100, z = 224.279 }, rot = { x = 0.000, y = 10.788, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 26007, gadget_id = 70220013, pos = { x = 589.149, y = 198.112, z = 243.066 }, rot = { x = 359.133, y = 312.830, z = 359.863 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000040, name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" }
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
		monsters = { 82, 84, 85 },
		gadgets = { 57, 26001, 26002, 26003, 26004, 26007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 将configid为 57 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end