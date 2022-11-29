-- 基础信息
local base_info = {
	group_id = 144004092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 21010201, pos = { x = -276.285, y = 120.100, z = -804.900 }, rot = { x = 0.471, y = 234.285, z = 0.268 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 100 },
	{ config_id = 92004, monster_id = 21011001, pos = { x = -271.399, y = 123.836, z = -789.466 }, rot = { x = 359.281, y = 268.884, z = 4.291 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 100 },
	{ config_id = 92005, monster_id = 21010901, pos = { x = -292.346, y = 123.848, z = -806.843 }, rot = { x = 0.000, y = 352.157, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 100 },
	{ config_id = 92006, monster_id = 21010901, pos = { x = -295.051, y = 123.813, z = -770.631 }, rot = { x = 3.292, y = 151.903, z = 359.451 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 100 },
	{ config_id = 92007, monster_id = 21030301, pos = { x = -290.797, y = 120.671, z = -787.259 }, rot = { x = 2.929, y = 146.859, z = 349.998 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 100, guest_ban_drop = 23 },
	{ config_id = 92017, monster_id = 20011201, pos = { x = -277.376, y = 120.102, z = -805.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 92002, gadget_id = 70211012, pos = { x = -269.653, y = 122.644, z = -810.768 }, rot = { x = 9.333, y = 337.310, z = 16.938 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 92008, gadget_id = 70950092, pos = { x = -270.976, y = 120.000, z = -790.365 }, rot = { x = 0.000, y = 308.627, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92009, gadget_id = 70950092, pos = { x = -292.709, y = 120.000, z = -807.070 }, rot = { x = 0.000, y = 225.192, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92010, gadget_id = 70300085, pos = { x = -277.407, y = 119.632, z = -805.885 }, rot = { x = 0.000, y = 0.789, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92011, gadget_id = 70300081, pos = { x = -289.403, y = 119.234, z = -819.828 }, rot = { x = 0.000, y = 94.129, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92012, gadget_id = 70300086, pos = { x = -278.708, y = 117.743, z = -787.964 }, rot = { x = 0.000, y = 0.000, z = 12.129 }, level = 1, area_id = 100 },
	{ config_id = 92013, gadget_id = 70300086, pos = { x = -284.283, y = 119.758, z = -812.055 }, rot = { x = 10.398, y = 78.226, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92014, gadget_id = 70950092, pos = { x = -294.561, y = 120.000, z = -770.944 }, rot = { x = 0.000, y = 308.627, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92015, gadget_id = 70300086, pos = { x = -295.964, y = 118.834, z = -780.967 }, rot = { x = 0.000, y = 0.000, z = 354.543 }, level = 1, area_id = 100 },
	{ config_id = 92016, gadget_id = 70300087, pos = { x = -277.462, y = 120.017, z = -805.738 }, rot = { x = 0.000, y = 0.444, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92018, gadget_id = 70220005, pos = { x = -278.716, y = 120.086, z = -806.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92019, gadget_id = 70950087, pos = { x = -286.886, y = 120.000, z = -807.201 }, rot = { x = 0.000, y = 228.420, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 92021, gadget_id = 70690010, pos = { x = -291.287, y = 119.470, z = -787.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092003, name = "ANY_MONSTER_DIE_92003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92003", action = "action_EVENT_ANY_MONSTER_DIE_92003" },
	{ config_id = 1092020, name = "ANY_MONSTER_DIE_92020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92020", action = "action_EVENT_ANY_MONSTER_DIE_92020" }
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
		monsters = { 92001, 92004, 92005, 92006, 92007, 92017 },
		gadgets = { 92002, 92008, 92009, 92010, 92011, 92012, 92013, 92014, 92015, 92016, 92018, 92019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92003", "ANY_MONSTER_DIE_92020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_92003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92003(context, evt)
	-- 将configid为 92002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 92002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_92020(context, evt)
	if 92007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92020(context, evt)
	-- 创建id为92021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 92021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end