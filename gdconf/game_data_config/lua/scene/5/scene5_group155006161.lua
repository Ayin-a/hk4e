-- 基础信息
local base_info = {
	group_id = 155006161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 21020101, pos = { x = 272.719, y = 202.488, z = -204.022 }, rot = { x = 0.000, y = 253.535, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 161009, monster_id = 21010701, pos = { x = 272.653, y = 201.113, z = -212.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 161010, monster_id = 21010701, pos = { x = 264.040, y = 204.607, z = -200.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 161016, monster_id = 21010501, pos = { x = 290.764, y = 198.784, z = -187.004 }, rot = { x = 0.000, y = 67.161, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 161017, monster_id = 21010501, pos = { x = 296.479, y = 197.416, z = -205.403 }, rot = { x = 0.000, y = 153.060, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161002, gadget_id = 70211002, pos = { x = 265.621, y = 204.224, z = -203.033 }, rot = { x = 0.000, y = 357.890, z = 345.536 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 161004, gadget_id = 70300086, pos = { x = 266.588, y = 201.982, z = -205.281 }, rot = { x = 0.000, y = 0.000, z = 3.249 }, level = 36, area_id = 200 },
	{ config_id = 161005, gadget_id = 70300086, pos = { x = 276.204, y = 200.332, z = -205.250 }, rot = { x = 0.000, y = 352.602, z = 348.240 }, level = 36, area_id = 200 },
	{ config_id = 161006, gadget_id = 70310001, pos = { x = 269.944, y = 201.446, z = -212.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 161007, gadget_id = 70310001, pos = { x = 263.613, y = 204.681, z = -203.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 161008, gadget_id = 70310006, pos = { x = 269.626, y = 202.862, z = -205.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 161011, gadget_id = 70220014, pos = { x = 271.113, y = 201.120, z = -213.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 161012, gadget_id = 70220014, pos = { x = 272.568, y = 200.887, z = -214.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 161013, gadget_id = 70220014, pos = { x = 293.881, y = 197.889, z = -187.506 }, rot = { x = 25.795, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 161014, gadget_id = 70220014, pos = { x = 292.275, y = 198.224, z = -185.874 }, rot = { x = 0.000, y = 31.616, z = 326.953 }, level = 36, area_id = 200 },
	{ config_id = 161015, gadget_id = 70220014, pos = { x = 277.528, y = 200.631, z = -204.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161003, name = "ANY_MONSTER_DIE_161003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_161003", action = "action_EVENT_ANY_MONSTER_DIE_161003" }
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
		monsters = { 161001, 161009, 161010, 161016, 161017 },
		gadgets = { 161002, 161004, 161005, 161006, 161007, 161008, 161011, 161012, 161013, 161014, 161015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_161003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_161003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161003(context, evt)
	-- 将configid为 161002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161002, GadgetState.Default) then
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