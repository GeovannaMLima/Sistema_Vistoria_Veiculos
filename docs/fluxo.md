#  Fluxo de Automação 

O processamento da vistoria é realizado por um fluxo assíncrono no **Power Automate**.

## Visão Geral 

1.  **Trigger :** Ocorre quando um item é criado na lista do SharePoint.
2.  **Validação:** Verifica se o status do item é `Concluído`.
3.  **Tratamento de Dados :**
    * Recebe as strings Base64 das imagens (Assinatura e Canvas).
    * Limpa os cabeçalhos desnecessários do JSON (`data:image/png;base64,`).
    * Converte para conteúdo binário de arquivo.
4.  **Geração de Documento (HTML Rendering):**
    * Injeta as variáveis dinâmicas (Dados do Motorista, Checklists) em um template HTML/CSS.
    * O CSS foi ajustado  para garantir que as marcações de avaria (X, Riscos) ficassem posicionadas corretamente sobre a planta baixa do carro na conversão para PDF.
5.  **Conversão e Armazenamento:**
    * Utiliza a engine de conversão do OneDrive/SharePoint para transformar `.html` em `.pdf`.
    * Salva o arquivo final na pasta de `Vistorias`.