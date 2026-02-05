/* Lógica executada ao clicar no botão "Enviar".
  Responsabilidades:
  1. Captura os inputs do usuário.
  2. Converte as imagens (Assinatura e Canvas) para JSON/Base64.
  3. Envia os dados para o SharePoint (Patch).
  4. Reseta o formulário e notifica sucesso.
*/
Patch(
    Vistorias_Veiculos,  
    Defaults(Vistorias_Veiculos),
    {
        //  DADOS DO VEÍCULO
        Title: txtPlaca.Text,  
        Marca: txtMarca.Text,
        Modelo: txtModelo.Text,
        Cor: txtCor.Text,
        Odomêtro: Value(txtOdometro.Text),

        // DADOS DO SERVIDOR
        NomeServidor: txtNomeServidor.Text,
        Matricula: Value(txtMatricula.Text),
        Cargo: txtCargo.Text,

        // DETALHES DO CARRO 
        TipoVeiculo: { Value: ddTipoVeiculo.Selected.Value },
        NivelCombustivel: { Value: radCombustivel.Selected.Value }, 

        // CHECKLIST
        TemExtintor: chkExtintor.Value,
        TemTriangulo: chkTriangulo.Value,
        TemMacaco: chkMacaco.Value,
        TemChavedeRoda: chkChaveDeRodas.Value,
        TemEstepe: chkEstepe.Value,
        TemCalotas: chkCalotas.Value,
        TemAntena: chkAntena.Value,
        TemTapetes: chkTapetes.Value,
        TemRadioCd: chkRadioCd.Value,
        TemManual: chkManual.Value,
        TemDocumento: chkDocumento.Value,
        TemCartaoAbastecimento: chkCartaoAbastecimento.Value,

        // ESTADO DE CONSERVAÇÃO
        EstadoPneus: { Value: radPneus.Selected.Value },
        EstadoPintura: { Value: radPintura.Selected.Value },
        EstadoFarois: { Value: radFarois.Selected.Value },
        EstadoLanternas: { Value: radLanternas.Selected.Value },
        EstadoEstofamento: { Value: radEstofamento.Selected.Value },

        // OBSERVAÇÕES
        Observacoes: txtObservacoes.Text,

        
        // IMAGENS
        AssinaturaCodigo: JSON(penAssinatura.Image, JSONFormat.IncludeBinaryData),
        ImagemCarroCodigo: JSON(penAvarias.Image, JSONFormat.IncludeBinaryData),
        StatusVistoria: { Value: "Concluido" }
    }
); 


Notify("Vistoria enviada com Sucesso!", NotificationType.Success); 

Reset(txtPlaca);
Reset(txtMarca);
Reset(txtModelo);
Reset(txtCor);
Reset(txtOdometro);
Reset(txtNomeServidor);
Reset(txtMatricula);
Reset(txtCargo);
Reset(txtObservacoes);
Reset(ddTipoVeiculo);
Reset(radCombustivel);
Reset(radPneus);
Reset(radPintura);
Reset(radFarois);
Reset(radLanternas);
Reset(radEstofamento);

Reset(chkExtintor);
Reset(chkTriangulo);
Reset(chkMacaco);
Reset(chkChaveDeRodas);
Reset(chkEstepe);
Reset(chkCalotas);
Reset(chkAntena);
Reset(chkTapetes);
Reset(chkRadioCd);
Reset(chkManual);
Reset(chkDocumento);
Reset(chkCartaoAbastecimento);



Reset(penAssinatura);
Reset(penAvarias);   

Navigate(Screen6, ScreenTransition.Fade) 

