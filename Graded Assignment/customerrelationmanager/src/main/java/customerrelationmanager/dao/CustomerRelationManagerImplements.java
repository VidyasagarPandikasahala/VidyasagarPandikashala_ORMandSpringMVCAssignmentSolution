package customerrelationmanager.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import customerrelationmanager.model.CustomerRelationManager;

@Component
public class CustomerRelationManagerImplements implements CustomerRelationManagerDao {
	
	//session factory is configured into template in dispatcher servlet
	@Autowired
	private HibernateTemplate hibernateTemplate;

	//list of customer is send to the database
	@Override
	@Transactional
	public List<CustomerRelationManager> getList() {
		List<CustomerRelationManager> crm = this.hibernateTemplate.loadAll(CustomerRelationManager.class);
		return crm;
	}

	//Customer data is retrieved by using ID
	
	@Override
	@Transactional
	public CustomerRelationManager getCustomer(int crmId) {

		return this.hibernateTemplate.get(CustomerRelationManager.class, crmId);
	}

	//Customer data is deleted by using ID
	@Override
	@Transactional
	public void deleteCustomer(int crmId) {
		CustomerRelationManager crm = this.hibernateTemplate.get(CustomerRelationManager.class, crmId);
		this.hibernateTemplate.delete(crm);
	}

	//Customer data is added or updated 
	@Override
	@Transactional
	public void createCustomer(CustomerRelationManager customerRelationManager) {
		this.hibernateTemplate.saveOrUpdate(customerRelationManager);

	}

}
