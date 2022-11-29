-- 基础信息
local base_info = {
	group_id = 133210036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 23050101, pos = { x = -4009.860, y = 201.878, z = -1279.618 }, rot = { x = 0.000, y = 95.814, z = 0.000 }, level = 32, drop_tag = "藏镜侍女", disableWander = true, area_id = 17 },
	{ config_id = 36008, monster_id = 23010601, pos = { x = -3999.573, y = 201.535, z = -1277.291 }, rot = { x = 0.000, y = 0.106, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 17 },
	{ config_id = 36009, monster_id = 23010601, pos = { x = -3997.535, y = 203.153, z = -1251.712 }, rot = { x = 0.000, y = 308.701, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36002, gadget_id = 70211012, pos = { x = -4027.132, y = 208.021, z = -1266.728 }, rot = { x = 0.308, y = 126.562, z = 358.313 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 36004, gadget_id = 70710413, pos = { x = -4015.178, y = 202.786, z = -1275.000 }, rot = { x = 3.257, y = 93.087, z = 351.498 }, level = 30, area_id = 17 },
	{ config_id = 36005, gadget_id = 70710413, pos = { x = -4007.900, y = 202.430, z = -1265.317 }, rot = { x = 354.448, y = 166.669, z = 11.241 }, level = 30, area_id = 17 },
	{ config_id = 36006, gadget_id = 70710414, pos = { x = -4035.002, y = 211.525, z = -1258.950 }, rot = { x = 359.265, y = 334.071, z = 357.342 }, level = 30, area_id = 17 },
	{ config_id = 36007, gadget_id = 70710414, pos = { x = -3998.022, y = 203.060, z = -1252.336 }, rot = { x = 0.094, y = 282.584, z = 358.996 }, level = 30, area_id = 17 },
	{ config_id = 36010, gadget_id = 70220048, pos = { x = -4005.116, y = 201.127, z = -1284.072 }, rot = { x = 355.771, y = 301.721, z = 6.803 }, level = 30, area_id = 17 },
	{ config_id = 36011, gadget_id = 70220048, pos = { x = -4003.276, y = 201.293, z = -1282.570 }, rot = { x = 352.878, y = 0.111, z = 358.210 }, level = 30, area_id = 17 },
	{ config_id = 36012, gadget_id = 70220050, pos = { x = -4004.977, y = 201.363, z = -1282.352 }, rot = { x = 353.489, y = 304.434, z = 6.305 }, level = 30, area_id = 17 },
	{ config_id = 36013, gadget_id = 70310001, pos = { x = -4011.729, y = 203.073, z = -1271.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 36014, gadget_id = 70710416, pos = { x = -3999.749, y = 201.247, z = -1282.070 }, rot = { x = 3.999, y = 111.970, z = 354.884 }, level = 30, area_id = 17 },
	{ config_id = 36015, gadget_id = 70710414, pos = { x = -3997.515, y = 201.067, z = -1275.892 }, rot = { x = 357.284, y = 269.458, z = 359.524 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "ANY_MONSTER_DIE_36003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36003", action = "action_EVENT_ANY_MONSTER_DIE_36003" }
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
		monsters = { 36001, 36008, 36009 },
		gadgets = { 36002, 36004, 36005, 36006, 36007, 36010, 36011, 36012, 36013, 36014, 36015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 将configid为 36002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end