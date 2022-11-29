-- 基础信息
local base_info = {
	group_id = 144002030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 21010901, pos = { x = 433.207, y = 166.420, z = -747.776 }, rot = { x = 0.000, y = 85.333, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 30004, monster_id = 21010901, pos = { x = 437.100, y = 165.738, z = -735.870 }, rot = { x = 0.000, y = 85.333, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 30005, monster_id = 21030101, pos = { x = 434.003, y = 166.463, z = -741.489 }, rot = { x = 0.000, y = 175.261, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30002, gadget_id = 70211012, pos = { x = 434.022, y = 166.485, z = -743.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030003, name = "ANY_MONSTER_DIE_30003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30003", action = "action_EVENT_ANY_MONSTER_DIE_30003" }
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
		monsters = { 30001, 30004, 30005 },
		gadgets = { 30002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 将configid为 30002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30002, GadgetState.Default) then
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