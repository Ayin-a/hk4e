-- 基础信息
local base_info = {
	group_id = 133304328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328001, monster_id = 25210201, pos = { x = -1644.252, y = 216.990, z = 2987.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9006, area_id = 21 },
	{ config_id = 328003, monster_id = 25210101, pos = { x = -1634.500, y = 216.882, z = 2981.100 }, rot = { x = 0.000, y = 159.193, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9004, area_id = 21 },
	{ config_id = 328004, monster_id = 25210301, pos = { x = -1633.570, y = 216.820, z = 2980.099 }, rot = { x = 0.000, y = 277.872, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9002, area_id = 21 },
	{ config_id = 328005, monster_id = 25210503, pos = { x = -1619.647, y = 215.982, z = 2963.890 }, rot = { x = 0.000, y = 340.585, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 328007, monster_id = 25210302, pos = { x = -1629.686, y = 216.313, z = 2972.545 }, rot = { x = 0.000, y = 339.943, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 328008, monster_id = 25210302, pos = { x = -1628.817, y = 216.277, z = 2973.994 }, rot = { x = 0.000, y = 345.461, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 328009, monster_id = 25210302, pos = { x = -1627.037, y = 216.302, z = 2974.127 }, rot = { x = 0.000, y = 339.461, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 328010, monster_id = 25210202, pos = { x = -1627.218, y = 216.099, z = 2971.548 }, rot = { x = 0.000, y = 323.828, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328002, gadget_id = 70211151, pos = { x = -1633.929, y = 216.818, z = 2967.535 }, rot = { x = 9.212, y = 50.283, z = 355.835 }, level = 26, chest_drop_id = 21910047, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 328006, gadget_id = 70210101, pos = { x = -1644.107, y = 217.703, z = 2989.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328011, name = "ANY_MONSTER_DIE_328011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328011", action = "action_EVENT_ANY_MONSTER_DIE_328011" },
	{ config_id = 1328012, name = "ANY_MONSTER_DIE_328012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328012", action = "action_EVENT_ANY_MONSTER_DIE_328012", trigger_count = 0 }
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
		monsters = { 328001, 328003, 328004, 328005 },
		gadgets = { 328002, 328006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 328007, 328008, 328009, 328010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304328, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328012(context, evt)
	-- 将configid为 328002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end