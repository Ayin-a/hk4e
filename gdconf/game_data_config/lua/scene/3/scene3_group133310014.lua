-- 基础信息
local base_info = {
	group_id = 133310014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 26120101, pos = { x = -2551.839, y = 256.330, z = 4169.916 }, rot = { x = 0.000, y = 343.772, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 102, area_id = 26 },
	{ config_id = 14003, monster_id = 26090201, pos = { x = -2554.286, y = 254.663, z = 4186.175 }, rot = { x = 0.000, y = 23.061, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 14005, monster_id = 26090201, pos = { x = -2547.183, y = 253.905, z = 4192.387 }, rot = { x = 0.000, y = 214.193, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 14006, monster_id = 26090201, pos = { x = -2552.704, y = 253.194, z = 4177.697 }, rot = { x = 0.000, y = 146.344, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 105, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14002, gadget_id = 70211002, pos = { x = -2550.388, y = 253.922, z = 4188.216 }, rot = { x = 11.195, y = 149.229, z = 6.635 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014004, name = "ANY_MONSTER_DIE_14004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14004", action = "action_EVENT_ANY_MONSTER_DIE_14004" }
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
		monsters = { 14001, 14003, 14005, 14006 },
		gadgets = { 14002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14004(context, evt)
	-- 将configid为 14002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end