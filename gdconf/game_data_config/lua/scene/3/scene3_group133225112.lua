-- 基础信息
local base_info = {
	group_id = 133225112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 112001, monster_id = 24010101, pos = { x = -6096.453, y = 203.234, z = -2752.325 }, rot = { x = 0.000, y = 135.514, z = 0.000 }, level = 32, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 112004, monster_id = 24020201, pos = { x = -6091.167, y = 202.028, z = -2749.817 }, rot = { x = 0.000, y = 163.587, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 112005, monster_id = 24020201, pos = { x = -6097.818, y = 203.128, z = -2757.049 }, rot = { x = 0.000, y = 110.361, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 112002, gadget_id = 70211012, pos = { x = -6094.043, y = 202.054, z = -2754.679 }, rot = { x = 0.000, y = 148.761, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1112003, name = "ANY_MONSTER_DIE_112003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_112003", action = "action_EVENT_ANY_MONSTER_DIE_112003" }
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
		monsters = { 112001, 112004, 112005 },
		gadgets = { 112002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_112003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_112003(context, evt)
	-- 将configid为 112002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112002, GadgetState.Default) then
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