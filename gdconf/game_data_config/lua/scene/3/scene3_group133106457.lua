-- 基础信息
local base_info = {
	group_id = 133106457
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457001, monster_id = 21010101, pos = { x = -979.522, y = 231.685, z = 1881.828 }, rot = { x = 0.000, y = 301.905, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 19 },
	{ config_id = 457004, monster_id = 21020301, pos = { x = -974.671, y = 230.982, z = 1876.531 }, rot = { x = 0.000, y = 315.573, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, area_id = 19 },
	{ config_id = 457005, monster_id = 21010101, pos = { x = -977.573, y = 231.302, z = 1887.656 }, rot = { x = 0.000, y = 252.601, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 19 },
	{ config_id = 457006, monster_id = 21010101, pos = { x = -980.144, y = 231.734, z = 1886.369 }, rot = { x = 0.000, y = 208.034, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 457002, gadget_id = 70211012, pos = { x = -974.528, y = 232.405, z = 1887.726 }, rot = { x = 0.000, y = 317.262, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1457003, name = "ANY_MONSTER_DIE_457003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_457003", action = "action_EVENT_ANY_MONSTER_DIE_457003" }
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
		monsters = { 457001, 457004, 457005, 457006 },
		gadgets = { 457002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_457003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_457003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_457003(context, evt)
	-- 将configid为 457002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 457002, GadgetState.Default) then
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