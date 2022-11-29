-- 基础信息
local base_info = {
	group_id = 133309315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315005, monster_id = 24040201, pos = { x = -2903.327, y = 204.904, z = 5714.293 }, rot = { x = 0.000, y = 122.988, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1003, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315001, gadget_id = 70330432, pos = { x = -2912.956, y = 205.314, z = 5716.758 }, rot = { x = 331.591, y = 85.647, z = 0.003 }, level = 32, area_id = 27 },
	{ config_id = 315002, gadget_id = 70211002, pos = { x = -2906.907, y = 205.235, z = 5719.929 }, rot = { x = 0.000, y = 107.302, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 315004, gadget_id = 70330432, pos = { x = -2905.611, y = 204.631, z = 5724.913 }, rot = { x = 354.615, y = 165.618, z = 332.064 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1315003, name = "ANY_MONSTER_DIE_315003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315003", action = "action_EVENT_ANY_MONSTER_DIE_315003" }
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
		monsters = { 315005 },
		gadgets = { 315001, 315002, 315004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315003(context, evt)
	-- 将configid为 315002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315002, GadgetState.Default) then
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