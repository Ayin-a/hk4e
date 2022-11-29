-- 基础信息
local base_info = {
	group_id = 155008158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158001, monster_id = 21010101, pos = { x = -138.855, y = 234.992, z = 319.229 }, rot = { x = 0.000, y = 91.460, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 158005, monster_id = 21010101, pos = { x = -151.835, y = 235.762, z = 325.106 }, rot = { x = 0.000, y = 346.887, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 158009, monster_id = 21020201, pos = { x = -137.603, y = 234.178, z = 312.681 }, rot = { x = 0.000, y = 210.263, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 200 },
	{ config_id = 158010, monster_id = 21030601, pos = { x = -141.032, y = 233.475, z = 309.155 }, rot = { x = 0.000, y = 55.816, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 },
	{ config_id = 158011, monster_id = 21010201, pos = { x = -141.578, y = 233.620, z = 311.607 }, rot = { x = 0.000, y = 127.387, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 158012, monster_id = 21010201, pos = { x = -136.704, y = 233.977, z = 308.530 }, rot = { x = 0.000, y = 306.433, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158002, gadget_id = 70211002, pos = { x = -133.308, y = 234.565, z = 309.858 }, rot = { x = 0.000, y = 278.749, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 158004, gadget_id = 70300086, pos = { x = -133.068, y = 233.719, z = 313.121 }, rot = { x = 9.663, y = 359.225, z = 353.544 }, level = 36, area_id = 200 },
	{ config_id = 158006, gadget_id = 70220013, pos = { x = -142.050, y = 234.094, z = 314.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 158007, gadget_id = 70220026, pos = { x = -144.969, y = 233.472, z = 311.743 }, rot = { x = 0.000, y = 286.896, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 158008, gadget_id = 70310001, pos = { x = -139.013, y = 233.804, z = 310.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158003, name = "ANY_MONSTER_DIE_158003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158003", action = "action_EVENT_ANY_MONSTER_DIE_158003" }
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
		monsters = { 158001, 158005, 158009, 158010, 158011, 158012 },
		gadgets = { 158002, 158004, 158006, 158007, 158008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158003(context, evt)
	-- 将configid为 158002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.Default) then
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