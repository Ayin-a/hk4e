-- 基础信息
local base_info = {
	group_id = 155006191
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 191001, monster_id = 21030601, pos = { x = 322.122, y = 133.425, z = -267.446 }, rot = { x = 0.000, y = 273.941, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 191011, monster_id = 21020801, pos = { x = 315.635, y = 135.727, z = -278.019 }, rot = { x = 0.000, y = 33.479, z = 0.000 }, level = 36, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 191012, monster_id = 21010701, pos = { x = 317.264, y = 133.631, z = -273.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 191002, gadget_id = 70211012, pos = { x = 313.581, y = 134.528, z = -271.876 }, rot = { x = 6.585, y = 93.101, z = 3.856 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 191004, gadget_id = 70300086, pos = { x = 308.001, y = 134.171, z = -276.107 }, rot = { x = 332.807, y = 350.075, z = 15.371 }, level = 36, area_id = 200 },
	{ config_id = 191005, gadget_id = 70300086, pos = { x = 315.855, y = 131.953, z = -263.930 }, rot = { x = 4.507, y = 357.074, z = 357.084 }, level = 36, area_id = 200 },
	{ config_id = 191006, gadget_id = 70300086, pos = { x = 322.008, y = 135.097, z = -281.493 }, rot = { x = 350.797, y = 356.639, z = 339.171 }, level = 36, area_id = 200 },
	{ config_id = 191007, gadget_id = 70310001, pos = { x = 308.542, y = 136.559, z = -272.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 191008, gadget_id = 70310001, pos = { x = 327.386, y = 133.247, z = -262.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 191009, gadget_id = 70310001, pos = { x = 324.705, y = 135.571, z = -280.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 191010, gadget_id = 70310006, pos = { x = 320.347, y = 133.600, z = -266.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191003, name = "ANY_MONSTER_DIE_191003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_191003", action = "action_EVENT_ANY_MONSTER_DIE_191003" }
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
		monsters = { 191001, 191011, 191012 },
		gadgets = { 191002, 191004, 191005, 191006, 191007, 191008, 191009, 191010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_191003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_191003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_191003(context, evt)
	-- 将configid为 191002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191002, GadgetState.Default) then
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