-- 基础信息
local base_info = {
	group_id = 133104075
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196, monster_id = 21010501, pos = { x = 489.266, y = 215.136, z = 464.583 }, rot = { x = 355.876, y = 233.494, z = 1.938 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 197, monster_id = 21010501, pos = { x = 488.013, y = 215.279, z = 461.969 }, rot = { x = 358.683, y = 333.321, z = 359.055 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 200, monster_id = 21030301, pos = { x = 486.583, y = 215.187, z = 464.287 }, rot = { x = 0.192, y = 126.299, z = 1.251 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 75006, monster_id = 21010301, pos = { x = 498.814, y = 214.451, z = 468.357 }, rot = { x = 0.898, y = 158.286, z = 4.510 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 75007, monster_id = 21010301, pos = { x = 500.105, y = 213.895, z = 454.994 }, rot = { x = 11.002, y = 38.336, z = 351.895 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75001, gadget_id = 70310006, pos = { x = 487.925, y = 215.197, z = 463.645 }, rot = { x = 358.335, y = 2.633, z = 357.238 }, level = 19, area_id = 9 },
	{ config_id = 75002, gadget_id = 70220013, pos = { x = 490.137, y = 215.255, z = 453.528 }, rot = { x = 0.144, y = 2.303, z = 356.426 }, level = 19, area_id = 9 },
	{ config_id = 75003, gadget_id = 70220014, pos = { x = 491.250, y = 214.862, z = 462.135 }, rot = { x = 6.108, y = 319.141, z = 2.963 }, level = 19, area_id = 9 },
	{ config_id = 75004, gadget_id = 70220014, pos = { x = 490.472, y = 215.051, z = 467.514 }, rot = { x = 3.427, y = 318.518, z = 355.786 }, level = 19, area_id = 9 },
	{ config_id = 75005, gadget_id = 70211112, pos = { x = 485.133, y = 215.311, z = 461.735 }, rot = { x = 358.668, y = 68.512, z = 1.494 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075008, name = "ANY_MONSTER_DIE_75008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75008", action = "action_EVENT_ANY_MONSTER_DIE_75008" }
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
		monsters = { 196, 197, 200, 75006, 75007 },
		gadgets = { 75001, 75002, 75003, 75004, 75005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_75008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133104075) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75008(context, evt)
	-- 将configid为 75005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end