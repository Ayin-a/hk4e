-- 基础信息
local base_info = {
	group_id = 199001224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 20011301, pos = { x = 136.347, y = 124.347, z = 292.095 }, rot = { x = 0.000, y = 145.272, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 224004, monster_id = 20011301, pos = { x = 135.846, y = 125.041, z = 285.151 }, rot = { x = 0.000, y = 22.030, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 224005, monster_id = 20011301, pos = { x = 142.126, y = 125.350, z = 287.951 }, rot = { x = 0.000, y = 270.203, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224002, gadget_id = 70211002, pos = { x = 138.141, y = 125.128, z = 288.472 }, rot = { x = 0.000, y = 339.853, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224003, name = "ANY_MONSTER_DIE_224003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224003", action = "action_EVENT_ANY_MONSTER_DIE_224003" }
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
		monsters = { 224001, 224004, 224005 },
		gadgets = { 224002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224003(context, evt)
	-- 将configid为 224002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224002, GadgetState.Default) then
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