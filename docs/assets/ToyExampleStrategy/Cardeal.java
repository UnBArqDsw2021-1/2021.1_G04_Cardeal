

public class Cardeal {

	public static void main(String[] args) {

		VisualizarPropriedade visualizarPropriedade = new VisualizarPropriedade( "Fernando" );;
		
		Media media;
		
		System.out.println("Visualizando imagens da propriedade");
		visualizarPropriedade.setUrl("https://i.pinimg.com/474x/a8/62/f4/a862f49e4bb707b0da4545740c0574fd.jpg");
		media = new ImageMedia( "Area Lazer", visualizarPropriedade.getIdPropriedade() , "jpg");
		visualizarPropriedade.show(media);
		
		visualizarPropriedade.setUrl("http://www.zoo.df.gov.br/wp-content/uploads/2020/02/Cardeal-do-nordeste-Marco-Marcos.jpg");
		media = new ImageMedia( "Jardim", visualizarPropriedade.getIdPropriedade() , "png");
		visualizarPropriedade.show(media);

		
		System.out.println("--------------------------------------------");
		System.out.println("Visualizando videos da propriedade");
		visualizarPropriedade.setUrl("https://youtu.be/H7J-nelarEM");
		media = new VideoMedia( "Sacada Suite", visualizarPropriedade.getIdPropriedade() , "mp4", "2:38");
		visualizarPropriedade.show(media);
		
	}

}
