-- 基础信息
local base_info = {
	group_id = 133307164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 23010301, pos = { x = -1276.216, y = 15.317, z = 5763.979 }, rot = { x = 0.000, y = 306.764, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 32 },
	{ config_id = 164004, monster_id = 23010601, pos = { x = -1279.953, y = 15.155, z = 5754.808 }, rot = { x = 0.000, y = 325.113, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70211002, pos = { x = -1274.713, y = 15.151, z = 5756.667 }, rot = { x = 0.714, y = 293.573, z = 0.062 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "ANY_MONSTER_DIE_164003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164003", action = "action_EVENT_ANY_MONSTER_DIE_164003" }
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
		monsters = { 164001, 164004 },
		gadgets = { 164002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end