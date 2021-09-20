

public class VisualizarPropriedade {

	private String idPropriedade;
	private String url;
	Media media; 
	
	public VisualizarPropriedade (String idPropriedade) {
		this.idPropriedade = idPropriedade;

	}
	
	
	public String getIdPropriedade() {
		return idPropriedade;
	}



	public void setIdPropriedade(String idPropriedade) {
		this.idPropriedade = idPropriedade;
	}



	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public void show(Media media) {
		this.media = media;
		this.media.show(url);
	}
	
}
