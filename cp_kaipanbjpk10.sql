﻿CREATE TABLE IF NOT EXISTS `cp_kaipanbjpk10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phase` bigint(20) NOT NULL COMMENT '期数 北京赛车的期数是连续的',
  `kaipantime` datetime NOT NULL COMMENT '开盘时间',
  `fengpantime` datetime NOT NULL COMMENT '封盘时间',
  `kaijiangtime` datetime NOT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1未开盘2开盘中3已开奖',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phase` (`phase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=180 ;


INSERT INTO `cp_kaipanbjpk10` (`id`, `phase`, `kaipantime`, `fengpantime`, `kaijiangtime`, `status`) VALUES
(1, 573861, '2016-09-04 09:02:05', '2016-09-04 09:06:00', '2016-09-04 09:07:00', 2),
(2, 573862, '2016-09-04 09:07:00', '2016-09-04 09:10:55', '2016-09-04 09:11:55', 1),
(3, 573863, '2016-09-04 09:11:55', '2016-09-04 09:15:50', '2016-09-04 09:16:50', 1),
(4, 573864, '2016-09-04 09:16:50', '2016-09-04 09:20:45', '2016-09-04 09:21:45', 1),
(5, 573865, '2016-09-04 09:21:45', '2016-09-04 09:25:40', '2016-09-04 09:26:40', 1),
(6, 573866, '2016-09-04 09:26:40', '2016-09-04 09:30:35', '2016-09-04 09:31:35', 1),
(7, 573867, '2016-09-04 09:31:35', '2016-09-04 09:35:30', '2016-09-04 09:36:30', 1),
(8, 573868, '2016-09-04 09:36:30', '2016-09-04 09:40:25', '2016-09-04 09:41:25', 1),
(9, 573869, '2016-09-04 09:41:25', '2016-09-04 09:45:20', '2016-09-04 09:46:20', 1),
(10, 573870, '2016-09-04 09:46:20', '2016-09-04 09:50:15', '2016-09-04 09:51:15', 1),
(11, 573871, '2016-09-04 09:51:15', '2016-09-04 09:55:10', '2016-09-04 09:56:10', 1),
(12, 573872, '2016-09-04 09:56:10', '2016-09-04 10:00:05', '2016-09-04 10:01:05', 1),
(13, 573873, '2016-09-04 10:01:05', '2016-09-04 10:05:00', '2016-09-04 10:06:00', 1),
(14, 573874, '2016-09-04 10:06:00', '2016-09-04 10:09:55', '2016-09-04 10:10:55', 1),
(15, 573875, '2016-09-04 10:10:55', '2016-09-04 10:14:50', '2016-09-04 10:15:50', 1),
(16, 573876, '2016-09-04 10:15:50', '2016-09-04 10:19:45', '2016-09-04 10:20:45', 1),
(17, 573877, '2016-09-04 10:20:45', '2016-09-04 10:24:40', '2016-09-04 10:25:40', 1),
(18, 573878, '2016-09-04 10:25:40', '2016-09-04 10:29:35', '2016-09-04 10:30:35', 1),
(19, 573879, '2016-09-04 10:30:35', '2016-09-04 10:34:30', '2016-09-04 10:35:30', 1),
(20, 573880, '2016-09-04 10:35:30', '2016-09-04 10:39:25', '2016-09-04 10:40:25', 1),
(21, 573881, '2016-09-04 10:40:25', '2016-09-04 10:44:20', '2016-09-04 10:45:20', 1),
(22, 573882, '2016-09-04 10:45:20', '2016-09-04 10:49:15', '2016-09-04 10:50:15', 1),
(23, 573883, '2016-09-04 10:50:15', '2016-09-04 10:54:10', '2016-09-04 10:55:10', 1),
(24, 573884, '2016-09-04 10:55:10', '2016-09-04 10:59:05', '2016-09-04 11:00:05', 1),
(25, 573885, '2016-09-04 11:00:05', '2016-09-04 11:04:00', '2016-09-04 11:05:00', 1),
(26, 573886, '2016-09-04 11:05:00', '2016-09-04 11:08:55', '2016-09-04 11:09:55', 1),
(27, 573887, '2016-09-04 11:09:55', '2016-09-04 11:13:50', '2016-09-04 11:14:50', 1),
(28, 573888, '2016-09-04 11:14:50', '2016-09-04 11:18:45', '2016-09-04 11:19:45', 1),
(29, 573889, '2016-09-04 11:19:45', '2016-09-04 11:23:40', '2016-09-04 11:24:40', 1),
(30, 573890, '2016-09-04 11:24:40', '2016-09-04 11:28:35', '2016-09-04 11:29:35', 1),
(31, 573891, '2016-09-04 11:29:35', '2016-09-04 11:33:30', '2016-09-04 11:34:30', 1),
(32, 573892, '2016-09-04 11:34:30', '2016-09-04 11:38:25', '2016-09-04 11:39:25', 1),
(33, 573893, '2016-09-04 11:39:25', '2016-09-04 11:43:20', '2016-09-04 11:44:20', 1),
(34, 573894, '2016-09-04 11:44:20', '2016-09-04 11:48:15', '2016-09-04 11:49:15', 1),
(35, 573895, '2016-09-04 11:49:15', '2016-09-04 11:53:10', '2016-09-04 11:54:10', 1),
(36, 573896, '2016-09-04 11:54:10', '2016-09-04 11:58:05', '2016-09-04 11:59:05', 1),
(37, 573897, '2016-09-04 11:59:05', '2016-09-04 12:03:00', '2016-09-04 12:04:00', 1),
(38, 573898, '2016-09-04 12:04:00', '2016-09-04 12:07:55', '2016-09-04 12:08:55', 1),
(39, 573899, '2016-09-04 12:08:55', '2016-09-04 12:12:50', '2016-09-04 12:13:50', 1),
(40, 573900, '2016-09-04 12:13:50', '2016-09-04 12:17:45', '2016-09-04 12:18:45', 1),
(41, 573901, '2016-09-04 12:18:45', '2016-09-04 12:22:40', '2016-09-04 12:23:40', 1),
(42, 573902, '2016-09-04 12:23:40', '2016-09-04 12:27:35', '2016-09-04 12:28:35', 1),
(43, 573903, '2016-09-04 12:28:35', '2016-09-04 12:32:30', '2016-09-04 12:33:30', 1),
(44, 573904, '2016-09-04 12:33:30', '2016-09-04 12:37:25', '2016-09-04 12:38:25', 1),
(45, 573905, '2016-09-04 12:38:25', '2016-09-04 12:42:20', '2016-09-04 12:43:20', 1),
(46, 573906, '2016-09-04 12:43:20', '2016-09-04 12:47:15', '2016-09-04 12:48:15', 1),
(47, 573907, '2016-09-04 12:48:15', '2016-09-04 12:52:10', '2016-09-04 12:53:10', 1),
(48, 573908, '2016-09-04 12:53:10', '2016-09-04 12:57:05', '2016-09-04 12:58:05', 1),
(49, 573909, '2016-09-04 12:58:05', '2016-09-04 13:02:00', '2016-09-04 13:03:00', 1),
(50, 573910, '2016-09-04 13:03:00', '2016-09-04 13:06:55', '2016-09-04 13:07:55', 1),
(51, 573911, '2016-09-04 13:07:55', '2016-09-04 13:11:50', '2016-09-04 13:12:50', 1),
(52, 573912, '2016-09-04 13:12:50', '2016-09-04 13:16:45', '2016-09-04 13:17:45', 1),
(53, 573913, '2016-09-04 13:17:45', '2016-09-04 13:21:40', '2016-09-04 13:22:40', 1),
(54, 573914, '2016-09-04 13:22:40', '2016-09-04 13:26:35', '2016-09-04 13:27:35', 1),
(55, 573915, '2016-09-04 13:27:35', '2016-09-04 13:31:30', '2016-09-04 13:32:30', 1),
(56, 573916, '2016-09-04 13:32:30', '2016-09-04 13:36:25', '2016-09-04 13:37:25', 1),
(57, 573917, '2016-09-04 13:37:25', '2016-09-04 13:41:20', '2016-09-04 13:42:20', 1),
(58, 573918, '2016-09-04 13:42:20', '2016-09-04 13:46:15', '2016-09-04 13:47:15', 1),
(59, 573919, '2016-09-04 13:47:15', '2016-09-04 13:51:10', '2016-09-04 13:52:10', 1),
(60, 573920, '2016-09-04 13:52:10', '2016-09-04 13:56:05', '2016-09-04 13:57:05', 1),
(61, 573921, '2016-09-04 13:57:05', '2016-09-04 14:01:00', '2016-09-04 14:02:00', 1),
(62, 573922, '2016-09-04 14:02:00', '2016-09-04 14:05:55', '2016-09-04 14:06:55', 1),
(63, 573923, '2016-09-04 14:06:55', '2016-09-04 14:10:50', '2016-09-04 14:11:50', 1),
(64, 573924, '2016-09-04 14:11:50', '2016-09-04 14:15:45', '2016-09-04 14:16:45', 1),
(65, 573925, '2016-09-04 14:16:45', '2016-09-04 14:20:40', '2016-09-04 14:21:40', 1),
(66, 573926, '2016-09-04 14:21:40', '2016-09-04 14:25:35', '2016-09-04 14:26:35', 1),
(67, 573927, '2016-09-04 14:26:35', '2016-09-04 14:30:30', '2016-09-04 14:31:30', 1),
(68, 573928, '2016-09-04 14:31:30', '2016-09-04 14:35:25', '2016-09-04 14:36:25', 1),
(69, 573929, '2016-09-04 14:36:25', '2016-09-04 14:40:20', '2016-09-04 14:41:20', 1),
(70, 573930, '2016-09-04 14:41:20', '2016-09-04 14:45:15', '2016-09-04 14:46:15', 1),
(71, 573931, '2016-09-04 14:46:15', '2016-09-04 14:50:10', '2016-09-04 14:51:10', 1),
(72, 573932, '2016-09-04 14:51:10', '2016-09-04 14:55:05', '2016-09-04 14:56:05', 1),
(73, 573933, '2016-09-04 14:56:05', '2016-09-04 15:00:00', '2016-09-04 15:01:00', 1),
(74, 573934, '2016-09-04 15:01:00', '2016-09-04 15:04:55', '2016-09-04 15:05:55', 1),
(75, 573935, '2016-09-04 15:05:55', '2016-09-04 15:09:50', '2016-09-04 15:10:50', 1),
(76, 573936, '2016-09-04 15:10:50', '2016-09-04 15:14:45', '2016-09-04 15:15:45', 1),
(77, 573937, '2016-09-04 15:15:45', '2016-09-04 15:19:40', '2016-09-04 15:20:40', 1),
(78, 573938, '2016-09-04 15:20:40', '2016-09-04 15:24:35', '2016-09-04 15:25:35', 1),
(79, 573939, '2016-09-04 15:25:35', '2016-09-04 15:29:30', '2016-09-04 15:30:30', 1),
(80, 573940, '2016-09-04 15:30:30', '2016-09-04 15:34:25', '2016-09-04 15:35:25', 1),
(81, 573941, '2016-09-04 15:35:25', '2016-09-04 15:39:20', '2016-09-04 15:40:20', 1),
(82, 573942, '2016-09-04 15:40:20', '2016-09-04 15:44:15', '2016-09-04 15:45:15', 1),
(83, 573943, '2016-09-04 15:45:15', '2016-09-04 15:49:10', '2016-09-04 15:50:10', 1),
(84, 573944, '2016-09-04 15:50:10', '2016-09-04 15:54:05', '2016-09-04 15:55:05', 1),
(85, 573945, '2016-09-04 15:55:05', '2016-09-04 15:59:00', '2016-09-04 16:00:00', 1),
(86, 573946, '2016-09-04 16:00:00', '2016-09-04 16:03:55', '2016-09-04 16:04:55', 1),
(87, 573947, '2016-09-04 16:04:55', '2016-09-04 16:08:50', '2016-09-04 16:09:50', 1),
(88, 573948, '2016-09-04 16:09:50', '2016-09-04 16:13:45', '2016-09-04 16:14:45', 1),
(89, 573949, '2016-09-04 16:14:45', '2016-09-04 16:18:40', '2016-09-04 16:19:40', 1),
(90, 573950, '2016-09-04 16:19:40', '2016-09-04 16:23:35', '2016-09-04 16:24:35', 1),
(91, 573951, '2016-09-04 16:24:35', '2016-09-04 16:28:30', '2016-09-04 16:29:30', 1),
(92, 573952, '2016-09-04 16:29:30', '2016-09-04 16:33:25', '2016-09-04 16:34:25', 1),
(93, 573953, '2016-09-04 16:34:25', '2016-09-04 16:38:20', '2016-09-04 16:39:20', 1),
(94, 573954, '2016-09-04 16:39:20', '2016-09-04 16:43:15', '2016-09-04 16:44:15', 1),
(95, 573955, '2016-09-04 16:44:15', '2016-09-04 16:48:10', '2016-09-04 16:49:10', 1),
(96, 573956, '2016-09-04 16:49:10', '2016-09-04 16:53:05', '2016-09-04 16:54:05', 1),
(97, 573957, '2016-09-04 16:54:05', '2016-09-04 16:58:00', '2016-09-04 16:59:00', 1),
(98, 573958, '2016-09-04 16:59:00', '2016-09-04 17:02:55', '2016-09-04 17:03:55', 1),
(99, 573959, '2016-09-04 17:03:55', '2016-09-04 17:07:50', '2016-09-04 17:08:50', 1),
(100, 573960, '2016-09-04 17:08:50', '2016-09-04 17:12:45', '2016-09-04 17:13:45', 1),
(101, 573961, '2016-09-04 17:13:45', '2016-09-04 17:17:40', '2016-09-04 17:18:40', 1),
(102, 573962, '2016-09-04 17:18:40', '2016-09-04 17:22:35', '2016-09-04 17:23:35', 1),
(103, 573963, '2016-09-04 17:23:35', '2016-09-04 17:27:30', '2016-09-04 17:28:30', 1),
(104, 573964, '2016-09-04 17:28:30', '2016-09-04 17:32:25', '2016-09-04 17:33:25', 1),
(105, 573965, '2016-09-04 17:33:25', '2016-09-04 17:37:20', '2016-09-04 17:38:20', 1),
(106, 573966, '2016-09-04 17:38:20', '2016-09-04 17:42:15', '2016-09-04 17:43:15', 1),
(107, 573967, '2016-09-04 17:43:15', '2016-09-04 17:47:10', '2016-09-04 17:48:10', 1),
(108, 573968, '2016-09-04 17:48:10', '2016-09-04 17:52:05', '2016-09-04 17:53:05', 1),
(109, 573969, '2016-09-04 17:53:05', '2016-09-04 17:57:00', '2016-09-04 17:58:00', 1),
(110, 573970, '2016-09-04 17:58:00', '2016-09-04 18:01:55', '2016-09-04 18:02:55', 1),
(111, 573971, '2016-09-04 18:02:55', '2016-09-04 18:06:50', '2016-09-04 18:07:50', 1),
(112, 573972, '2016-09-04 18:07:50', '2016-09-04 18:11:45', '2016-09-04 18:12:45', 1),
(113, 573973, '2016-09-04 18:12:45', '2016-09-04 18:16:40', '2016-09-04 18:17:40', 1),
(114, 573974, '2016-09-04 18:17:40', '2016-09-04 18:21:35', '2016-09-04 18:22:35', 1),
(115, 573975, '2016-09-04 18:22:35', '2016-09-04 18:26:30', '2016-09-04 18:27:30', 1),
(116, 573976, '2016-09-04 18:27:30', '2016-09-04 18:31:25', '2016-09-04 18:32:25', 1),
(117, 573977, '2016-09-04 18:32:25', '2016-09-04 18:36:20', '2016-09-04 18:37:20', 1),
(118, 573978, '2016-09-04 18:37:20', '2016-09-04 18:41:15', '2016-09-04 18:42:15', 1),
(119, 573979, '2016-09-04 18:42:15', '2016-09-04 18:46:10', '2016-09-04 18:47:10', 1),
(120, 573980, '2016-09-04 18:47:10', '2016-09-04 18:51:05', '2016-09-04 18:52:05', 1),
(121, 573981, '2016-09-04 18:52:05', '2016-09-04 18:56:00', '2016-09-04 18:57:00', 1),
(122, 573982, '2016-09-04 18:57:00', '2016-09-04 19:00:55', '2016-09-04 19:01:55', 1),
(123, 573983, '2016-09-04 19:01:55', '2016-09-04 19:05:50', '2016-09-04 19:06:50', 1),
(124, 573984, '2016-09-04 19:06:50', '2016-09-04 19:10:45', '2016-09-04 19:11:45', 1),
(125, 573985, '2016-09-04 19:11:45', '2016-09-04 19:15:40', '2016-09-04 19:16:40', 1),
(126, 573986, '2016-09-04 19:16:40', '2016-09-04 19:20:35', '2016-09-04 19:21:35', 1),
(127, 573987, '2016-09-04 19:21:35', '2016-09-04 19:25:30', '2016-09-04 19:26:30', 1),
(128, 573988, '2016-09-04 19:26:30', '2016-09-04 19:30:25', '2016-09-04 19:31:25', 1),
(129, 573989, '2016-09-04 19:31:25', '2016-09-04 19:35:20', '2016-09-04 19:36:20', 1),
(130, 573990, '2016-09-04 19:36:20', '2016-09-04 19:40:15', '2016-09-04 19:41:15', 1),
(131, 573991, '2016-09-04 19:41:15', '2016-09-04 19:45:10', '2016-09-04 19:46:10', 1),
(132, 573992, '2016-09-04 19:46:10', '2016-09-04 19:50:05', '2016-09-04 19:51:05', 1),
(133, 573993, '2016-09-04 19:51:05', '2016-09-04 19:55:00', '2016-09-04 19:56:00', 1),
(134, 573994, '2016-09-04 19:56:00', '2016-09-04 19:59:55', '2016-09-04 20:00:55', 1),
(135, 573995, '2016-09-04 20:00:55', '2016-09-04 20:04:50', '2016-09-04 20:05:50', 1),
(136, 573996, '2016-09-04 20:05:50', '2016-09-04 20:09:45', '2016-09-04 20:10:45', 1),
(137, 573997, '2016-09-04 20:10:45', '2016-09-04 20:14:40', '2016-09-04 20:15:40', 1),
(138, 573998, '2016-09-04 20:15:40', '2016-09-04 20:19:35', '2016-09-04 20:20:35', 1),
(139, 573999, '2016-09-04 20:20:35', '2016-09-04 20:24:30', '2016-09-04 20:25:30', 1),
(140, 574000, '2016-09-04 20:25:30', '2016-09-04 20:29:25', '2016-09-04 20:30:25', 1),
(141, 574001, '2016-09-04 20:30:25', '2016-09-04 20:34:20', '2016-09-04 20:35:20', 1),
(142, 574002, '2016-09-04 20:35:20', '2016-09-04 20:39:15', '2016-09-04 20:40:15', 1),
(143, 574003, '2016-09-04 20:40:15', '2016-09-04 20:44:10', '2016-09-04 20:45:10', 1),
(144, 574004, '2016-09-04 20:45:10', '2016-09-04 20:49:05', '2016-09-04 20:50:05', 1),
(145, 574005, '2016-09-04 20:50:05', '2016-09-04 20:54:00', '2016-09-04 20:55:00', 1),
(146, 574006, '2016-09-04 20:55:00', '2016-09-04 20:58:55', '2016-09-04 20:59:55', 1),
(147, 574007, '2016-09-04 20:59:55', '2016-09-04 21:03:50', '2016-09-04 21:04:50', 1),
(148, 574008, '2016-09-04 21:04:50', '2016-09-04 21:08:45', '2016-09-04 21:09:45', 1),
(149, 574009, '2016-09-04 21:09:45', '2016-09-04 21:13:40', '2016-09-04 21:14:40', 1),
(150, 574010, '2016-09-04 21:14:40', '2016-09-04 21:18:35', '2016-09-04 21:19:35', 1),
(151, 574011, '2016-09-04 21:19:35', '2016-09-04 21:23:30', '2016-09-04 21:24:30', 1),
(152, 574012, '2016-09-04 21:24:30', '2016-09-04 21:28:25', '2016-09-04 21:29:25', 1),
(153, 574013, '2016-09-04 21:29:25', '2016-09-04 21:33:20', '2016-09-04 21:34:20', 1),
(154, 574014, '2016-09-04 21:34:20', '2016-09-04 21:38:15', '2016-09-04 21:39:15', 1),
(155, 574015, '2016-09-04 21:39:15', '2016-09-04 21:43:10', '2016-09-04 21:44:10', 1),
(156, 574016, '2016-09-04 21:44:10', '2016-09-04 21:48:05', '2016-09-04 21:49:05', 1),
(157, 574017, '2016-09-04 21:49:05', '2016-09-04 21:53:00', '2016-09-04 21:54:00', 1),
(158, 574018, '2016-09-04 21:54:00', '2016-09-04 21:57:55', '2016-09-04 21:58:55', 1),
(159, 574019, '2016-09-04 21:58:55', '2016-09-04 22:02:50', '2016-09-04 22:03:50', 1),
(160, 574020, '2016-09-04 22:03:50', '2016-09-04 22:07:45', '2016-09-04 22:08:45', 1),
(161, 574021, '2016-09-04 22:08:45', '2016-09-04 22:12:40', '2016-09-04 22:13:40', 1),
(162, 574022, '2016-09-04 22:13:40', '2016-09-04 22:17:35', '2016-09-04 22:18:35', 1),
(163, 574023, '2016-09-04 22:18:35', '2016-09-04 22:22:30', '2016-09-04 22:23:30', 1),
(164, 574024, '2016-09-04 22:23:30', '2016-09-04 22:27:25', '2016-09-04 22:28:25', 1),
(165, 574025, '2016-09-04 22:28:25', '2016-09-04 22:32:20', '2016-09-04 22:33:20', 1),
(166, 574026, '2016-09-04 22:33:20', '2016-09-04 22:37:15', '2016-09-04 22:38:15', 1),
(167, 574027, '2016-09-04 22:38:15', '2016-09-04 22:42:10', '2016-09-04 22:43:10', 1),
(168, 574028, '2016-09-04 22:43:10', '2016-09-04 22:47:05', '2016-09-04 22:48:05', 1),
(169, 574029, '2016-09-04 22:48:05', '2016-09-04 22:52:00', '2016-09-04 22:53:00', 1),
(170, 574030, '2016-09-04 22:53:00', '2016-09-04 22:56:55', '2016-09-04 22:57:55', 1),
(171, 574031, '2016-09-04 22:57:55', '2016-09-04 23:01:50', '2016-09-04 23:02:50', 1),
(172, 574032, '2016-09-04 23:02:50', '2016-09-04 23:06:45', '2016-09-04 23:07:45', 1),
(173, 574033, '2016-09-04 23:07:45', '2016-09-04 23:11:40', '2016-09-04 23:12:40', 1),
(174, 574034, '2016-09-04 23:12:40', '2016-09-04 23:16:35', '2016-09-04 23:17:35', 1),
(175, 574035, '2016-09-04 23:17:35', '2016-09-04 23:21:30', '2016-09-04 23:22:30', 1),
(176, 574036, '2016-09-04 23:22:30', '2016-09-04 23:26:25', '2016-09-04 23:27:25', 1),
(177, 574037, '2016-09-04 23:27:25', '2016-09-04 23:31:20', '2016-09-04 23:32:20', 1),
(178, 574038, '2016-09-04 23:32:20', '2016-09-04 23:36:15', '2016-09-04 23:37:15', 1),
(179, 574039, '2016-09-04 23:37:15', '2016-09-04 23:41:10', '2016-09-04 23:42:10', 1);
