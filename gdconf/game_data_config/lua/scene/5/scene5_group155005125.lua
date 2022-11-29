-- 基础信息
local base_info = {
	group_id = 155005125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 21010201, pos = { x = 310.794, y = 145.250, z = 882.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 125010, monster_id = 21010101, pos = { x = 305.173, y = 145.090, z = 890.878 }, rot = { x = 0.000, y = 49.445, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 125011, monster_id = 21010101, pos = { x = 308.640, y = 145.090, z = 888.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 125012, monster_id = 21010101, pos = { x = 311.862, y = 145.090, z = 889.021 }, rot = { x = 0.000, y = 345.440, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 125002, gadget_id = 70211002, pos = { x = 313.754, y = 145.125, z = 886.141 }, rot = { x = 359.140, y = 286.242, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 125004, gadget_id = 70310006, pos = { x = 315.616, y = 145.155, z = 889.439 }, rot = { x = 5.350, y = 0.125, z = 2.684 }, level = 36, area_id = 200 },
	{ config_id = 125005, gadget_id = 70310001, pos = { x = 305.659, y = 145.119, z = 899.378 }, rot = { x = 352.905, y = 0.332, z = 354.644 }, level = 36, area_id = 200 },
	{ config_id = 125006, gadget_id = 70220014, pos = { x = 318.955, y = 145.346, z = 887.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 125007, gadget_id = 70220014, pos = { x = 317.678, y = 145.212, z = 887.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 125008, gadget_id = 70220014, pos = { x = 304.994, y = 144.566, z = 896.653 }, rot = { x = 0.000, y = 0.000, z = 338.570 }, level = 36, area_id = 200 },
	{ config_id = 125009, gadget_id = 70220014, pos = { x = 304.961, y = 144.549, z = 895.611 }, rot = { x = 307.892, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 125013, gadget_id = 70220014, pos = { x = 303.295, y = 144.360, z = 890.346 }, rot = { x = 349.425, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 125014, gadget_id = 70220014, pos = { x = 307.539, y = 144.812, z = 886.188 }, rot = { x = 339.943, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1125003, name = "ANY_MONSTER_DIE_125003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_125003", action = "action_EVENT_ANY_MONSTER_DIE_125003" }
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
		monsters = { 125001, 125010, 125011, 125012 },
		gadgets = { 125002, 125004, 125005, 125006, 125007, 125008, 125009, 125013, 125014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_125003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_125003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_125003(context, evt)
	-- 将configid为 125002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 125002, GadgetState.Default) then
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