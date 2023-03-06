package sk.soukupandrej.loans.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sk.soukupandrej.loans.model.Loans;

import java.util.List;

@Repository
public interface LoansRepository extends JpaRepository<Loans, Long> {
    List<Loans> findByCustomerIdOrderByStartDtDesc(int customerId);
}
