-- 基础信息
local base_info = {
	group_id = 166001492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 21010901, pos = { x = 705.632, y = 398.973, z = 744.900 }, rot = { x = 0.000, y = 219.268, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 300 },
	{ config_id = 492004, monster_id = 21011201, pos = { x = 699.853, y = 397.281, z = 737.240 }, rot = { x = 0.000, y = 180.459, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 300 },
	{ config_id = 492005, monster_id = 21011201, pos = { x = 716.273, y = 404.325, z = 733.139 }, rot = { x = 0.000, y = 300.159, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 300 },
	{ config_id = 492006, monster_id = 21010101, pos = { x = 698.307, y = 397.197, z = 741.663 }, rot = { x = 0.000, y = 312.773, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 492002, gadget_id = 70211012, pos = { x = 698.533, y = 397.064, z = 738.212 }, rot = { x = 352.252, y = 117.957, z = 356.161 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1492003, name = "ANY_MONSTER_DIE_492003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492003", action = "action_EVENT_ANY_MONSTER_DIE_492003" }
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
		monsters = { 492001, 492004, 492005, 492006 },
		gadgets = { 492002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492003(context, evt)
	-- 将configid为 492002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end