-- 基础信息
local base_info = {
	group_id = 155008044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 24020101, pos = { x = -120.700, y = 163.968, z = 221.081 }, rot = { x = 0.000, y = 296.417, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 },
	{ config_id = 44004, monster_id = 24020101, pos = { x = -123.840, y = 163.960, z = 219.963 }, rot = { x = 0.000, y = 276.176, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211002, pos = { x = -120.511, y = 164.995, z = 217.542 }, rot = { x = 19.754, y = 337.131, z = 349.093 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
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
		monsters = { 44001, 44004 },
		gadgets = { 44002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
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