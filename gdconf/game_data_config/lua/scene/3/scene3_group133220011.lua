-- 基础信息
local base_info = {
	group_id = 133220011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 25010201, pos = { x = -2976.625, y = 200.478, z = -4114.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 11 },
	{ config_id = 11004, monster_id = 25080101, pos = { x = -2969.081, y = 202.317, z = -4121.350 }, rot = { x = 0.303, y = 292.855, z = 1.622 }, level = 27, drop_tag = "浪人武士", pose_id = 1003, area_id = 11 },
	{ config_id = 11005, monster_id = 25030301, pos = { x = -2971.261, y = 201.613, z = -4122.024 }, rot = { x = 0.000, y = 55.896, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 11 },
	{ config_id = 11006, monster_id = 25020201, pos = { x = -2967.991, y = 200.974, z = -4114.820 }, rot = { x = 0.000, y = 347.822, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11002, gadget_id = 70211002, pos = { x = -2966.786, y = 201.402, z = -4118.880 }, rot = { x = 0.000, y = 331.411, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011003, name = "ANY_MONSTER_DIE_11003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11003", action = "action_EVENT_ANY_MONSTER_DIE_11003" }
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
		monsters = { 11001, 11004, 11005, 11006 },
		gadgets = { 11002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11003(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.Default) then
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