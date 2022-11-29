-- 基础信息
local base_info = {
	group_id = 199001201
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 201001, monster_id = 21020201, pos = { x = 363.817, y = 146.412, z = 426.641 }, rot = { x = 0.000, y = 194.489, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 402 },
	{ config_id = 201002, monster_id = 20011301, pos = { x = 366.235, y = 146.412, z = 423.474 }, rot = { x = 0.000, y = 194.489, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 201003, monster_id = 20011301, pos = { x = 362.083, y = 146.412, z = 424.221 }, rot = { x = 0.000, y = 194.489, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 201004, gadget_id = 70211012, pos = { x = 363.340, y = 146.489, z = 420.174 }, rot = { x = 0.000, y = 16.800, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201005, name = "ANY_MONSTER_DIE_201005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_201005", action = "action_EVENT_ANY_MONSTER_DIE_201005" }
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
		monsters = { 201001, 201002, 201003 },
		gadgets = { 201004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_201005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_201005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_201005(context, evt)
	-- 将configid为 201004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201004, GadgetState.Default) then
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