-- 基础信息
local base_info = {
	group_id = 133220514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514004, monster_id = 25080101, pos = { x = -2704.155, y = 209.811, z = -4039.980 }, rot = { x = 0.000, y = 274.919, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 514005, monster_id = 25080201, pos = { x = -2706.992, y = 210.214, z = -4042.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 514009, monster_id = 25080201, pos = { x = -2700.326, y = 208.540, z = -4045.647 }, rot = { x = 0.000, y = 123.765, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 514001, gadget_id = 70220048, pos = { x = -2711.241, y = 209.915, z = -4041.955 }, rot = { x = 355.688, y = 345.074, z = 1.424 }, level = 27, area_id = 11 },
	{ config_id = 514002, gadget_id = 70211002, pos = { x = -2706.646, y = 210.499, z = -4037.678 }, rot = { x = 10.235, y = 159.708, z = 8.606 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 514006, gadget_id = 70220048, pos = { x = -2709.046, y = 210.331, z = -4039.959 }, rot = { x = 357.898, y = 193.546, z = 12.978 }, level = 27, area_id = 11 },
	{ config_id = 514007, gadget_id = 70310004, pos = { x = -2706.663, y = 210.100, z = -4039.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 514008, gadget_id = 70310001, pos = { x = -2704.036, y = 210.091, z = -4037.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1514003, name = "ANY_MONSTER_DIE_514003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_514003", action = "action_EVENT_ANY_MONSTER_DIE_514003" }
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
		monsters = { 514004, 514005, 514009 },
		gadgets = { 514001, 514002, 514006, 514007, 514008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_514003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_514003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_514003(context, evt)
	-- 将configid为 514002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 514002, GadgetState.Default) then
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