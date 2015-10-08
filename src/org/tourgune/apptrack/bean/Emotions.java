package org.tourgune.apptrack.bean;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;


/**
 * AppTrack
 *
 * Created by CICtourGUNE on 10/04/13.
 * Copyright (c) 2013 CICtourGUNE. All rights reserved.
 * 
 * Bean de la tabla puntos de la base de datos
 */

@XmlRootElement
public class Emotions {
	
	int user;
	int pleasure;
	int arousal;
	int dominance;
	int idpunto;
	String date;
	
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public int getPleasure() {
		return pleasure;
	}
	public void setPleasure(int pleasure) {
		this.pleasure = pleasure;
	}
	public int getArousal() {
		return arousal;
	}
	public void setArousal(int arousal) {
		this.arousal = arousal;
	}
	public int getDominance() {
		return dominance;
	}
	public void setDominance(int dominance) {
		this.dominance = dominance;
	}
	public int getIdpunto() {
		return idpunto;
	}
	public void setIdpunto(int idpunto) {
		this.idpunto = idpunto;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
}
