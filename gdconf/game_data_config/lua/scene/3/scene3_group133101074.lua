-- 基础信息
local base_info = {
	group_id = 133101074
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 74001, monster_id = 25010601, pos = { x = 1116.039, y = 283.190, z = 1369.200 }, rot = { x = 0.000, y = 351.996, z = 0.000 }, level = 26, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 6 },
	{ config_id = 74004, monster_id = 25010301, pos = { x = 1116.980, y = 283.331, z = 1375.025 }, rot = { x = 0.000, y = 215.375, z = 0.000 }, level = 26, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 },
	{ config_id = 74005, monster_id = 25030301, pos = { x = 1112.986, y = 282.577, z = 1374.900 }, rot = { x = 0.000, y = 141.907, z = 0.000 }, level = 26, drop_tag = "盗宝团", pose_id = 9005, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 74002, gadget_id = 70211012, pos = { x = 1123.332, y = 283.758, z = 1371.373 }, rot = { x = 355.417, y = 329.426, z = 3.121 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 74006, gadget_id = 70210101, pos = { x = 1120.209, y = 284.279, z = 1375.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜遗物璃月", area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074003, name = "ANY_MONSTER_DIE_74003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74003", action = "action_EVENT_ANY_MONSTER_DIE_74003" }
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
		monsters = { 74001, 74004, 74005 },
		gadgets = { 74002, 74006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_74003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74003(context, evt)
	-- 将configid为 74002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end