SELECT ?, ?,
	  ?,
	  ?,  
	  AVG(CreditScore),
	  COUNT(*)
FROM prosper_loan_data_csv
WHERE LoanStatus = 0 AND
NOT(IsBorrowerHomeowner)
GROUP BY LoanStatus, IsBorrowerHomeowner, ProsperScore, EmploymentStatus

---

# TODO - 2

---

  * PROFILE AND DISTRIBUTION OF TOTAL LOANS OUTSTANDING FOR BORROWERS WHOSE LOAN STATUS IS '1' AND ARE HOMEOWNERS. PROFILE SHOULD INCLUDE EMPLOYMENT STATUS, PROSPER SCORE AND CREDIT SCORE

SELECT  LoanStatus, ProsperScore, EmploymentStatus, IsBorrowerHomeowner,
	  CreditScore,
	  SUM (?) AS TotalProsperPrincipalOutstanding,
	  COUNT(*)
FROM prosper_loan_data_csv
WHERE
	? = 1 AND
	IsBorrowerHomeowner
GROUP BY
	  LoanStatus, ProsperScore, EmploymentStatus, IsBorrowerHomeowner, CreditScore
ORDER BY ? DESC

---

# TODO -3

---

  * QUERY TO VIEW THE FOLLOWING DETAILS FOR THE GROUP WHO HAVE NOT HAD ANY DELAY IN PAYMENTS -
(a) LOAN STATUS
(b) BORROWER STATE
(c) PROSPER SCORE
(d) IS BORROWER A HOME OWNER
(e) AVERAGE CREDIT SCORE FOR THE GROUP
(f) ON TIME PAYMENTS
(g) DELAY IN PAYMENTS
(h) SUM AND AVERAGE OF THE FOLLOWING
	(i)  ProsperPrincipalOutstanding
	(ii) AmountDelinquent
	(iii)CurrentDelinquencies


SELECT *
FROM 	
	(SELECT 	
		LoanStatus, BorrowerState, ProsperScore, IsBorrowerHomeowner,
		AVG(CreditScore) AS AvgCreditScore,
		SUM(OnTimeProsperPayments) As OnTimeProsperPayments,
		(SUM(ProsperPaymentsLessThanOneMonthLate)+SUM(ProsperPaymentsOneMonthPlusLate)) AS DelayinProsperPayments,
		SUM(ProsperPrincipalOutstanding) AS SumProsperPrincipalOutstanding,
		AVG(ProsperPrincipalOutstanding) AS AvgProsperPrincipalOutstanding,
		AVG(AmountDelinquent) AS AvgAmountDelinquent,
		SUM(AmountDelinquent) AS SumAmountDelinquent,
		AVG(CurrentDelinquencies) AS AvgCurrentDelinquencies,
		SUM(CurrentDelinquencies) AS SumCurrentDelinquencies
	FROM 	prosper_loan_data_csv
	WHERE 	? > 0
	GROUP BY
			?
WHERE ? > 0
