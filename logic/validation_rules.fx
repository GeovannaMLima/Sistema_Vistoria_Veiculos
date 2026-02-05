/*Validação de Formulário:
  O botão só fica habilitado (Edit) se todos os campos obrigatórios estiverem preenchidos.
  Caso contrário, permanece desabilitado (Disabled).
*/
If(
  
    Len(Trim(txtPlaca.Text)) =0 ||
    Len(Trim(txtOdometro.Text)) =0 ||
    Len(Trim(txtNomeServidor.Text)) =0 ||
    Len(Trim(txtMatricula.Text)) =0 ||
    Len(Trim(txtMarca.Text)) =0||
    Len(Trim(txtModelo.Text)) =0||
    Len(Trim(txtCargo.Text)) =0||

    IsBlank(ddTipoVeiculo.Selected.Value) ||
    IsBlank(radCombustivel.Selected.Value),
    
    DisplayMode.Disabled,
    DisplayMode.Edit
)