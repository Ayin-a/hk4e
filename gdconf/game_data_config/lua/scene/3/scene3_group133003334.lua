-- 基础信息
local base_info = {
	group_id = 133003334
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1074, monster_id = 28030101, pos = { x = 2968.713, y = 240.417, z = -1722.231 }, rot = { x = 0.000, y = 218.411, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1075, monster_id = 28030401, pos = { x = 2964.784, y = 240.179, z = -1684.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1076, monster_id = 28030401, pos = { x = 2966.728, y = 240.169, z = -1683.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1077, monster_id = 28030401, pos = { x = 2965.797, y = 240.230, z = -1682.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1078, monster_id = 28030401, pos = { x = 2989.695, y = 239.229, z = -1712.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1079, monster_id = 28030401, pos = { x = 2986.613, y = 239.279, z = -1711.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1080, monster_id = 28030401, pos = { x = 2990.566, y = 239.101, z = -1722.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1353, monster_id = 20010301, pos = { x = 2956.542, y = 240.731, z = -1678.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1354, monster_id = 20010301, pos = { x = 2958.395, y = 240.492, z = -1676.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1355, monster_id = 20010301, pos = { x = 2955.835, y = 240.595, z = -1676.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1356, monster_id = 20011401, pos = { x = 2964.536, y = 242.040, z = -1635.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1357, monster_id = 20011401, pos = { x = 2965.018, y = 242.393, z = -1632.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1364, monster_id = 28030401, pos = { x = 2946.854, y = 235.992, z = -1773.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1365, monster_id = 28030401, pos = { x = 2945.910, y = 235.982, z = -1773.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1366, monster_id = 28030401, pos = { x = 2945.650, y = 236.065, z = -1775.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1367, monster_id = 28030401, pos = { x = 2954.181, y = 236.950, z = -1796.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1368, monster_id = 28030401, pos = { x = 2955.482, y = 236.885, z = -1795.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1369, monster_id = 28030401, pos = { x = 2955.326, y = 236.949, z = -1798.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1370, monster_id = 28030401, pos = { x = 2953.582, y = 236.932, z = -1794.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1371, monster_id = 28030401, pos = { x = 2953.384, y = 236.006, z = -1774.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1372, monster_id = 28030401, pos = { x = 2953.774, y = 236.024, z = -1775.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1373, monster_id = 28030401, pos = { x = 2954.311, y = 235.958, z = -1774.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1374, monster_id = 28030401, pos = { x = 2949.737, y = 234.945, z = -1758.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1375, monster_id = 28030401, pos = { x = 2950.865, y = 234.957, z = -1758.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1376, monster_id = 28030401, pos = { x = 2948.323, y = 235.002, z = -1758.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 1391, monster_id = 20011201, pos = { x = 2907.646, y = 262.872, z = -1592.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1392, monster_id = 20011201, pos = { x = 2905.441, y = 262.927, z = -1593.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1393, monster_id = 20011201, pos = { x = 2906.762, y = 263.069, z = -1594.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3363, gadget_id = 70211101, pos = { x = 2963.598, y = 242.660, z = -1629.048 }, rot = { x = 6.502, y = 154.460, z = 3.578 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3364, gadget_id = 70211101, pos = { x = 2927.074, y = 211.182, z = -1579.745 }, rot = { x = 0.000, y = 46.117, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 497, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2906.761, y = 263.010, z = -1593.949 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000497, name = "ENTER_REGION_497", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_497", action = "action_EVENT_ENTER_REGION_497" }
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
		monsters = { 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1353, 1354, 1355, 1356, 1357, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376 },
		gadgets = { 3363, 3364 },
		regions = { 497 },
		triggers = { "ENTER_REGION_497" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_497(context, evt)
	if evt.param1 ~= 497 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_497(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1391, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1392, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1393, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end