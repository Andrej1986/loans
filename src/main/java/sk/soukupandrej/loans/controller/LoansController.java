package sk.soukupandrej.loans.controller;

import org.apache.catalina.LifecycleState;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import sk.soukupandrej.loans.model.Customer;
import sk.soukupandrej.loans.model.Loans;
import sk.soukupandrej.loans.repository.LoansRepository;

import java.util.List;

@RestController
public class LoansController {
    @Autowired
    private LoansRepository loansRepository;

    @PostMapping("/myLoans")
    public List<Loans> getLoansDetails(@RequestBody Customer customer){
        return loansRepository.findByCustomerIdOrderByStartDtDesc(customer.getCustomerId());
    }
}
