package customerrelationmanager.dao;

import java.util.List;

import customerrelationmanager.model.CustomerRelationManager;

public interface CustomerRelationManagerDao {
	
	public List<CustomerRelationManager> getList();
	public CustomerRelationManager getCustomer(int crmId);
	public void deleteCustomer(int crmId);
	public void createCustomer(CustomerRelationManager customerRelationManager);

}


