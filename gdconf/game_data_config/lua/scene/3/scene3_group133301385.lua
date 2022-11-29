-- 基础信息
local base_info = {
	group_id = 133301385
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 385001, monster_id = 25310101, pos = { x = -377.359, y = 212.454, z = 3155.676 }, rot = { x = 0.000, y = 162.713, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 22 },
	{ config_id = 385004, monster_id = 25210402, pos = { x = -379.137, y = 210.989, z = 3133.639 }, rot = { x = 0.000, y = 175.171, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9503, area_id = 22 },
	{ config_id = 385005, monster_id = 25210502, pos = { x = -385.314, y = 210.221, z = 3135.356 }, rot = { x = 0.000, y = 31.113, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 22 },
	{ config_id = 385013, monster_id = 25210101, pos = { x = -376.534, y = 211.782, z = 3154.764 }, rot = { x = 0.000, y = 349.269, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 385002, gadget_id = 70211002, pos = { x = -377.849, y = 210.643, z = 3139.280 }, rot = { x = 357.901, y = 291.817, z = 359.500 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 385006, gadget_id = 70300094, pos = { x = -380.886, y = 210.967, z = 3133.231 }, rot = { x = 357.817, y = 247.753, z = 357.029 }, level = 27, area_id = 22 },
	{ config_id = 385007, gadget_id = 70220051, pos = { x = -381.202, y = 211.047, z = 3132.103 }, rot = { x = 0.000, y = 173.157, z = 71.846 }, level = 27, area_id = 22 },
	{ config_id = 385008, gadget_id = 70220052, pos = { x = -387.392, y = 210.185, z = 3134.109 }, rot = { x = 0.000, y = 51.068, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 385009, gadget_id = 70220050, pos = { x = -380.570, y = 211.123, z = 3130.771 }, rot = { x = 0.000, y = 158.400, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 385010, gadget_id = 70300093, pos = { x = -376.268, y = 211.542, z = 3132.831 }, rot = { x = 359.991, y = 227.101, z = 349.053 }, level = 27, area_id = 22 },
	{ config_id = 385011, gadget_id = 70210101, pos = { x = -377.369, y = 211.713, z = 3133.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 22 },
	{ config_id = 385012, gadget_id = 70210101, pos = { x = -387.440, y = 210.434, z = 3136.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 22 },
	{ config_id = 385014, gadget_id = 70310006, pos = { x = -379.767, y = 211.831, z = 3153.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1385003, name = "ANY_MONSTER_DIE_385003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_385003", action = "action_EVENT_ANY_MONSTER_DIE_385003" }
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
		monsters = { 385001, 385004, 385005, 385013 },
		gadgets = { 385002, 385006, 385007, 385008, 385009, 385010, 385011, 385012, 385014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_385003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_385003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_385003(context, evt)
	-- 将configid为 385002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 385002, GadgetState.Default) then
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