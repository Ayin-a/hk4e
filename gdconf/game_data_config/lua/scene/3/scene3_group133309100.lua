-- 基础信息
local base_info = {
	group_id = 133309100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100001, monster_id = 23010501, pos = { x = -2110.695, y = -64.581, z = 5867.827 }, rot = { x = 0.000, y = 354.723, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 27 },
	{ config_id = 100004, monster_id = 23010401, pos = { x = -2125.079, y = -61.806, z = 5884.421 }, rot = { x = 0.000, y = 295.121, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 100006, monster_id = 25210403, pos = { x = -2109.679, y = -64.889, z = 5871.473 }, rot = { x = 0.000, y = 196.114, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100002, gadget_id = 70211151, pos = { x = -2127.842, y = -60.797, z = 5884.951 }, rot = { x = 14.876, y = 118.567, z = 5.492 }, level = 26, chest_drop_id = 21910105, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 100005, gadget_id = 70220048, pos = { x = -2104.248, y = -63.608, z = 5872.261 }, rot = { x = 6.089, y = 349.584, z = 13.131 }, level = 32, area_id = 27 },
	{ config_id = 100007, gadget_id = 70220048, pos = { x = -2128.700, y = -60.287, z = 5887.984 }, rot = { x = 355.503, y = 0.425, z = 346.009 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "ANY_MONSTER_DIE_100003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100003", action = "action_EVENT_ANY_MONSTER_DIE_100003" }
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
		monsters = { 100001, 100004, 100006 },
		gadgets = { 100002, 100005, 100007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 将configid为 100002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100002, GadgetState.Default) then
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