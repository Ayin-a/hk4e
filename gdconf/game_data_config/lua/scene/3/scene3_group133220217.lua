-- 基础信息
local base_info = {
	group_id = 133220217
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217001, monster_id = 23020101, pos = { x = -2357.701, y = 235.400, z = -4467.562 }, rot = { x = 359.424, y = 75.152, z = 359.748 }, level = 27, drop_tag = "债务处理人", disableWander = true, area_id = 11 },
	{ config_id = 217004, monster_id = 23050101, pos = { x = -2357.005, y = 235.227, z = -4465.905 }, rot = { x = 359.628, y = 105.284, z = 359.493 }, level = 27, drop_tag = "藏镜侍女", disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 217002, gadget_id = 70211012, pos = { x = -2378.171, y = 239.564, z = -4464.255 }, rot = { x = 2.240, y = 88.518, z = 359.438 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 217005, gadget_id = 70220048, pos = { x = -2374.970, y = 239.306, z = -4471.083 }, rot = { x = 352.153, y = 337.153, z = 10.090 }, level = 27, area_id = 11 },
	{ config_id = 217006, gadget_id = 70220048, pos = { x = -2377.177, y = 239.154, z = -4472.112 }, rot = { x = 2.418, y = 288.447, z = 355.903 }, level = 27, area_id = 11 },
	{ config_id = 217007, gadget_id = 70310009, pos = { x = -2373.233, y = 239.363, z = -4464.315 }, rot = { x = 0.000, y = 317.728, z = 356.380 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 217008, gadget_id = 70220025, pos = { x = -2372.316, y = 239.448, z = -4466.000 }, rot = { x = 85.080, y = 249.081, z = 251.637 }, level = 27, area_id = 11 },
	{ config_id = 217009, gadget_id = 70220052, pos = { x = -2377.428, y = 239.602, z = -4462.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 217010, gadget_id = 70220052, pos = { x = -2373.606, y = 240.173, z = -4468.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217003, name = "ANY_MONSTER_DIE_217003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_217003", action = "action_EVENT_ANY_MONSTER_DIE_217003" }
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
		monsters = { 217001, 217004 },
		gadgets = { 217002, 217005, 217006, 217007, 217008, 217009, 217010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_217003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_217003(context, evt)
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
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