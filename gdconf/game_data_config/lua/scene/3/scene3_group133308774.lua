-- 基础信息
local base_info = {
	group_id = 133308774
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 774001, monster_id = 25410201, pos = { x = -776.689, y = 63.308, z = 4577.804 }, rot = { x = 0.000, y = 307.331, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 774004, monster_id = 25210501, pos = { x = -797.886, y = 63.930, z = 4590.232 }, rot = { x = 0.000, y = 103.653, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9504, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 774002, gadget_id = 70211012, pos = { x = -778.998, y = 63.298, z = 4581.363 }, rot = { x = 359.352, y = 289.615, z = 0.031 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1774003, name = "ANY_MONSTER_DIE_774003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_774003", action = "action_EVENT_ANY_MONSTER_DIE_774003" }
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
		monsters = { 774001, 774004 },
		gadgets = { 774002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_774003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_774003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_774003(context, evt)
	-- 将configid为 774002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 774002, GadgetState.Default) then
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