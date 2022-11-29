-- 基础信息
local base_info = {
	group_id = 133106526
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 526001, monster_id = 21010601, pos = { x = -622.374, y = 190.582, z = 1909.739 }, rot = { x = 0.000, y = 44.040, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 19 },
	{ config_id = 526004, monster_id = 21030401, pos = { x = -630.938, y = 188.237, z = 1905.720 }, rot = { x = 0.000, y = 244.637, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 19 },
	{ config_id = 526006, monster_id = 21010601, pos = { x = -627.107, y = 188.599, z = 1908.187 }, rot = { x = 0.000, y = 163.957, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 19 },
	{ config_id = 526007, monster_id = 21011201, pos = { x = -630.241, y = 188.329, z = 1911.012 }, rot = { x = 0.000, y = 329.873, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 526002, gadget_id = 70211002, pos = { x = -623.757, y = 189.841, z = 1908.131 }, rot = { x = 0.482, y = 222.008, z = 354.794 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 526005, gadget_id = 70310006, pos = { x = -626.612, y = 188.554, z = 1906.854 }, rot = { x = 3.659, y = 0.364, z = 11.351 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 526008, gadget_id = 70290200, pos = { x = -616.175, y = 169.636, z = 1917.483 }, rot = { x = 10.599, y = 1.266, z = 1.113 }, level = 36, area_id = 19 },
	{ config_id = 526009, gadget_id = 70220026, pos = { x = -624.777, y = 189.188, z = 1905.647 }, rot = { x = 3.735, y = 359.987, z = 11.327 }, level = 36, area_id = 19 },
	{ config_id = 526010, gadget_id = 70220014, pos = { x = -626.864, y = 188.679, z = 1910.278 }, rot = { x = 11.387, y = 359.156, z = 0.070 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1526003, name = "ANY_MONSTER_DIE_526003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_526003", action = "action_EVENT_ANY_MONSTER_DIE_526003" }
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
		monsters = { 526001, 526004, 526006, 526007 },
		gadgets = { 526002, 526005, 526008, 526009, 526010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_526003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_526003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_526003(context, evt)
	-- 将configid为 526002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 526002, GadgetState.Default) then
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