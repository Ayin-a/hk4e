-- 基础信息
local base_info = {
	group_id = 133212030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30004, monster_id = 25030201, pos = { x = -3707.099, y = 251.070, z = -2351.006 }, rot = { x = 0.000, y = 32.923, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 30005, monster_id = 25010401, pos = { x = -3715.570, y = 250.770, z = -2365.849 }, rot = { x = 0.000, y = 355.124, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 },
	{ config_id = 30007, monster_id = 25100101, pos = { x = -3703.665, y = 250.783, z = -2357.256 }, rot = { x = 0.000, y = 275.496, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30002, gadget_id = 70211002, pos = { x = -3700.827, y = 250.765, z = -2358.185 }, rot = { x = 0.000, y = 290.362, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 30008, gadget_id = 70900393, pos = { x = -3704.087, y = 250.783, z = -2348.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 30009, gadget_id = 70900393, pos = { x = -3699.170, y = 250.659, z = -2360.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
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
		monsters = { 30004, 30005, 30007 },
		gadgets = { 30002, 30008, 30009 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end