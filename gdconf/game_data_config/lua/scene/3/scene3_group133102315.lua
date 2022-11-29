-- 基础信息
local base_info = {
	group_id = 133102315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315001, monster_id = 21010201, pos = { x = 1117.823, y = 201.991, z = 302.076 }, rot = { x = 7.217, y = 286.976, z = 6.809 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 315004, monster_id = 21010601, pos = { x = 1113.824, y = 201.263, z = 303.339 }, rot = { x = 352.823, y = 130.923, z = 348.091 }, level = 16, drop_tag = "丘丘人", pose_id = 9002, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315002, gadget_id = 70211012, pos = { x = 1114.653, y = 201.237, z = 299.604 }, rot = { x = 5.136, y = 195.868, z = 348.631 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 315005, gadget_id = 70310004, pos = { x = 1115.349, y = 201.532, z = 301.898 }, rot = { x = 12.602, y = 287.871, z = 6.753 }, level = 16, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 315006, gadget_id = 70220014, pos = { x = 1117.144, y = 201.710, z = 299.805 }, rot = { x = 7.466, y = 287.060, z = 5.977 }, level = 16, area_id = 5 }
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
		-- description = suite_1,
		monsters = { 315001, 315004 },
		gadgets = { 315002, 315005, 315006 },
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