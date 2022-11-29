-- 基础信息
local base_info = {
	group_id = 133007144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 21030101, pos = { x = 2670.668, y = 212.290, z = 285.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 144004, monster_id = 21010401, pos = { x = 2670.199, y = 212.218, z = 289.745 }, rot = { x = 0.000, y = 146.468, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 144005, monster_id = 21011001, pos = { x = 2673.643, y = 212.522, z = 287.756 }, rot = { x = 0.000, y = 279.777, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144002, gadget_id = 70211012, pos = { x = 2667.801, y = 212.035, z = 285.099 }, rot = { x = 0.000, y = 51.526, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 144006, gadget_id = 70310004, pos = { x = 2671.556, y = 212.385, z = 287.785 }, rot = { x = 0.000, y = 109.884, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 144007, gadget_id = 70220013, pos = { x = 2665.379, y = 211.934, z = 288.592 }, rot = { x = 0.000, y = 309.246, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 144008, gadget_id = 70220013, pos = { x = 2664.009, y = 211.841, z = 286.965 }, rot = { x = 0.000, y = 46.930, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 144009, gadget_id = 70220014, pos = { x = 2667.896, y = 211.878, z = 281.867 }, rot = { x = 0.000, y = 0.988, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 144010, gadget_id = 70220014, pos = { x = 2672.662, y = 212.211, z = 282.578 }, rot = { x = 0.000, y = 94.476, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144003, name = "ANY_MONSTER_DIE_144003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144003", action = "action_EVENT_ANY_MONSTER_DIE_144003" }
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
		monsters = { 144001, 144004, 144005 },
		gadgets = { 144002, 144006, 144007, 144008, 144009, 144010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144003(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
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