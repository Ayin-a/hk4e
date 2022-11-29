-- 基础信息
local base_info = {
	group_id = 133103288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288001, monster_id = 25010301, pos = { x = 701.644, y = 185.768, z = 1082.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 },
	{ config_id = 288004, monster_id = 25020201, pos = { x = 707.141, y = 185.400, z = 1083.297 }, rot = { x = 0.000, y = 286.037, z = 0.000 }, level = 24, drop_tag = "盗宝团", pose_id = 2, area_id = 6 },
	{ config_id = 288005, monster_id = 25010201, pos = { x = 703.471, y = 184.414, z = 1087.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 288002, gadget_id = 70211012, pos = { x = 707.606, y = 185.643, z = 1081.329 }, rot = { x = 0.000, y = 305.938, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288003, name = "ANY_MONSTER_DIE_288003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288003", action = "action_EVENT_ANY_MONSTER_DIE_288003" }
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
		monsters = { 288001, 288004, 288005 },
		gadgets = { 288002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_288003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 将configid为 288002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end