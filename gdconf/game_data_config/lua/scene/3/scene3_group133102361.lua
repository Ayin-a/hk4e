-- 基础信息
local base_info = {
	group_id = 133102361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361001, gadget_id = 70210105, pos = { x = 1342.724, y = 199.877, z = 171.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361002, gadget_id = 70210101, pos = { x = 1513.756, y = 255.152, z = -153.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 361003, gadget_id = 70210105, pos = { x = 1394.237, y = 200.000, z = 158.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361004, gadget_id = 70211101, pos = { x = 1240.118, y = 199.882, z = 49.999 }, rot = { x = 329.243, y = 29.701, z = 336.198 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361005, gadget_id = 70210063, pos = { x = 1606.642, y = 252.928, z = 293.072 }, rot = { x = 10.728, y = 227.362, z = 359.589 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361007, gadget_id = 70210105, pos = { x = 1385.747, y = 200.000, z = 264.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361008, gadget_id = 70211101, pos = { x = 1398.488, y = 160.584, z = -285.275 }, rot = { x = 350.737, y = 81.048, z = 7.708 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361009, gadget_id = 70211101, pos = { x = 1405.187, y = 161.587, z = -248.019 }, rot = { x = 353.449, y = 191.757, z = 4.241 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361010, gadget_id = 70210063, pos = { x = 1395.040, y = 173.735, z = -188.438 }, rot = { x = 0.000, y = 211.646, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361011, gadget_id = 70211101, pos = { x = 1445.238, y = 201.304, z = 329.576 }, rot = { x = 0.000, y = 89.925, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361012, gadget_id = 70210105, pos = { x = 907.241, y = 200.000, z = 254.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361013, gadget_id = 70211101, pos = { x = 930.623, y = 201.836, z = 262.481 }, rot = { x = 0.000, y = 166.169, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361014, gadget_id = 70211101, pos = { x = 1551.537, y = 222.640, z = 41.399 }, rot = { x = 350.429, y = 177.287, z = 333.111 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361015, gadget_id = 70211103, pos = { x = 1491.485, y = 236.149, z = 110.473 }, rot = { x = 5.910, y = 288.207, z = 356.321 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361016, gadget_id = 70210063, pos = { x = 1684.037, y = 219.821, z = 272.610 }, rot = { x = 1.184, y = 35.442, z = 1.555 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361017, gadget_id = 70210101, pos = { x = 1235.879, y = 200.701, z = -89.896 }, rot = { x = 0.000, y = 156.532, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 361018, gadget_id = 70210101, pos = { x = 1235.079, y = 200.605, z = -93.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 361019, gadget_id = 70210101, pos = { x = 1239.457, y = 200.712, z = -94.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 361020, gadget_id = 70210063, pos = { x = 1516.693, y = 262.708, z = -117.309 }, rot = { x = 347.410, y = 49.600, z = 353.258 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361021, gadget_id = 70210101, pos = { x = 1253.142, y = 201.568, z = 268.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜武器璃月", area_id = 5 },
	{ config_id = 361022, gadget_id = 70210101, pos = { x = 1253.628, y = 201.615, z = 270.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 361024, gadget_id = 70211101, pos = { x = 1137.939, y = 199.729, z = 242.740 }, rot = { x = 358.836, y = 199.764, z = 356.608 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361025, gadget_id = 70210105, pos = { x = 1297.938, y = 200.000, z = 272.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361026, gadget_id = 70210105, pos = { x = 1336.365, y = 200.000, z = 129.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361027, gadget_id = 70210105, pos = { x = 1329.192, y = 200.000, z = 135.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 361028, gadget_id = 70210101, pos = { x = 1182.267, y = 209.629, z = 256.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜破损璃月", area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { },
		gadgets = { 361001, 361002, 361003, 361004, 361005, 361007, 361008, 361009, 361010, 361011, 361012, 361013, 361014, 361015, 361016, 361017, 361018, 361019, 361020, 361021, 361022, 361024, 361025, 361026, 361027, 361028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================