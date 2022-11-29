-- 基础信息
local base_info = {
	group_id = 133309296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296001, monster_id = 24040201, pos = { x = -2214.198, y = -6.311, z = 5257.274 }, rot = { x = 0.000, y = 228.921, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296002, gadget_id = 70211012, pos = { x = -2234.546, y = -2.495, z = 5243.996 }, rot = { x = 4.033, y = 45.395, z = 0.027 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 296004, gadget_id = 70710078, pos = { x = -2228.164, y = -1.928, z = 5242.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 296006, gadget_id = 70710078, pos = { x = -2234.625, y = -2.597, z = 5246.892 }, rot = { x = 0.000, y = 184.756, z = 0.000 }, level = 32, area_id = 27 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 296005, monster_id = 24040301, pos = { x = -2235.389, y = -2.490, z = 5246.482 }, rot = { x = 0.000, y = 132.370, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1003, area_id = 27 }
	}
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
		monsters = { 296001 },
		gadgets = { 296002, 296004, 296006 },
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