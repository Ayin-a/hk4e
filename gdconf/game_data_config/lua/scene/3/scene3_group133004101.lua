-- 基础信息
local base_info = {
	group_id = 133004101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 21010901, pos = { x = 2347.448, y = 290.842, z = -239.911 }, rot = { x = 0.000, y = 140.661, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 101002, monster_id = 21010901, pos = { x = 2351.379, y = 292.972, z = -228.097 }, rot = { x = 0.000, y = 174.534, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 101003, monster_id = 21030101, pos = { x = 2351.232, y = 289.289, z = -233.269 }, rot = { x = 0.000, y = 177.869, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 101004, monster_id = 21010101, pos = { x = 2356.081, y = 289.234, z = -238.629 }, rot = { x = 0.000, y = 345.208, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383, gadget_id = 70211012, pos = { x = 2346.683, y = 289.917, z = -233.314 }, rot = { x = 2.080, y = 308.512, z = 354.810 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 425, gadget_id = 70310001, pos = { x = 2349.573, y = 289.103, z = -236.008 }, rot = { x = 0.000, y = 349.050, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 426, gadget_id = 70220013, pos = { x = 2350.299, y = 289.411, z = -230.857 }, rot = { x = 0.000, y = 37.287, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 427, gadget_id = 70220013, pos = { x = 2352.896, y = 289.396, z = -230.154 }, rot = { x = 0.000, y = 152.083, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101005, name = "ANY_MONSTER_DIE_101005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101005", action = "action_EVENT_ANY_MONSTER_DIE_101005" }
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
	rand_suite = true
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
		monsters = { 101001, 101002, 101003, 101004 },
		gadgets = { 383, 425, 426, 427 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101005(context, evt)
	-- 将configid为 383 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 383, GadgetState.Default) then
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