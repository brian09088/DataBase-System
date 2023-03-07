-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-03-07 04:16:49
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `資料庫系統lab`
--

-- --------------------------------------------------------

--
-- 資料表結構 `小型圖書館系統`
--

CREATE TABLE `小型圖書館系統` (
  `作者` text DEFAULT NULL,
  `指導教授` text NOT NULL DEFAULT '王友群教授',
  `類別` text NOT NULL DEFAULT '碩士學位論文',
  `書刊名` text DEFAULT NULL,
  `中國圖書分類號` text NOT NULL,
  `可否借閱` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `小型圖書館系統`
--

INSERT INTO `小型圖書館系統` (`作者`, `指導教授`, `類別`, `書刊名`, `中國圖書分類號`, `可否借閱`) VALUES
('俞建珏', '王友群教授', '碩士學位論文', '於存在惡意節點的網路中利用代幣流通有效提升 D2D 轉傳 = Efficient Circulation of Tokens to Promote D2D Relay with Existence of Malicious Nodes', '008', 1),
('何承恩', '王友群教授', '碩士學位論文', '在車載網路下具速度感知的流量管理機制以緩解網路壅塞 = Speed-Aware Flow Management Mechanism to Mitigate Network Congestion in VANETs', '008 34M 2022 8774', 1),
('葉文敬', '王友群教授', '碩士學位論文', '在LTE-A CoMP網路下基於動態細胞選擇之高效率的資源分配策略以提升吞吐量的公平性 = Efficient Resource Allocation to Improve Throughput Fairness based on Dynamic Point Selection in LTE-A CoMP Networks', '008 34M 2022 8868', 1),
('吳澂諺', '王友群教授', '碩士學位論文', '基於NAPT與自適應閾值於SDN網路中有效抵禦DrDoS攻擊 = Efficient Defense Against DrDoS Attacks based on NAPT and Adaptive Threshold in SDN-based Networks', '008 34M 2022 8865', 1),
('范佳昕', '王友群教授', '碩士學位論文', '低成本、高效率的資源分配方法以提升窄頻物聯網之吞吐量 = Low-Cost, High-Efficiency Resource Scheduling to Improve Throughput in NB-IoT Networks', '008 34M 2022 8666', 1),
('吳尚浩', '王友群教授', '碩士學位論文', '高效率VNF部署以達成雲端網路的負載平衡 = Efficient Deployment of Virtual Network Functions for Load Balance in Cloud Networks', '008 34M 2021 8853', 1),
('陳哲儀', '王友群教授', '碩士學位論文', '具自適性的無人機路徑規劃以有效識別過量排放廢氣之煙囪 = Adaptive Path Scheduling of Drones to Efficiently Recognize Chimneys with Excessive Exhaust Emissions', '008 34M 2021 8745', 1),
('嚴立家', '王友群教授', '碩士學位論文', '利用SDN技術於具多重子網路下的協同式異質流管理 = Cooperative Management of Heterogeneous Flows in Multi-subnet Networks by using SDN', '008 34M 2021 8836', 1),
('蘇品瑜', '王友群教授', '碩士學位論文', '結合 P4 交換器與 SDN 控制器共同抵禦複合式網路攻擊 = Collaborative Defense Against Compound Attacks by P4-switches and SDN Controllers', '008 34M 2021 8855', 1),
('朱晉廷', '王友群教授', '碩士學位論文', '有效派遣移動式基地台以改善 5G 網路吞吐量 = Efficient Dispatch of Mobile Cell Sites to Improve Throughput in 5G Networks', '008 34M 2021 8949', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
