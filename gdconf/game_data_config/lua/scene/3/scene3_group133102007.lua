-- 基础信息
local base_info = {
	group_id = 133102007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2, monster_id = 21020101, pos = { x = 1360.792, y = 207.269, z = 506.003 }, rot = { x = 0.000, y = 0.517, z = 0.000 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = 1362.938, y = 207.188, z = 508.996 }, rot = { x = 0.000, y = 253.039, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 7005, monster_id = 21010201, pos = { x = 1359.422, y = 207.767, z = 510.277 }, rot = { x = 0.000, y = 120.118, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57, gadget_id = 70211012, pos = { x = 1354.528, y = 208.229, z = 509.925 }, rot = { x = 2.033, y = 102.466, z = 354.964 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 7001, gadget_id = 70220013, pos = { x = 1354.212, y = 208.505, z = 512.327 }, rot = { x = 350.553, y = 321.616, z = 5.182 }, level = 1, area_id = 5 },
	{ config_id = 7002, gadget_id = 70220013, pos = { x = 1356.559, y = 208.404, z = 512.241 }, rot = { x = 353.752, y = 22.111, z = 351.760 }, level = 1, area_id = 5 },
	{ config_id = 7003, gadget_id = 70310006, pos = { x = 1360.805, y = 207.360, z = 508.429 }, rot = { x = 0.000, y = 359.174, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000412, name = "ANY_MONSTER_DIE_412", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412", action = "action_EVENT_ANY_MONSTER_DIE_412" }
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
		monsters = { 2, 7004, 7005 },
		gadgets = { 57, 7001, 7002, 7003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_412" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102007) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 将configid为 57 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end