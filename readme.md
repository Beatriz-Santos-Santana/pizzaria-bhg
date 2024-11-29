Funcionalidades PI 17/09

Tela Inicial:

Home – tela que será utilizada tanto para o funcionário, quanto para o cliente, nela teremos:

- Menu de navegação (Cabeçalho) contendo home, cardápio, fazer login e pedir online.

- Nossa logo, seguido de uma frase de efeito.

- Imagens dos produtos mais vendidos e nossas promoções.

- Uma pequena apresentação da trajetória da pizzaria.

- Rodapé com localização (retirada de pedidos), contatos (e-mail, telefone fixo, whatsapp), horário de funcionamento, redes sociais (facebook, instagram).

TELA DE LOGIN - Funcionários

- Tela de login de uso geral, com e-mail e senha únicos

- Tela de controle de pedidos (realizado, enviado e finalizados)

- Tela de edição de itens (alteração de valores, nome, excluir e adicionar)

Usuário:

- Aba de realizar pedidos (Button de pedidos)

- Adicionar itens e remover, cálculo total do pedido (frete adicionar cep com valores definidos por Random min.10 máx.30, tempo máximo de entrega 90 minutos)

- Finalizando pedido poderá aparecer tela de login ou cadastro (caso já esteja logado não será necessário o login novamente ou cadastro de novos clientes).

- Login confirmação de e-mail, senha e informações pessoais.

- Cadastro  (1º pedido): preenchimento dos dados pessoais exemplo: e-mail, senha, telefone, endereço.

- Selecionar formas de pagamento irá constar apenas pagamento na entrega (maquininha cartões débito – crédito e pix, dinheiro).

- Atualização de pedidos (será feita atualização pelos funcionários)





##Protótipo Telas PI


# Tela 1

![tela de inicial](/imagens/Tela_Inicial.png)


# Tela 2

![tela de login](/imagens/Tela_de_Login.png)


# Tela 3

![controle de pedidos](/imagens/Controle_de_Pedidos.png)


# Tela 4

![cardapio](/imagens/Cardapio.png)


# Tela 5

![confirmacao pedidos](/imagens/Confirmacao_Pedido.png)

# Tela 6 

![forma de pagamento](/imagens/Forma_de_Pagamento.png)

# Tela 7

![confirmacao endereço](/imagens/Confirmacao_Endereco.png)

# Tela 8 

![tela de cadastro](/imagens/Tela_de_Cadastro.png)

# Tela 9

![meus pedidos](/imagens/Meus_Pedidos.png)

# Modelo entidade relacionamento

![MER](/imagens/MER.jpg)


##Especificação e Funcionamento Sistema PI 

Home - http://localhost:8080/home.jsp 

Nossa página inicial foi desenvolvida com base em referências de sites de pizzarias tradicionais. A interface oferece um menu de navegação horizontal, localizado na parte superior, que permite acesso rápido ao cardápio e à área de login para funcionários. 

O conteúdo principal da página destaca algumas promoções exclusivas, as pizzas favoritas da casa e uma breve história sobre a trajetória do nosso estabelecimento, reforçando nossa conexão com os clientes. 

Na parte inferior, o rodapé reúne informações essenciais, como nosso logo, endereço, telefone, horários de funcionamento e links para nossas redes sociais, garantindo fácil acesso a todos os canais de comunicação. 

 

Login - http://localhost:8080/login.jsp 

 

Visando prezar pelo controle correto das informações que são alteradas no nosso banco de dados e pela funcionalidade do nosso sistema, achamos que seria melhor apenas os funcionários fazerem login no nosso site e serem redirecionados para a tela de find-all-pizzas, onde eles conseguem alterar e deletar o pedido, fazer o update dos valores e quantidades, de cada pedido. 
 
Usamos todo o conteúdo que foi nos apresentado no Laboratório 7, para conseguirmos fazer essa tela. Nela, o funcionário irá inserir um e-mail geral, que seria: pizzariabhg@gmail.com e a senha: BHGpizzaria@@, se as credenciais estiverem corretas, o funcionário será redirecionado para a tela de "find-all-pizzas", nosso dashboard, por outro lado, se as credenciais estiverem incorretas, uma mensagem de erro é apresentada e o funcionário não consegue avançar. 
 
Na tela de login, também implementamos dois links, que permitem ao funcionário ir para a "Home" (tela inicial do nosso sistema) e "Cardápio", a fim de que eles consigam visualizar as informações no site como um todo, para fazerem as alterações necessárias, nos respectivos pedidos. 

 

Cardápio - http://localhost:8080/cardapio.jsp 
 

A tela de Cardápio, tem como objetivo principal mostrar aos usuários quais são os produtos que a pizzaria produz, para posteriormente, eles poderem fazer o pedido. 
 
Decidimos separar os produtos por tipo, as pizzas separamos por: salgadas, veganas e doces, além das opções de bebidas: sucos e refrigerantes, que a pizzaria fornece. 
 
Na header da tela, temos uma espécie de menu, onde os usuários podem voltar para a home, e no caso dos funcionários, fazer login. 
 
