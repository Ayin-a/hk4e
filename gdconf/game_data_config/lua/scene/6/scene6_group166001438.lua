-- 基础信息
local base_info = {
	group_id = 166001438
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 438001, monster_id = 24020301, pos = { x = 831.232, y = 933.934, z = 940.880 }, rot = { x = 0.000, y = 265.949, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 300 },
	{ config_id = 438004, monster_id = 24020201, pos = { x = 836.318, y = 934.476, z = 936.373 }, rot = { x = 0.000, y = 265.949, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 438005, monster_id = 24020201, pos = { x = 834.084, y = 935.550, z = 948.256 }, rot = { x = 0.000, y = 265.949, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 438002, gadget_id = 70211002, pos = { x = 834.840, y = 934.455, z = 940.974 }, rot = { x = 347.294, y = 270.122, z = 2.352 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1438003, name = "ANY_MONSTER_DIE_438003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_438003", action = "action_EVENT_ANY_MONSTER_DIE_438003" }
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
		monsters = { 438001, 438004, 438005 },
		gadgets = { 438002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_438003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_438003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_438003(context, evt)
	-- 将configid为 438002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 438002, GadgetState.Default) then
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