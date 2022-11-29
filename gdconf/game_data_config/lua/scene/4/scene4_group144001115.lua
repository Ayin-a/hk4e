-- 基础信息
local base_info = {
	group_id = 144001115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 21010301, pos = { x = 748.273, y = 202.321, z = 210.432 }, rot = { x = 0.000, y = 224.856, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 115002, monster_id = 21010301, pos = { x = 742.256, y = 202.153, z = 207.534 }, rot = { x = 0.000, y = 132.269, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 115003, monster_id = 21010901, pos = { x = 749.203, y = 202.192, z = 204.434 }, rot = { x = 0.000, y = 291.168, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 115004, monster_id = 21010901, pos = { x = 741.179, y = 201.961, z = 203.981 }, rot = { x = 0.000, y = 61.816, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 115005, gadget_id = 70211002, pos = { x = 745.753, y = 202.258, z = 203.273 }, rot = { x = 352.395, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1115006, name = "ANY_MONSTER_DIE_115006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_115006", action = "action_EVENT_ANY_MONSTER_DIE_115006", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 115005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_115006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 115001, 115002, 115003, 115004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_115006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144001115) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_115006(context, evt)
	-- 将configid为 115005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end