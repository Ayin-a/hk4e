-- 基础信息
local base_info = {
	group_id = 133220047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 25070101, pos = { x = -2401.190, y = 200.942, z = -4157.817 }, rot = { x = 0.000, y = 88.713, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, area_id = 11 },
	{ config_id = 47004, monster_id = 25010301, pos = { x = -2399.599, y = 204.723, z = -4173.778 }, rot = { x = 0.000, y = 352.443, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 11 },
	{ config_id = 47005, monster_id = 25010401, pos = { x = -2401.650, y = 204.558, z = -4172.415 }, rot = { x = 0.000, y = 358.871, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 11 },
	{ config_id = 47006, monster_id = 25030201, pos = { x = -2400.515, y = 204.724, z = -4172.814 }, rot = { x = 0.000, y = 343.682, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47002, gadget_id = 70211002, pos = { x = -2402.609, y = 204.711, z = -4175.907 }, rot = { x = 4.239, y = 33.622, z = 0.430 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047003, name = "ANY_MONSTER_DIE_47003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47003", action = "action_EVENT_ANY_MONSTER_DIE_47003" }
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
		monsters = { 47001, 47004, 47005, 47006 },
		gadgets = { 47002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 将configid为 47002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47002, GadgetState.Default) then
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