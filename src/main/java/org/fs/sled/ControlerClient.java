package org.fs.sled;

import org.fs.sled.entity.Authentification;
import org.fs.sled.metier.IMetier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/client")
public class ControlerClient {
	@Autowired
	private IMetier metier;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		model.addAttribute("indix", "listecite");
		model.addAttribute("logins", new Authentification());
		model.addAttribute("listecite",metier.listeCite());
		return "AccueilClient";
	}

}
