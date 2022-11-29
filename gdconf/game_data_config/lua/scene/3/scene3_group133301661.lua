-- 基础信息
local base_info = {
	group_id = 133301661
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 661001, monster_id = 26090901, pos = { x = -160.493, y = 250.911, z = 3191.237 }, rot = { x = 0.000, y = 265.977, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 661004, monster_id = 26090901, pos = { x = -162.972, y = 249.417, z = 3185.729 }, rot = { x = 0.000, y = 265.082, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 661005, monster_id = 26090901, pos = { x = -156.935, y = 251.840, z = 3184.260 }, rot = { x = 0.000, y = 127.353, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 661006, monster_id = 26090901, pos = { x = -155.412, y = 252.976, z = 3185.625 }, rot = { x = 0.000, y = 146.334, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 },
	{ config_id = 661007, monster_id = 26090901, pos = { x = -160.774, y = 249.971, z = 3187.176 }, rot = { x = 0.000, y = 270.346, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 661002, gadget_id = 70211012, pos = { x = -153.836, y = 253.317, z = 3185.944 }, rot = { x = 18.257, y = 292.675, z = 5.445 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1661003, name = "ANY_MONSTER_DIE_661003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_661003", action = "action_EVENT_ANY_MONSTER_DIE_661003" }
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
		monsters = { 661001, 661004, 661005, 661006, 661007 },
		gadgets = { 661002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_661003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_661003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_661003(context, evt)
	-- 将configid为 661002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 661002, GadgetState.Default) then
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