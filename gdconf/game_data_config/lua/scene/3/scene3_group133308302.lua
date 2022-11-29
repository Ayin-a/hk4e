-- 基础信息
local base_info = {
	group_id = 133308302
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 302001, monster_id = 25210203, pos = { x = -1843.309, y = 221.662, z = 4703.298 }, rot = { x = 0.000, y = 177.274, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 26 },
	{ config_id = 302005, monster_id = 25310201, pos = { x = -1817.108, y = 223.853, z = 4702.772 }, rot = { x = 0.000, y = 289.006, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 302006, monster_id = 25210302, pos = { x = -1819.630, y = 221.684, z = 4693.381 }, rot = { x = 0.000, y = 211.957, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 302007, monster_id = 25210501, pos = { x = -1843.605, y = 221.712, z = 4700.417 }, rot = { x = 0.000, y = 2.673, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 26 },
	{ config_id = 302020, monster_id = 25410201, pos = { x = -1827.331, y = 224.011, z = 4713.395 }, rot = { x = 0.000, y = 219.796, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 302002, gadget_id = 70211022, pos = { x = -1832.172, y = 221.705, z = 4705.342 }, rot = { x = 356.702, y = 133.034, z = 5.113 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 302008, gadget_id = 70220128, pos = { x = -1843.529, y = 221.542, z = 4701.937 }, rot = { x = 354.398, y = 124.145, z = 358.651 }, level = 32, area_id = 26 },
	{ config_id = 302009, gadget_id = 70310009, pos = { x = -1809.659, y = 223.582, z = 4708.187 }, rot = { x = 0.800, y = 241.915, z = 1.173 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 302010, gadget_id = 70220048, pos = { x = -1820.840, y = 223.991, z = 4713.571 }, rot = { x = 0.061, y = 223.487, z = 359.885 }, level = 32, area_id = 26 },
	{ config_id = 302011, gadget_id = 70220051, pos = { x = -1822.576, y = 223.987, z = 4714.173 }, rot = { x = 0.035, y = -0.006, z = 0.125 }, level = 32, area_id = 26 },
	{ config_id = 302012, gadget_id = 70210101, pos = { x = -1824.797, y = 219.381, z = 4693.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 },
	{ config_id = 302013, gadget_id = 70330397, pos = { x = -1831.967, y = 217.543, z = 4693.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 302014, gadget_id = 70210101, pos = { x = -1835.968, y = 224.476, z = 4720.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 },
	{ config_id = 302015, gadget_id = 70330396, pos = { x = -1846.712, y = 221.198, z = 4700.516 }, rot = { x = 358.760, y = 359.929, z = 6.539 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 302016, gadget_id = 70220048, pos = { x = -1842.495, y = 220.850, z = 4712.704 }, rot = { x = 3.439, y = 339.815, z = 0.729 }, level = 32, area_id = 26 },
	{ config_id = 302017, gadget_id = 70220048, pos = { x = -1844.678, y = 220.854, z = 4711.269 }, rot = { x = 2.974, y = 0.048, z = 1.866 }, level = 32, area_id = 26 },
	{ config_id = 302018, gadget_id = 70220050, pos = { x = -1843.152, y = 220.923, z = 4710.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 302019, gadget_id = 70220052, pos = { x = -1842.250, y = 220.908, z = 4711.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 302021, gadget_id = 70220005, pos = { x = -1836.623, y = 221.199, z = 4707.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 302022, gadget_id = 70220005, pos = { x = -1842.041, y = 221.611, z = 4703.524 }, rot = { x = 3.083, y = 0.159, z = 5.919 }, level = 32, area_id = 26 },
	{ config_id = 302023, gadget_id = 70220005, pos = { x = -1825.472, y = 221.751, z = 4705.403 }, rot = { x = 1.268, y = 0.041, z = 0.693 }, level = 32, area_id = 26 },
	{ config_id = 302024, gadget_id = 70220005, pos = { x = -1837.042, y = 224.054, z = 4719.563 }, rot = { x = 351.491, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 302025, gadget_id = 70220005, pos = { x = -1834.415, y = 225.101, z = 4720.820 }, rot = { x = 351.491, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 302026, gadget_id = 70900386, pos = { x = -1842.486, y = 221.754, z = 4702.209 }, rot = { x = 2.023, y = 0.095, z = 5.396 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302003, name = "ANY_MONSTER_DIE_302003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_302003", action = "action_EVENT_ANY_MONSTER_DIE_302003" },
	{ config_id = 1302004, name = "ANY_MONSTER_DIE_302004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_302004", action = "action_EVENT_ANY_MONSTER_DIE_302004" }
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
		monsters = { 302001, 302005, 302006, 302007 },
		gadgets = { 302002, 302008, 302009, 302010, 302011, 302012, 302013, 302014, 302015, 302016, 302017, 302018, 302019, 302021, 302022, 302023, 302024, 302025, 302026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_302003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 302020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_302004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_302003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_302003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308302, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_302004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_302004(context, evt)
	-- 将configid为 302002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 302002, GadgetState.Default) then
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