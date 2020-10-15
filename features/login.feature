#language: pt

Funcionalidade: Login

    Esquema do Cenario: Tentando logar

        Dado que acesso a pagina Login
        Quando eu submeto as minhas credencias "<email>" e "<senha>"
        Então devo ver a seguinte mensagem de alerta:
        """
        Atenção: Seus dados de acesso não estão corretos. Se você tem certeza que o e-mail está correto, solicite uma nova senha.
        """

        Exemplos:
        | email              | senha    |
        | joao@yahoo.com     | abc123   |
        |                    | abc123   |
        | joai@yahoo.com     |          |
        | fulano%hotmail.com | asd123   |