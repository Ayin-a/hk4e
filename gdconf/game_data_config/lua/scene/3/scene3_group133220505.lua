-- 基础信息
local base_info = {
	group_id = 133220505
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 505001, monster_id = 21020801, pos = { x = -2870.656, y = 200.000, z = -4280.534 }, rot = { x = 0.000, y = 60.178, z = 0.000 }, level = 27, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 11 },
	{ config_id = 505004, monster_id = 21010401, pos = { x = -2863.255, y = 200.155, z = -4276.143 }, rot = { x = 0.000, y = 227.728, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 505005, monster_id = 21010401, pos = { x = -2868.877, y = 200.094, z = -4276.196 }, rot = { x = 0.000, y = 114.474, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 505006, monster_id = 21010201, pos = { x = -2858.679, y = 200.064, z = -4267.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 505002, gadget_id = 70211032, pos = { x = -2866.306, y = 200.151, z = -4280.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 505007, gadget_id = 70310009, pos = { x = -2865.602, y = 200.102, z = -4277.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 505008, gadget_id = 70220014, pos = { x = -2864.979, y = 200.054, z = -4285.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 505009, gadget_id = 70220014, pos = { x = -2863.548, y = 199.587, z = -4285.362 }, rot = { x = 47.104, y = 35.989, z = 17.443 }, level = 27, area_id = 11 },
	{ config_id = 505010, gadget_id = 70220014, pos = { x = -2859.595, y = 200.000, z = -4275.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 505011, gadget_id = 70220014, pos = { x = -2876.849, y = 200.017, z = -4275.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1505003, name = "ANY_MONSTER_DIE_505003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_505003", action = "action_EVENT_ANY_MONSTER_DIE_505003" }
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
		monsters = { 505001, 505004, 505005, 505006 },
		gadgets = { 505002, 505007, 505008, 505009, 505010, 505011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_505003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_505003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_505003(context, evt)
	-- 将configid为 505002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end