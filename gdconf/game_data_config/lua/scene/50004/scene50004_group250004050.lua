-- 基础信息
local base_info = {
	group_id = 250004050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31, monster_id = 21010901, pos = { x = 1118.188, y = 204.575, z = 243.934 }, rot = { x = 0.000, y = 119.247, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 32, monster_id = 20011001, pos = { x = 1129.803, y = 200.356, z = 239.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 8, disableWander = true },
	{ config_id = 33, monster_id = 20011001, pos = { x = 1130.540, y = 200.356, z = 244.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 8, disableWander = true },
	{ config_id = 34, monster_id = 20011001, pos = { x = 1132.958, y = 200.356, z = 241.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 8, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 445, gadget_id = 70900221, pos = { x = 1125.153, y = 200.356, z = 236.184 }, rot = { x = 0.000, y = 12.049, z = 0.000 }, level = 1 },
	{ config_id = 446, gadget_id = 70900221, pos = { x = 1128.086, y = 200.356, z = 249.939 }, rot = { x = 0.000, y = 281.460, z = 0.000 }, level = 1 },
	{ config_id = 447, gadget_id = 70900221, pos = { x = 1109.919, y = 200.356, z = 238.114 }, rot = { x = 0.000, y = 99.200, z = 0.000 }, level = 1 },
	{ config_id = 448, gadget_id = 70900221, pos = { x = 1111.871, y = 200.087, z = 252.894 }, rot = { x = 0.000, y = 188.274, z = 0.000 }, level = 1 },
	{ config_id = 453, gadget_id = 70900221, pos = { x = 1109.921, y = 201.356, z = 238.107 }, rot = { x = 0.000, y = 7.906, z = 0.000 }, level = 1 },
	{ config_id = 454, gadget_id = 70900221, pos = { x = 1111.861, y = 201.087, z = 252.917 }, rot = { x = 0.000, y = 98.955, z = 0.000 }, level = 1 },
	{ config_id = 455, gadget_id = 70900221, pos = { x = 1128.088, y = 201.370, z = 249.921 }, rot = { x = 0.000, y = 193.229, z = 0.000 }, level = 1 },
	{ config_id = 456, gadget_id = 70900221, pos = { x = 1125.182, y = 201.353, z = 236.191 }, rot = { x = 0.000, y = 283.196, z = 0.000 }, level = 1 },
	{ config_id = 457, gadget_id = 70211001, pos = { x = 1117.929, y = 204.575, z = 246.545 }, rot = { x = 0.000, y = 141.363, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000089, name = "ANY_MONSTER_DIE_89", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_89", action = "action_EVENT_ANY_MONSTER_DIE_89" }
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
	rand_suite = true
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
		monsters = { 31, 32, 33, 34 },
		gadgets = { 445, 446, 447, 448, 453, 454, 455, 456, 457 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_89" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_89(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004050) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_89(context, evt)
	-- 将configid为 457 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end