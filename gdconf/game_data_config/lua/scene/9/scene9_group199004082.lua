-- 基础信息
local base_info = {
	group_id = 199004082
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 20010401, pos = { x = -348.406, y = 190.534, z = -636.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 82004, monster_id = 20010601, pos = { x = -344.338, y = 190.536, z = -630.454 }, rot = { x = 0.000, y = 205.348, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 82005, monster_id = 20010301, pos = { x = -349.100, y = 190.609, z = -642.608 }, rot = { x = 0.000, y = 26.622, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 82006, monster_id = 20010301, pos = { x = -354.440, y = 190.437, z = -640.774 }, rot = { x = 0.000, y = 36.078, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 82007, monster_id = 20010701, pos = { x = -350.070, y = 190.543, z = -628.665 }, rot = { x = 0.000, y = 153.661, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82002, gadget_id = 70211002, pos = { x = -346.380, y = 190.534, z = -622.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082003, name = "ANY_MONSTER_DIE_82003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82003", action = "action_EVENT_ANY_MONSTER_DIE_82003" }
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
		monsters = { 82001, 82004, 82005, 82006, 82007 },
		gadgets = { 82002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 将configid为 82002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82002, GadgetState.Default) then
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