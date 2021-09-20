

public class ImageMedia implements Media {
	
	private String name;
	private String imageType;
	private String idProperty;

	public ImageMedia( String name, String idProperty, String imageType ) {
		this.name = name;
		this.idProperty = idProperty;
		this.imageType = imageType;
	}
	
	@Override
	public void show( String url ) {
	
	System.out.println("Nome da Imagem: " + this.name);
	System.out.println("Tipo da Imagem: " + this.imageType);
	System.out.println("Proprietário: " + this.idProperty);
	System.out.println("Endereço da imagem: " + url + '\n');
		
	}
	
	

}
