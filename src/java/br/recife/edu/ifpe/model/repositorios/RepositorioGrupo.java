/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.recife.edu.ifpe.model.repositorios;

import br.recife.edu.ifpe.model.classes.Grupo;
import java.util.ArrayList;
import java.util.List;

public class RepositorioGrupo {
    
    private static RepositorioGrupo myself = null;
    
    private List<Grupo> grupos;
    
    private RepositorioGrupo(){
        this.grupos = new ArrayList<>();
    }
        
    
    	static {   		
   		
   		Grupo g = new Grupo();
                Grupo g2 = new Grupo();
                Grupo g3 = new Grupo();
   		
   		   		
   		g.setId(01);
   		g.setDenominacao("crianca");
   		g.setIdadeMinima(1);
                g.setIdadeMaxima(11);
                
                
                g2.setId(02);
   		g2.setDenominacao("adulto");
   		g2.setIdadeMinima(12);
                g2.setIdadeMaxima(59);
                
                g3.setId(03);
   		g3.setDenominacao("idoso");
   		g3.setIdadeMinima(60);
                g3.setIdadeMaxima(2021);
   		
		getCurrentInstance().insert(g);  
                getCurrentInstance().insert(g2);  
                getCurrentInstance().insert(g3); 
   		
   		
   	}
    
    public static RepositorioGrupo getCurrentInstance(){
        if(myself == null)
            myself = new RepositorioGrupo();
        
        return myself;
    }
    
    public void insert(Grupo grupo){
        this.grupos.add(grupo);
    }
    
    public void update(Grupo grupo){
        for(Grupo g: this.grupos){
            if(g.getId()==grupo.getId()){
                g.setDenominacao(grupo.getDenominacao());
                g.setIdadeMaxima(grupo.getIdadeMaxima());
                g.setIdadeMinima(grupo.getIdadeMinima());
                
                return;
            }
        }
    }
    
    public Grupo read(int id){
        for(Grupo g: this.grupos){
            if(g.getId() == id){
                return g;
            }
        }
        return null;
    }
    
    public void delete(Grupo grupo){
        this.grupos.remove(grupo);
    }
    
    public List<Grupo> readAll(){
        return this.grupos;
    }
    
    public int qualMeuGrupo(int idade){
        int idGrupo= 0;
            
            if(idade >= 1 && idade <= 11){
                idGrupo =  01;
            } 
            if(idade >= 12 && idade <= 59){
                idGrupo = 02;
            }
             if(idade >= 60 && idade <= 2021){
                idGrupo = 03;
            } 
       
        return idGrupo;
    }
    
    
    
}
