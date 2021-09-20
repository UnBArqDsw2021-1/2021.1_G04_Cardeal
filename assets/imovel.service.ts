import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { Observable } from 'rxjs';
import { Imovel } from '../models/imovel.model';

@Injectable({
  providedIn: 'root'
})

export default class ImovelService{
  private listaCorretores: Imovel[];
  private url = "http://localhost:3000/imoveis"

  constructor(private httpClient: HttpClient){
    this.listaCorretores = []
  }

  cadastraImovel(imovel: Imovel) : Observable<Imovel>{
    return this.httpClient.post<Imovel>(this.url, imovel);
  }

  listarImovel() : Observable<Imovel[]>{
    const resposta = this.httpClient.get<Imovel[]>(this.url);
    return resposta;
  }
} 