package com.keypoint.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.keypoint.dao.WorkOrderDAO;
import com.keypoint.dto.WorkOrderDTO;


@Service
public class WorkOrderService {

	@Inject
	private WorkOrderDAO workOrderDAO;
	
	public void insertWorkOrder(WorkOrderDTO workOrderDTO) {
		System.out.println("workOrderService insertWorkOrder()");
		
		workOrderDTO.setWoDate(new Timestamp(System.currentTimeMillis()));
		
		workOrderDAO.insertWorkOrder(workOrderDTO);
		
	} // insertWorkOrder

	
	public List<WorkOrderDTO> getWorkProdList(Map<String, Object> search) {
		System.out.println("WorkOrderService getWorkOrderList");
		return workOrderDAO.getWorkProdList(search);
	}


	public Integer countWorkList(Map<String, Object> search) { // 품목 개수
		System.out.println("PerformServiceImpl countItemlist()");
		return workOrderDAO.countWorkList(search);
	}

	}

