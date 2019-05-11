package pantallas;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.border.LineBorder;
import componentes.Botones;
import componentes.Paneles;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class Galeria extends Paneles{
	private Ventana ventana;
	
	public Galeria(Ventana ventana) {
		super();
		this.ventana=ventana;
		
		ImageIcon[] imagenes = new ImageIcon[4];
		imagenes[0] = new ImageIcon("./recursos/imagenes/galeria/popollo.png");
		imagenes[1] = new ImageIcon("./recursos/imagenes/galeria/morrigan.png");
		imagenes[2] = new ImageIcon("./recursos/imagenes/galeria/dancer low.png");	
		imagenes[3] = new ImageIcon("./recursos/imagenes/galeria/poring.png");
		
		//Añadiendo Botones
		Botones botonPopollo = new Botones("Popollo");
		botonPopollo.setBounds(548, 100, 165, 23);
		add(botonPopollo);
		
		Botones botonMystra = new Botones("Mystra");
		botonMystra.setBounds(548, 176, 165, 23);
		add(botonMystra);
		
		Botones botonNarcyl = new Botones("Narcyl");
		botonNarcyl.setBounds(548, 255, 165, 23);
		add(botonNarcyl);
		
		Botones botonTomberi = new Botones("Tomberi");
		botonTomberi.setBounds(548, 329, 165, 23);
		add(botonTomberi);
		
		Botones botonPuntoDescanso = new Botones("Punto Descanso");
		botonPuntoDescanso.setBounds(548, 400, 165, 23);
		add(botonPuntoDescanso);
		
		Botones botonPoring = new Botones("Poring");
		botonPoring.setBounds(759, 100, 165, 23);
		add(botonPoring);
				
		Botones botonNigromante = new Botones("Nigromante");
		botonNigromante.setBounds(759, 176, 165, 23);
		add(botonNigromante);
		
		Botones botonGolem = new Botones("Golem");
		botonGolem.setBounds(759, 255, 165, 23);
		add(botonGolem);
		
		Botones botonGoblin = new Botones("Goblin");
		botonGoblin.setBounds(759, 329, 165, 23);
		add(botonGoblin);
		
		Botones botonPulpoi = new Botones("Pulpoi");
		botonPulpoi.setBounds(759, 400, 165, 23);
		add(botonPulpoi);
		
		Botones botonAtras = new Botones("Volver al inicio");
		botonAtras.setBounds(657, 459, 165, 23);
		add(botonAtras);	
		
		//JLabel donde se muestra las imagenes de la galeria
		JLabel imagenGaleria = new JLabel("");
		imagenGaleria.setBorder(new LineBorder(new Color(0, 0, 0), 3));
		imagenGaleria.setBounds(69, 33, 406, 466);
		imagenGaleria.setIcon(imagenes[0]);
		add(imagenGaleria);
		
		//Eventos de boton
		botonPopollo.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[0]);
			}
		});
		
		botonPulpoi.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonMystra.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonNarcyl.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[2]);
			}
		});
		
		botonTomberi.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonPuntoDescanso.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
			}
		});
		
		botonPoring.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[3]);
			}
		});
		
		botonNigromante.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonGolem.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonGoblin.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				imagenGaleria.setIcon(imagenes[1]);
			}
		});
		
		botonAtras.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				ventana.origenADestino(ventana,"galeria", "inicio", 0);
			}
		});
	}		
}