Logo abaixo, temos o título chamando a atenção do usuário para a escolha das pizzas, acompanhado por um campo de links, contendo a separação por tipo de pizzas: doces, salgadas e veganas, ao selecionar, o usuário é direcionado ao campo específico na tela. 
 
Adicionamos a mesma funcionalidade informada acima, para bebidas, onde o título está acompanhado por um campo composto por links: sucos e refrigerantes, que ao serem clicados, encaminham o usuário a parte específica da tela. 
 
No rodapé da tela, colocamos as informações de contato da pizzaria, horário de funcionamento e localização, a fim de informar os usuários, sobre o funcionamento do estabelecimento. 

 

Pedir - http://localhost:8080/pedir.jsp 

Essa tela foi projetada para que os usuários possam especificar o que desejam pedir, incluindo a descrição do pedido e a quantidade de itens. Optamos por esse formato para oferecer maior flexibilidade, permitindo, por exemplo, que o cliente peça uma pizza com metade calabresa e metade portuguesa. 
Além disso, incorporamos um menu interativo nessa tela, que inclui botões para navegar para as telas de Home, Cardápio e, no caso dos funcionários, realizar o login. 
Ao clicarem no botão Salvar, os usuários são automaticamente direcionados para a tela de Contatos. 


Controle de pedidos - http://localhost:8080/find-all-pizzas 

Nessa tela possuímos o controle de todos os pedidos feitos pelos usuários, contendo os pedidos realizados onde todos os pedidos feitos pelos clientes estão presentes com os seus respectivos pedido id e a quantidade. Quando um produto é finalizado e entregue o usuário pode apertar o botão escrito “finalizado” 

 

Contatos - http://localhost:8080/contato.jsp 

Pelo nosso sistema não possuir cadastro e login direcionado para cada usuário, fizemos essa tela de Contatos, onde os usuários preenchem as suas informações de contato: e-mail, nome e telefone, para os funcionários da pizzaria poderem entrar em contato com os clientes, caso seja necessário, e também para os mesmos receberem as novidades de sabores e descontos, que a pizzaria possa apresentar. 
 
A fim de auxiliar a entrega dos pedidos aos clientes, nessa tela, também implementamos labels onde os usuários precisam preencher: CEP, Rua, Bairro e Número. 
 
Vale ressaltar, que também fizemos uma implementação, onde os usuários só conseguem avançar para a próxima tela, se todas as informações presentes, estiverem preenchidas, em caso afirmativo, o usuário consegue avançar e será redirecionado para a tela de "Confirmação de Pedido". 

 

Nessa tela, também incrementamos dois links, que direcionam o usuário para a tela de “Home” e para a tela de “Cardápio”, a fim de auxiliar o usuário a navegar pelas telas do site. 

 

Confirmação Pedido - http://localhost:8080/confped.jsp 

Responsável por mostrar ao usuário um resumo do pedido realizado, incluindo o item comprado (como uma pizza ou bebida) e o total a ser pago, com as taxas adicionais, como a taxa de entrega. 

Funcionalidades da tela: 

Resumo do Pedido: 

Exibe os detalhes do pedido, incluindo nome do produto, quantidade e preço. Por exemplo, uma pizza e uma bebida, com o subtotal e a taxa de entrega, somando um total. 

Botões para Ações: 

Confirmar Pedido: Redireciona o usuário para a página de forma de pagamento, onde ele escolherá o método de pagamento. 

Modificar Pedido: Leva o usuário de volta à tela de cardápio, caso ele queira alterar algum item do pedido. 

Rodapé: 

Exibe um contato de ajuda e o e-mail de atendimento da pizzaria. 

 

 

Forma de Pagamento - http://localhost:8080/pagamento.jsp 

Permite que o usuário escolha a forma de pagamento desejada para finalizar o pedido. 

Funcionalidades da tela: 

Opções de Pagamento: 

O usuário pode escolher entre Pagamento na Entrega (cartão de crédito ou débito, ou dinheiro) ou PIX. 

 

Especificações adicionais: 

Troco: Se o pagamento for em dinheiro, o usuário deverá inserir o valor de troco desejado. 

QR Code do PIX: Se a opção de pagamento for via PIX, o sistema exibe um QR code para facilitar o pagamento via PIX. 

 

Botões para Ações: 

Confirmar Pagamento: Redireciona o usuário para a página inicial (home.jsp) após confirmar o pagamento. 

Cancelar: Leva o usuário de volta à página do cardápio (cardapio.jsp), caso ele deseje modificar o pedido ou cancelar a compra. 

 

Funcionalidades de Alteração Dinâmica no Formulário: 

Quando o usuário escolhe Pagamento em Dinheiro, o campo para troco é exibido. 

Quando o usuário escolhe PIX, o QR code do pagamento via PIX aparece. 

Quando o usuário escolhe Cartão, nenhum campo extra é necessário. 

Estilo e Design: 

Design Limpo e Organizado: 

As telas seguem uma paleta de cores com destaque para o vermelho (usado nas áreas de cabeçalho e rodapé) e o verde (usado nos botões de confirmação). 

Responsividade: 

O layout é flexível e se ajusta ao tamanho da tela, garantindo que as telas sejam amigáveis tanto em dispositivos móveis quanto em desktops. 
