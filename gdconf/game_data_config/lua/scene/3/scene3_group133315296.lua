-- 基础信息
local base_info = {
	group_id = 133315296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 26120301, pos = { x = 137.839, y = 123.948, z = 3030.473 }, rot = { x = 0.000, y = 338.277, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 296004, monster_id = 26090101, pos = { x = 140.145, y = 127.739, z = 3035.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 },
	{ config_id = 296005, monster_id = 26090101, pos = { x = 139.803, y = 128.776, z = 3030.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 },
	{ config_id = 296006, monster_id = 26090101, pos = { x = 134.555, y = 126.557, z = 3028.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70211002, pos = { x = 142.962, y = 125.848, z = 3034.502 }, rot = { x = 0.000, y = 84.188, z = 354.609 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296003, name = "ANY_MONSTER_DIE_296003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296003", action = "action_EVENT_ANY_MONSTER_DIE_296003" }
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
		monsters = { 296001, 296004, 296005, 296006 },
		gadgets = { 296002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296003(context, evt)
	-- 将configid为 296002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296002, GadgetState.Default) then
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