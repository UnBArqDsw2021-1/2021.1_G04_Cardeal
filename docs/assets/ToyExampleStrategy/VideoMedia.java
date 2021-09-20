
public class VideoMedia implements Media {

	private String name;
	private String imageType;
	private String idProperty;
	private String tempoDuracao;

	public VideoMedia( String name, String idProperty, String imageType, String tempoDuracao) {
		this.name = name;
		this.idProperty = idProperty;
		this.imageType = imageType;
		this.tempoDuracao = tempoDuracao;
	}
	
	@Override
	public void show( String url ) {
	
	System.out.println("Nome do Video: " + this.name);
	System.out.println("Tipo do Video: " + this.imageType);
	System.out.println("Tempo de duração: " + this.tempoDuracao);
	System.out.println("Proprietário: " + this.idProperty);
	System.out.println("Endereço do video: " + url + '\n');
		
	}
	
}
