package com.example.demo.controller.PaymentManagement;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.PaymentManagement.PettyCashRegisterDAO;
import com.example.demo.model.PaymentManagement.PettyCashRegister;

@Controller
public class PettyCashRegisterController {

	@Autowired
	private PettyCashRegisterDAO pettyDAO;

	@RequestMapping(value = "Petty_Cash_Issue", method = RequestMethod.GET)
	private String NewPettyCashRegistryEntry(ModelMap model) {

		System.out.println("Goo");
		PettyCashRegister pettyCashRegister = new PettyCashRegister();
		model.addAttribute("pettyCashRegister", pettyCashRegister);

		return "/PaymentManagement/Petty_Cash_Issue.jsp";

	}

	@RequestMapping(value = "/Save", method = RequestMethod.POST)
	public String savetoRegister(@Valid PettyCashRegister pettyCashRegister, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {

		if (result.hasErrors()) {
			return "/PaymentManagement/Petty_Cash_Issue.jsp";
		}

		pettyDAO.Save(pettyCashRegister);
		return "redirect:/PaymentManagement/Find_By_Status";

	}

	@RequestMapping(value = "/PaymentManagement/Find_By_Status")
	private ModelAndView FindByStatus() {

		System.out.println("Goo");
		List<PettyCashRegister> list = pettyDAO.getRegister();
		return new ModelAndView("/PaymentManagement/Find_By_Status.jsp", "list", list);
	}

	@RequestMapping(value = "Find_By_Status_Pending")
	private ModelAndView FindByStatusPending() {

		System.out.println("Goo");
		List<PettyCashRegister> list = pettyDAO.getRegisterByStatus();
		return new ModelAndView("/PaymentManagement/Find_By_Status_Pending.jsp", "list", list);
	}

	/* It opens the record for the given id */
	@RequestMapping(value = "/pettyIssueEdit/{id}", method = RequestMethod.GET)
	public String editregister(@PathVariable int id, ModelMap model) {
		PettyCashRegister pettyCashRegister = pettyDAO.getRegisterById(id);
		model.addAttribute("pettyCashRegister", pettyCashRegister);
		System.out.println("here");
		System.out.println(pettyCashRegister.getAmount());
		return "/PaymentManagement/Petty_Cash_Issue_Edit";

	}

	/* It updates record for the given id in editRegister page and redirects */
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsavemethods(@ModelAttribute("pettyCashRegister") PettyCashRegister p, BindingResult resul) {
		System.out.println("id is" + p.getPettyCashId());
		pettyDAO.edit(p);
		return "/PaymentManagement/Find_By_Status";
	}

	/* It deletes record for the given id and redirects */
	@RequestMapping(value = "/deleteentry/{id}", method = RequestMethod.GET)
	public ModelAndView delete1(@PathVariable int id) {
		pettyDAO.delete(id);
		return new ModelAndView("redirect:/PaymentManagement/Find_By_Status");
	}

	@RequestMapping(value = "/Payment_Home")
	public String Paymenthome() {

		System.out.println("gooooowwasmkadnaskl");
		return "PaymentManagement/Payment_Home.jsp";
	}

	@RequestMapping(value = "/clientsPayments")
	public String Clienthome() {

		return "/PaymentManagement/Clients_Payments_Home.jsp";
	}

	@RequestMapping(value = "/chequePayments")
	public String ClientCheque() {

		return "/PaymentManagement/Cheque_Payments.jsp";
	}

	@RequestMapping(value = "/employeePayments")
	public String EmployeePay() {

		return "/PaymentManagement/Employee_Payments.jsp";
	}

	@RequestMapping(value = "/pettyCashRegister")
	public String PettyCash() {

		return "/PaymentManagement/Petty_Cash_Home.jsp";
	}

	@RequestMapping(value = "/home1")
	public String returnhome() {

		return "/PaymentManagement/home1.jsp";
	}

	@RequestMapping(value = "/Petty_Cash_Issue_Edit")
	public String returnregister() {

		return "/PaymentManagement/Petty_Cash_Issue_Edit.jsp";
	}

	
	@RequestMapping("/pettycashregisterreport")
	public String pettycashregisterreport() {
		
		
		return "/PaymentManagement/PaymentManagementReports.jsp";
		
		
	}
}
