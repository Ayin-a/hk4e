-- 基础信息
local base_info = {
	group_id = 133102763
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 763001, monster_id = 21010401, pos = { x = 1627.502, y = 295.483, z = 373.339 }, rot = { x = 0.000, y = 349.959, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 763004, monster_id = 21010401, pos = { x = 1623.859, y = 297.080, z = 383.732 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 763005, monster_id = 21010401, pos = { x = 1616.085, y = 294.141, z = 376.053 }, rot = { x = 0.000, y = 106.941, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 763006, monster_id = 21010701, pos = { x = 1623.552, y = 293.178, z = 376.123 }, rot = { x = 0.000, y = 68.501, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 763002, gadget_id = 70211012, pos = { x = 1634.139, y = 297.820, z = 378.624 }, rot = { x = 10.223, y = 275.663, z = 15.581 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 763007, gadget_id = 70310006, pos = { x = 1621.002, y = 294.262, z = 380.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1763003, name = "ANY_MONSTER_DIE_763003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_763003", action = "action_EVENT_ANY_MONSTER_DIE_763003" }
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
		monsters = { 763001, 763004, 763005, 763006 },
		gadgets = { 763002, 763007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_763003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_763003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_763003(context, evt)
	-- 将configid为 763002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 763002, GadgetState.Default) then
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