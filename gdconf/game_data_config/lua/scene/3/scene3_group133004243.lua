-- 基础信息
local base_info = {
	group_id = 133004243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 627, monster_id = 21010901, pos = { x = 2694.618, y = 247.357, z = -428.576 }, rot = { x = 0.000, y = 141.682, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 628, monster_id = 21010901, pos = { x = 2694.940, y = 247.615, z = -431.588 }, rot = { x = 0.000, y = 31.880, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 629, monster_id = 20011001, pos = { x = 2698.663, y = 247.253, z = -430.991 }, rot = { x = 0.000, y = 285.221, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 4 },
	{ config_id = 630, monster_id = 21030101, pos = { x = 2698.598, y = 247.229, z = -428.700 }, rot = { x = 0.000, y = 235.389, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1392, gadget_id = 70211012, pos = { x = 2697.198, y = 247.230, z = -427.104 }, rot = { x = 0.000, y = 181.498, z = 0.000 }, level = 16, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 1393, gadget_id = 70220013, pos = { x = 2700.403, y = 247.006, z = -426.169 }, rot = { x = 355.698, y = 129.523, z = 4.671 }, level = 20, area_id = 4 },
	{ config_id = 1394, gadget_id = 70220013, pos = { x = 2694.534, y = 247.376, z = -425.708 }, rot = { x = 5.159, y = 241.196, z = 8.033 }, level = 20, area_id = 4 },
	{ config_id = 1395, gadget_id = 70220014, pos = { x = 2697.790, y = 246.645, z = -424.547 }, rot = { x = 0.000, y = 129.497, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 1396, gadget_id = 70220014, pos = { x = 2699.278, y = 246.973, z = -424.667 }, rot = { x = 0.000, y = 335.274, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 1397, gadget_id = 70310004, pos = { x = 2696.590, y = 247.397, z = -429.803 }, rot = { x = 353.744, y = 206.219, z = 4.116 }, level = 20, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243001, name = "ANY_MONSTER_DIE_243001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_243001", action = "action_EVENT_ANY_MONSTER_DIE_243001" }
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
		monsters = { 627, 628, 629, 630 },
		gadgets = { 1392, 1393, 1394, 1395, 1396, 1397 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_243001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_243001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_243001(context, evt)
	-- 将configid为 1392 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1392, GadgetState.Default) then
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