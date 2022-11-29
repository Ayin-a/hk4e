-- 基础信息
local base_info = {
	group_id = 133106627
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 627001, monster_id = 25010301, pos = { x = -667.562, y = 117.330, z = 1813.964 }, rot = { x = 0.000, y = 270.598, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 2, area_id = 19 },
	{ config_id = 627004, monster_id = 25070101, pos = { x = -660.118, y = 117.290, z = 1809.127 }, rot = { x = 0.000, y = 132.700, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9009, area_id = 19 },
	{ config_id = 627005, monster_id = 25030301, pos = { x = -662.072, y = 117.334, z = 1818.198 }, rot = { x = 0.000, y = 324.059, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 627006, monster_id = 25020201, pos = { x = -653.568, y = 117.328, z = 1817.533 }, rot = { x = 0.000, y = 31.408, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 627002, gadget_id = 70211002, pos = { x = -659.433, y = 117.265, z = 1808.118 }, rot = { x = 0.358, y = 322.395, z = 359.475 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1627003, name = "ANY_MONSTER_DIE_627003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_627003", action = "action_EVENT_ANY_MONSTER_DIE_627003" }
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
		monsters = { 627001, 627004, 627005, 627006 },
		gadgets = { 627002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_627003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_627003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_627003(context, evt)
	-- 将configid为 627002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 627002, GadgetState.Default) then
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