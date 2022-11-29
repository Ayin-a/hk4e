-- 基础信息
local base_info = {
	group_id = 166001511
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 511001, monster_id = 26090101, pos = { x = 282.358, y = 155.660, z = 767.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 511004, monster_id = 26090101, pos = { x = 290.764, y = 155.660, z = 766.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 511005, monster_id = 26090101, pos = { x = 287.985, y = 158.206, z = 755.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 511006, monster_id = 20011101, pos = { x = 286.114, y = 157.490, z = 761.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 300 },
	{ config_id = 511008, monster_id = 26010101, pos = { x = 285.858, y = 155.660, z = 766.222 }, rot = { x = 0.000, y = 42.486, z = 0.000 }, level = 36, drop_tag = "骗骗花", disableWander = true, area_id = 300 },
	{ config_id = 511009, monster_id = 26090101, pos = { x = 287.985, y = 158.206, z = 755.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 511010, monster_id = 26090101, pos = { x = 290.764, y = 155.660, z = 766.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 511002, gadget_id = 70211012, pos = { x = 283.147, y = 158.268, z = 759.552 }, rot = { x = 2.560, y = 83.400, z = 16.406 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511003, name = "ANY_MONSTER_DIE_511003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511003", action = "action_EVENT_ANY_MONSTER_DIE_511003" },
	{ config_id = 1511007, name = "ANY_MONSTER_DIE_511007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511007", action = "action_EVENT_ANY_MONSTER_DIE_511007" }
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
		monsters = { 511001, 511004, 511005, 511006 },
		gadgets = { 511002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 511008, 511009, 511010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_511003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511003(context, evt)
	-- 将configid为 511002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 511002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_511007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001511, 2)
	
	return 0
end