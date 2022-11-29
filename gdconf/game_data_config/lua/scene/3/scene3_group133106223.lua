-- 基础信息
local base_info = {
	group_id = 133106223
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 223001, monster_id = 25060101, pos = { x = -621.788, y = 222.417, z = 913.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 223004, monster_id = 25010201, pos = { x = -624.590, y = 222.075, z = 916.124 }, rot = { x = 0.000, y = 227.952, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 8 },
	{ config_id = 223005, monster_id = 25010201, pos = { x = -618.826, y = 222.534, z = 916.871 }, rot = { x = 0.000, y = 110.170, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9004, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 223002, gadget_id = 70211002, pos = { x = -622.001, y = 222.435, z = 917.264 }, rot = { x = 359.703, y = 171.683, z = 352.364 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1223003, name = "ANY_MONSTER_DIE_223003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_223003", action = "action_EVENT_ANY_MONSTER_DIE_223003" }
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
		monsters = { 223001, 223004, 223005 },
		gadgets = { 223002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_223003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_223003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_223003(context, evt)
	-- 将configid为 223002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.Default) then
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