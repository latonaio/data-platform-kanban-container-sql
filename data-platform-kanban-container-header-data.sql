CREATE TABLE `data_platform_kanban_container_header_data`
(
  `KanbanContainer`              int(16) NOT NULL,
  `BusinessPartner`              int(12) NOT NULL,
  `Plant`                        varchar(4) NOT NULL,
  `StorageLocation`              varchar(4) NOT NULL, 
  `StorageBin`                   varchar(10) NOT NULL,
  `KanbanControlCycle`           varchar(6) NOT NULL,
  `Product`                      varchar(40) NOT NULL,
  `Capacity`                     float(10) DEFAULT NULL,
  `CapacityUnit`                 varchar(3) DEFAULT NULL,
  `CapacityWeight`               float(10) DEFAULT NULL,
  `CapacityWeightUnit`           varchar(3) DEFAULT NULL,
  `CreationDate`                 date NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`KanbanContainer`),
  
  CONSTRAINT `DPFMKanbanContainerHeaderDataStorageBin_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`) REFERENCES `data_platform_storage_bin_general_data` (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
