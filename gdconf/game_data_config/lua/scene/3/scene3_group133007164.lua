-- 基础信息
local base_info = {
	group_id = 133007164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 21030101, pos = { x = 2208.285, y = 214.420, z = -42.444 }, rot = { x = 0.000, y = 223.462, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 164004, monster_id = 21010901, pos = { x = 2213.403, y = 215.085, z = -45.081 }, rot = { x = 0.000, y = 200.052, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 164005, monster_id = 21010201, pos = { x = 2215.717, y = 215.489, z = -42.508 }, rot = { x = 0.000, y = 242.184, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70211012, pos = { x = 2212.399, y = 215.324, z = -38.700 }, rot = { x = 0.000, y = 176.046, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 164006, gadget_id = 70310004, pos = { x = 2212.250, y = 215.173, z = -40.891 }, rot = { x = 0.000, y = 332.488, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
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
		monsters = { 164001, 164004, 164005 },
		gadgets = { 164002, 164006 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end